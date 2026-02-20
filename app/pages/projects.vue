<script setup>
useSeoMeta({
  title: 'Projets – Maxime',
  description: 'Découvrez les projets réalisés par Maxime.'
})

const projects = [
  {
    title: 'Portfolio',
    description: 'Ce portfolio, construit avec Nuxt 4 et Nuxt UI, déployé avec Docker et Nginx.',
    tags: ['Nuxt', 'Vue', 'Docker', 'Nginx'],
    icon: 'i-lucide-globe'
  },
  {
    title: 'Projet 2',
    description: 'Description du projet à compléter.',
    tags: ['Tag 1', 'Tag 2'],
    icon: 'i-lucide-code-2'
  },
  {
    title: 'Projet 3',
    description: 'Description du projet à compléter.',
    tags: ['Tag 1', 'Tag 2'],
    icon: 'i-lucide-blocks'
  },
  {
    title: 'Projet 4',
    description: 'Description du projet à compléter.',
    tags: ['Tag 1', 'Tag 2'],
    icon: 'i-lucide-rocket'
  }
]
</script>

<template>
  <div>
    <UPageHero
      title="Projets"
      description="Une sélection de mes réalisations."
    />

    <UPageSection>
      <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6">
        <ProjectCard
          v-for="project in projects"
          :key="project.title"
          v-bind="project"
        />
      </div>
    </UPageSection>
  </div>
</template>
