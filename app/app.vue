<script setup>
const title = 'Maxime – Portfolio'
const description = 'Portfolio personnel de Maxime – Développeur web'

useSeoMeta({
  title,
  description,
  ogTitle: title,
  ogDescription: description
})

const navLinks = [
  { label: 'Accueil', to: '/' },
  { label: 'Projets', to: '/projects' },
  { label: 'À propos', to: '/about' },
  { label: 'CV', to: '/cv' }
]
</script>

<template>
  <UApp>
    <UHeader>
      <template #left>
        <NuxtLink to="/" class="text-lg font-bold">
          Maxime
        </NuxtLink>
      </template>

      <template #center>
        <UNavigationMenu :items="navLinks" />
      </template>

      <template #right>
        <UColorModeButton />
      </template>
    </UHeader>

    <UMain>
      <NuxtPage />
    </UMain>

    <USeparator />

    <UFooter>
      <template #left>
        <p class="text-sm text-muted">
          © {{ new Date().getFullYear() }} Maxime. Tous droits réservés.
        </p>
      </template>

      <template #right>
        <UButton
          to="https://github.com/"
          target="_blank"
          icon="i-simple-icons-github"
          aria-label="GitHub"
          color="neutral"
          variant="ghost"
        />
        <UButton
          to="https://linkedin.com/"
          target="_blank"
          icon="i-simple-icons-linkedin"
          aria-label="LinkedIn"
          color="neutral"
          variant="ghost"
        />
      </template>
    </UFooter>
  </UApp>
</template>
