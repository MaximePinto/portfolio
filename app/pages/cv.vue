<script setup>
useSeoMeta({
  title: 'CV – Maxime',
  description: 'Téléchargez le CV de Maxime.'
})
</script>

<template>
  <div>
    <UPageHero
      title="Mon CV"
      description="Téléchargez mon CV au format PDF pour en savoir plus sur mon parcours et mes compétences."
      :links="[
        {
          label: 'Télécharger le CV (PDF)',
          to: '/cv/maxime-cv.pdf',
          icon: 'i-lucide-download',
          size: 'xl',
          download: true
        }
      ]"
    />
  </div>
</template>
