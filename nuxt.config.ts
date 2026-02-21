// https://nuxt.com/docs/api/configuration/nuxt-config
export default defineNuxtConfig({
  modules: [
    '@nuxt/eslint',
    '@nuxt/ui'
  ],

  devtools: {
    enabled: true
  },

  css: ['~/assets/css/main.css'],

  routeRules: {
    '/': { prerender: true }
  },

  compatibilityDate: '2025-01-15',

  app: {
    head: {
      title: 'Maxime Pinto — Développeur Full Stack',
      meta: [
        { name: 'description', content: 'Développeur Full Stack PHP/Symfony & Vue.js — 7 ans d\'expérience en développement web, architecture logicielle et DevOps.' }
      ],
      link: [
        { rel: 'icon', href: '/favicon.ico' }
      ],
      htmlAttrs: {
        lang: 'fr'
      }
    }
  },

  vite: {
    server: {
      hmr: {
        protocol: 'ws',
        host: '0.0.0.0',
        port: 24678,
        clientPort: 24678
      },
      watch: {
        usePolling: true,
        interval: 1000
      }
    }
  },

  eslint: {
    config: {
      stylistic: {
        commaDangle: 'never',
        braceStyle: '1tbs'
      }
    }
  }
})
