<template>
  <div>
    <HeroSection />

    <UPageSection
      title="Projets récents"
      description="Quelques-uns de mes projets les plus récents."
    >
      <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6">
        <ProjectCard
          title="Portfolio"
          description="Ce portfolio, construit avec Nuxt 4 et Nuxt UI, déployé avec Docker et Nginx."
          :tags="['Nuxt', 'Vue', 'Docker', 'Nginx']"
          icon="i-lucide-globe"
        />
        <ProjectCard
          title="Projet 2"
          description="Description du projet à compléter."
          :tags="['Tag 1', 'Tag 2']"
          icon="i-lucide-code-2"
        />
        <ProjectCard
          title="Projet 3"
          description="Description du projet à compléter."
          :tags="['Tag 1', 'Tag 2']"
          icon="i-lucide-blocks"
        />
      </div>
    </UPageSection>
  </div>
</template>
