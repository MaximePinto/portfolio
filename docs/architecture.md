# Architecture du projet

## Arborescence

```
portfolio/
├── app/
│   ├── app.vue                  # Shell : UHeader + UMain + UFooter
│   ├── app.config.ts            # Config Nuxt UI (couleurs)
│   ├── assets/css/main.css      # CSS global (Tailwind)
│   ├── components/
│   │   ├── AppLogo.vue          # Logo (genere par le template)
│   │   ├── HeroSection.vue      # Section hero reutilisable
│   │   └── ProjectCard.vue      # Carte projet avec tags
│   └── pages/
│       ├── index.vue            # Accueil : hero + projets recents
│       ├── about.vue            # Presentation + competences
│       ├── projects.vue         # Grille de tous les projets
│       └── cv.vue               # Telechargement du CV PDF
├── public/
│   ├── cv/maxime-cv.pdf         # CV (placeholder a remplacer)
│   └── favicon.ico
├── docker/
│   ├── Dockerfile               # Multi-stage : dev + prod
│   ├── docker-compose.yml       # Production (Nginx, port 8080)
│   ├── docker-compose.dev.yml   # Developpement (Nuxt, port 3000)
│   └── nginx/
│       └── nginx.conf           # Config Nginx production
├── justfile                     # Task runner (toutes les commandes)
├── nuxt.config.ts               # Config Nuxt + Vite HMR Docker
├── package.json
├── pnpm-lock.yaml
├── .dockerignore
├── .env.example
├── .gitignore
└── docs/                        # Ce dossier
```

## Docker : multi-stage build

Le `Dockerfile` utilise 5 stages :

```
base (node:22-alpine + corepack)
  └── deps (pnpm install --frozen-lockfile)
        ├── dev   → target pour le developpement
        └── build (pnpm generate)
              └── prod (nginx:alpine) → target pour la production
```

- **Dev** : le code source est monte via bind mount (`.:/app`), les
  `node_modules` sont dans un volume Docker nomme (evite les conflits Windows)
- **Prod** : seul `.output/public/` est copie dans l'image Nginx finale.
  Aucun Node.js en production.

## Docker Compose

Les deux fichiers compose utilisent `context: ..` pour builder depuis la
racine du projet, avec `dockerfile: docker/Dockerfile`.

### Production (`docker/docker-compose.yml`)
- Service `nginx` : build target `prod`, port **8080:80**
- Volume bind mount pour `nginx.conf` (modifiable sans rebuild)

### Developpement (`docker/docker-compose.dev.yml`)
- Service `nuxt` : build target `dev`, ports **3000** + **24678** (HMR)
- Bind mount `.:/app` pour le hot reload
- Volume nomme `node_modules` (isole du systeme hote Windows)
- `CHOKIDAR_USEPOLLING=true` pour le file watching Windows

## Nuxt UI

Le template Nuxt UI fournit directement les composants de layout dans
`app.vue` (pas de `layouts/default.vue`) :

- `<UApp>` : wrapper racine (theme, dark mode)
- `<UHeader>` : barre de navigation
- `<UMain>` : contenu principal (`<NuxtPage />`)
- `<UFooter>` : pied de page
- `<UColorModeButton>` : toggle dark/light mode

Les pages utilisent les composants Nuxt UI (`UPageHero`, `UPageSection`,
`UCard`, `UBadge`, `UButton`, `UNavigationMenu`...).
