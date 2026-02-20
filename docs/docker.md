# Docker

## Prerequis

- Docker >= 29.x
- Docker Compose >= 5.x
- just (`winget install Casey.Just`)
- **Pas besoin de Node.js en local**

## Commandes (via justfile)

Toutes les commandes Docker passent par le `justfile` :

```bash
just dev       # Demarre le serveur de dev (http://localhost:3000)
just prod      # Build SSG + sert via Nginx (http://localhost:8080)
just build     # Genere le site statique sans le servir
just install   # Installe les dependances (apres modification package.json)
just down      # Arrete tous les conteneurs
just clean     # Arrete + supprime les volumes (reset complet)
just logs      # Affiche les logs du conteneur dev
just shell     # Ouvre un shell dans le conteneur dev
just init      # Scaffold un nouveau projet Nuxt (usage unique)
```

## Dockerfile (multi-stage)

Le fichier `docker/Dockerfile` contient 5 stages :

| Stage | Base | Role |
|---|---|---|
| `base` | node:22-alpine | Active corepack, definit `/app` |
| `deps` | base | `pnpm install --frozen-lockfile` |
| `dev` | base | Copie node_modules, expose 3000+24678, lance `pnpm dev` |
| `build` | base | Copie source + node_modules, lance `pnpm generate` |
| `prod` | nginx:alpine | Copie `.output/public/` + `nginx.conf` |

## Developpement

```bash
just dev
```

- Accessible sur `http://localhost:3000`
- HMR (Hot Module Replacement) via WebSocket sur le port 24678
- Le code source est monte en bind mount : les modifications de fichiers
  `.vue` sont refletes instantanement
- Les `node_modules` sont dans un volume Docker nomme (pas sur le disque hote)
- `CHOKIDAR_USEPOLLING=true` est active pour la compatibilite Windows

## Production

```bash
just prod
```

- Accessible sur `http://localhost:8080`
- `nuxt generate` produit du HTML/CSS/JS statique dans `.output/public/`
- Nginx sert ces fichiers directement (pas de Node.js en runtime)
- Image finale : ~40MB (nginx:alpine)

## Nginx

La config (`docker/nginx/nginx.conf`) inclut :

- **Gzip** : compression des fichiers texte/JS/CSS/JSON/SVG
- **Cache immutable** : les assets `/_nuxt/` ont un hash dans le nom de
  fichier, donc `Cache-Control: public, immutable` avec `expires max`
- **Security headers** : `X-Frame-Options`, `X-Content-Type-Options`,
  `Referrer-Policy`
- **SPA fallback** : `try_files $uri $uri/ /index.html` pour le routing
  cote client
- **HTTPS** : commente, pret pour activation future

## Ports

| Service | Port hote | Port conteneur | Usage |
|---|---|---|---|
| Nuxt dev | 3000 | 3000 | Serveur de developpement |
| Vite HMR | 24678 | 24678 | Hot Module Replacement |
| Nginx | 8080 | 80 | Production (statique) |

> Le port 80 n'est pas utilise car il est deja occupe (Apache).

## Volumes

| Volume | Type | Usage |
|---|---|---|
| `.:/app` | bind mount (dev) | Code source synchronise |
| `node_modules` | nomme (dev) | Isole du systeme hote Windows |
| `nginx.conf` | bind mount (prod) | Config Nginx modifiable sans rebuild |
