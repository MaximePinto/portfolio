# Portfolio – Justfile
# Usage: just <recipe>

# Scaffold Nuxt project with Nuxt UI template (standalone, no compose needed)
init:
    docker run --rm -v "$(pwd):/app" -w /app node:22-alpine sh -c "corepack enable && pnpm create nuxt@latest . -t ui --packageManager pnpm --gitInit false --force"

# Install dependencies (after pulling or editing package.json)
install:
    docker compose -f docker/docker-compose.dev.yml run --rm nuxt pnpm install

# Start dev server with HMR
dev:
    docker compose -f docker/docker-compose.dev.yml up --build

# Build & serve production (Nginx)
prod:
    docker compose -f docker/docker-compose.yml up --build

# Generate static site (SSG) without serving
build:
    docker compose -f docker/docker-compose.dev.yml run --rm nuxt pnpm generate

# Stop all containers
down:
    docker compose -f docker/docker-compose.dev.yml down
    docker compose -f docker/docker-compose.yml down

# Stop & remove volumes (clean slate)
clean:
    docker compose -f docker/docker-compose.dev.yml down -v
    docker compose -f docker/docker-compose.yml down -v

# View logs (dev)
logs:
    docker compose -f docker/docker-compose.dev.yml logs -f

# Open a shell inside the dev container
shell:
    docker compose -f docker/docker-compose.dev.yml run --rm nuxt sh
