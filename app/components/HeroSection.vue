<template>
  <section class="max-w-section mx-auto px-6 py-16 sm:py-24">
    <UPageCard
      spotlight
      spotlight-color="primary"
      variant="outline"
    >
      <template #body>
        <div class="grid grid-cols-3 gap-1">
            <div class="col-span-2">
              <p class="text-5xl sm:text-6xl font-bold text-highlighted">
                Bonjour, je suis
              </p>
            </div>
            <div class="col-span-2 col-start-1 row-start-2">
              <h1 class="font-serif text-3xl sm:text-4xl font-bold leading-tight text-muted mt-1">
                Maxime
              </h1>
            </div>
            <div class="col-span-2 col-start-1 row-start-3">
              <h1 class="font-serif text-3xl sm:text-4xl font-bold text-muted leading-tight">
                Pinto
              </h1>
            </div>
            <div class="col-span-2 col-start-1 row-start-4">
                <p class="mt-6 pr-18 max-w-2xl text-lg leading-relaxed text-muted">
                  Développeur web avec plus de 6 ans d'expérience, spécialisé en backend PHP/Symfony et Vue.js.
                </p>
            </div>
            <div class="col-span-2 col-start-1 row-start-5">
                <div class="mt-10 flex flex-wrap gap-4">
                  <UButton
                    to="/cv/maxime-cv.pdf"
                    external
                    download
                    icon="i-lucide-download"
                    label="Télécharger mon CV"
                    size="xl"
                    color="neutral"
                  />
                  <UButton
                    to="#contact"
                    label="Me contacter"
                    size="xl"
                    color="neutral"
                    variant="outline"
                  />
                </div>
            </div>
            <div class="row-span-3 col-start-3 row-start-2 flex items-center justify-center">
              <img
                src="/me.jpg"
                alt="Maxime Pinto"
                class="max-h-64 object-top rounded-xl"
              >
            </div>
        </div>
      </template>
    </UPageCard>
  </section>
</template>
