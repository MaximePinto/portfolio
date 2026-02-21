# Portfolio – Maxime Pinto

Portfolio personnel statique construit avec Nuxt 4 et Nuxt UI, deploye avec Docker et Nginx.

## Stack

- **Nuxt 4** (SSG)
- **Nuxt UI** + Tailwind CSS 4
- **Docker** + Docker Compose
- **Nginx** (production)
- **pnpm** (via corepack)

## Prerequis

- Docker >= 29.x
- Docker Compose >= 5.x
- [just](https://github.com/casey/just) (`winget install Casey.Just`)

Pas besoin de Node.js en local.

## Commandes

```bash
just dev       # Dev → http://localhost:3000
just prod      # Prod → http://localhost:8080
just build     # Generer le site statique (SSG)
just install   # Installer les dependances
just down      # Arreter les conteneurs
just clean     # Arreter + supprimer les volumes
just logs      # Voir les logs (dev)
just shell     # Shell dans le conteneur dev
```

## Documentation

- [Stack technique](docs/stack.md)
- [Architecture](docs/architecture.md)
- [Docker](docs/docker.md)
