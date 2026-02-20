<template>
  <UPageHero
    title="Bonjour, je suis Maxime"
    description="Développeur web passionné. Je conçois des applications modernes et performantes."
    :links="[
      {
        label: 'Voir mes projets',
        to: '/projects',
        trailingIcon: 'i-lucide-arrow-right',
        size: 'xl'
      },
      {
        label: 'Télécharger mon CV',
        to: '/cv',
        icon: 'i-lucide-download',
        size: 'xl',
        color: 'neutral',
        variant: 'subtle'
      }
    ]"
  />
</template>
