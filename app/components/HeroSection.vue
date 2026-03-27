<template>
  <section class="relative w-full py-20 md:py-32 bg-slate-50 border-b border-slate-200">
    <div class="max-w-4xl mx-auto px-4 md:px-8 flex flex-col md:flex-row items-center gap-12">
      <div class="flex-1 space-y-6 text-center md:text-left">
        <h1 class="text-4xl md:text-6xl font-serif font-bold text-slate-900 tracking-tight leading-tight">
          Bonjour, je suis <span class="block text-slate-600">Maxime Pinto</span>
        </h1>
        <p class="text-lg md:text-xl text-slate-600 font-light max-w-lg mx-auto md:mx-0 leading-relaxed">
          Développeur web avec plus de 6 ans d'expérience, spécialisé en backend PHP/Symfony et Vue.js.
        </p>
        <div class="flex flex-col sm:flex-row gap-4 justify-center md:justify-start pt-4">
          <MpButton
            to="/cv/maxime-cv.pdf"
            external
            download
            icon="i-lucide-download"
            label="Télécharger mon CV"
          />
          <MpButton
            to="#contact"
            label="Me contacter"
            variant="outline"
          />
        </div>
      </div>

      <div class="relative w-64 h-64 md:w-80 md:h-80 shrink-0">
        <div class="absolute inset-0 bg-slate-200 rounded-full blur-2xl opacity-20 translate-y-4" />
        <img
          src="/me.jpg"
          alt="Maxime Pinto"
          class="w-full h-full object-cover object-[center_22%] rounded-2xl shadow-lg border border-slate-100 grayscale hover:grayscale-0 transition-all duration-500"
        >
      </div>
    </div>
  </section>
</template>
