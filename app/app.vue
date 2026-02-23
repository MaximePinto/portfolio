<script setup>
const title = 'Maxime Pinto — Développeur Full Stack'
const description = 'Développeur Full Stack PHP/Symfony & Vue.js — 7 ans d\'expérience en développement web, architecture logicielle et DevOps.'

useSeoMeta({
  title,
  description,
  ogTitle: title,
  ogDescription: description
})

</script>

<template>
  <UApp>
    <AppHeader />

    <main>
      <NuxtPage />
    </main>

    <UFooter>
      <template #left>
        <p class="text-sm text-muted">
          &copy; {{ new Date().getFullYear() }} Maxime Pinto. Tous droits réservés.
        </p>
      </template>

      <template #right>
        <UButton
          to="https://linkedin.com/in/maxime-pinto"
          target="_blank"
          icon="i-simple-icons-linkedin"
          aria-label="LinkedIn"
          color="neutral"
          variant="ghost"
        />
        <UButton
          to="mailto:maxime.pinto.dev@gmail.com"
          icon="i-lucide-mail"
          aria-label="Email"
          color="neutral"
          variant="ghost"
        />
      </template>
    </UFooter>
  </UApp>
</template>
