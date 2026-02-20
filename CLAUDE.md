# CLAUDE.md

## Projet

Portfolio personnel statique (SSG) de Maxime.

## Stack

- Nuxt 4 + Nuxt UI (gratuit) + Tailwind CSS 4
- pnpm via corepack (Node 22)
- Docker + Docker Compose (pas de Node.js local)
- Nginx (production, fichiers statiques)
- just (task runner)

## Commandes

```bash
just dev       # Dev → http://localhost:3000
just prod      # Prod → http://localhost:8080
just build     # Generate SSG
just install   # Install deps
just down      # Stop containers
just clean     # Stop + remove volumes
just shell     # Shell dans le conteneur dev
```

## Structure

```
app/              # Code source Nuxt (pages, components)
docker/           # Dockerfile, docker-compose, nginx config
docs/             # Documentation technique
public/           # Fichiers statiques (favicon, CV PDF)
justfile          # Toutes les commandes Docker
nuxt.config.ts    # Config Nuxt + Vite HMR Docker
```

## Conventions

- Pas de Node.js local : tout via Docker
- Pas de backend/Nitro (pas de dossier `server/`)
- Nuxt UI : composants de layout dans `app.vue` (pas de `layouts/`)
- Port 8080 en prod (80 occupe par Apache)
- Fichiers Docker dans `docker/`, compose context pointe vers `..`

## Documentation

- `docs/stack.md` : technologies et versions
- `docs/architecture.md` : arborescence et architecture Docker
- `docs/docker.md` : commandes, ports, volumes, Nginx
