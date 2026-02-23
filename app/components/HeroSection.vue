<template>
  <section class="relative overflow-hidden bg-gradient-to-b from-slate-50 to-white dark:from-slate-950 dark:to-slate-900">
    <div class="max-w-section mx-auto px-6 py-28 sm:py-36 text-center">
      <p class="text-lg text-slate-500 dark:text-slate-400 mb-4">
        Bonjour, je suis
      </p>
      <h1 class="text-5xl sm:text-6xl font-bold tracking-tight text-slate-900 dark:text-white">
        Maxime Pinto
      </h1>
      <p class="mt-4 text-xl sm:text-2xl font-medium text-slate-600 dark:text-slate-300">
        Développeur Full Stack PHP/Symfony &amp; Vue.js
      </p>
      <p class="mt-6 max-w-2xl mx-auto text-base text-slate-500 dark:text-slate-400 leading-relaxed">
        Développeur web avec plus de 6 ans d'expérience, spécialisé en backend PHP/Symfony et
        frontend Vue.js. Expérience confirmée sur des architectures modernes (CQRS, Event Sourcing,
        Microservices). Reconversion réussie après un parcours en conduite de travaux, apportant
        rigueur méthodologique et esprit d'équipe.
      </p>
      <div class="mt-10 flex flex-wrap justify-center gap-4">
        <UButton
          to="/cv/maxime-cv.pdf"
          download
          icon="i-lucide-download"
          label="Télécharger mon CV"
          size="xl"
        />
        <UButton
          to="#contact"
          label="Me contacter"
          icon="i-lucide-mail"
          size="xl"
          color="neutral"
          variant="subtle"
        />
      </div>
    </div>
  </section>
</template>
