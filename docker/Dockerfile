# ── Base ──────────────────────────────────────────────
FROM node:22-alpine AS base
RUN corepack enable
WORKDIR /app

# ── Dependencies ──────────────────────────────────────
FROM base AS deps
COPY package.json pnpm-lock.yaml ./
RUN pnpm install --frozen-lockfile

# ── Dev target ────────────────────────────────────────
FROM base AS dev
COPY --from=deps /app/node_modules ./node_modules
COPY package.json pnpm-lock.yaml ./
EXPOSE 3000 24678
CMD ["pnpm", "dev", "--host", "0.0.0.0"]

# ── Build (SSG) ──────────────────────────────────────
FROM base AS build
COPY --from=deps /app/node_modules ./node_modules
COPY . .
RUN pnpm generate

# ── Prod target (Nginx) ──────────────────────────────
FROM nginx:alpine AS prod
COPY --from=build /app/.output/public /usr/share/nginx/html
COPY docker/nginx/nginx.conf /etc/nginx/nginx.conf
EXPOSE 80
