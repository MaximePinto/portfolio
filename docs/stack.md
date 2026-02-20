# Stack technique

## Frontend

| Technologie | Version | Role |
|---|---|---|
| **Nuxt** | 4.3.1 | Framework Vue.js avec SSR/SSG |
| **Nuxt UI** | 4.4.0 | Bibliotheque de composants (gratuit) |
| **Vue.js** | 3.5 | Framework reactif (inclus via Nuxt) |
| **Tailwind CSS** | 4.1 | Utility-first CSS (inclus via Nuxt UI) |
| **TypeScript** | 5.9 | Typage statique |
| **ESLint** | 10.0 | Linting |

## Icones

- `@iconify-json/lucide` : icones Lucide (interface)
- `@iconify-json/simple-icons` : logos de marques (GitHub, LinkedIn...)

## Infrastructure

| Outil | Version | Role |
|---|---|---|
| **Docker** | 29.2.0 | Conteneurisation |
| **Docker Compose** | 5.0.2 | Orchestration des services |
| **Nginx** | alpine | Serveur web statique (production) |
| **Node.js** | 22-alpine | Runtime (uniquement dans Docker) |
| **pnpm** | 10.29 | Gestionnaire de paquets (via corepack) |
| **just** | 1.46 | Task runner (wraps Docker commands) |

## Mode de deploiement

**SSG (Static Site Generation)** via `nuxt generate` :
- Nuxt pre-rend toutes les pages en HTML/CSS/JS statique
- Le resultat est dans `.output/public/`
- Nginx sert directement ces fichiers (pas de Node.js en production)
- L'image de production est `nginx:alpine` (~40MB)

## Contraintes

- **Pas de Node.js installe localement** : tout passe par Docker
- **Pas de backend/Nitro** pour le moment (pas de dossier `server/`)
- Architecture Docker prete pour evolution future (BDD, API)
