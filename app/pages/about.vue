<script setup>
useSeoMeta({
  title: 'À propos – Maxime',
  description: 'En savoir plus sur Maxime, développeur web.'
})

const skills = [
  { category: 'Frontend', items: ['Vue.js', 'Nuxt', 'TypeScript', 'Tailwind CSS'] },
  { category: 'Backend', items: ['Node.js', 'Python', 'PostgreSQL'] },
  { category: 'DevOps', items: ['Docker', 'Nginx', 'CI/CD', 'Linux'] }
]
</script>

<template>
  <div>
    <UPageHero
      title="À propos"
      description="Développeur web passionné par les technologies modernes et les bonnes pratiques."
    />

    <UPageSection title="Mon parcours">
      <p class="text-lg text-muted max-w-2xl">
        Passionné par le développement web, je conçois des applications
        performantes et accessibles. J'aime travailler avec des technologies
        modernes et partager mes connaissances.
      </p>
    </UPageSection>

    <UPageSection title="Compétences">
      <div class="grid grid-cols-1 md:grid-cols-3 gap-6">
        <UCard v-for="skill in skills" :key="skill.category">
          <template #header>
            <h3 class="font-semibold">
              {{ skill.category }}
            </h3>
          </template>
          <div class="flex flex-wrap gap-2">
            <UBadge v-for="item in skill.items" :key="item" :label="item" variant="subtle" />
          </div>
        </UCard>
      </div>
    </UPageSection>
  </div>
</template>
