# Portfolio – Justfile
# Usage: just <recipe>

# Show this help
[private]
default: help

# List all commands with descriptions and examples
help:
    @just --list
    @echo ""
    @echo "Examples:"
    @echo "  just add page about          # Create app/pages/about.vue"
    @echo "  just add component HeroCard  # Create app/components/HeroCard.vue"
    @echo "  just add composable useTheme # Create app/composables/useTheme.ts"

# Scaffold Nuxt project with Nuxt UI template (standalone, no compose needed)
init:
    docker run --rm -v "$(pwd):/app" -w /app node:22-alpine sh -c "corepack enable && pnpm create nuxt@latest . -t ui --packageManager pnpm --gitInit false --force"

# Install dependencies (after pulling or editing package.json)
install:
    docker compose -f docker/docker-compose.dev.yml exec nuxt pnpm install

# Start dev server with HMR
dev:
    docker compose -f docker/docker-compose.dev.yml up --build

# Build & serve production (Nginx)
prod:
    docker compose -f docker/docker-compose.yml up --build

# Generate static site (SSG) without serving
build:
    docker compose -f docker/docker-compose.dev.yml exec nuxt pnpm generate

# Stop all containers and clear Nuxt/Vite cache
down:
    docker compose -f docker/docker-compose.dev.yml down
    docker compose -f docker/docker-compose.yml down
    rm -rf .nuxt

# Stop & remove volumes (clean slate)
clean:
    docker compose -f docker/docker-compose.dev.yml down -v
    docker compose -f docker/docker-compose.yml down -v

# View logs (dev)
logs:
    docker compose -f docker/docker-compose.dev.yml logs -f

# Open a shell inside the dev container
shell:
    docker compose -f docker/docker-compose.dev.yml exec nuxt sh

# Lint the codebase
lint:
    docker compose -f docker/docker-compose.dev.yml exec nuxt pnpm lint

# Lint & auto-fix the codebase
lint-fix:
    docker compose -f docker/docker-compose.dev.yml exec nuxt pnpm lint --fix

# Run TypeScript type checking
typecheck:
    docker compose -f docker/docker-compose.dev.yml exec nuxt pnpm nuxi typecheck

# Analyze the production bundle
analyze:
    docker compose -f docker/docker-compose.dev.yml exec nuxt pnpm nuxi analyze

# Clean .nuxt cache and build artifacts
cleanup:
    docker compose -f docker/docker-compose.dev.yml exec nuxt pnpm nuxi cleanup

# Upgrade Nuxt and dependencies
upgrade:
    docker compose -f docker/docker-compose.dev.yml exec nuxt pnpm nuxi upgrade

# Add a Nuxt resource (e.g. just add page about)
add type name:
    docker compose -f docker/docker-compose.dev.yml exec nuxt pnpm nuxi add {{type}} {{name}}

# Show Nuxt project info
info:
    docker compose -f docker/docker-compose.dev.yml exec nuxt pnpm nuxi info
