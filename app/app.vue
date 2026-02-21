<script setup>
const title = 'Maxime Pinto — Développeur Full Stack'
const description = 'Développeur Full Stack PHP/Symfony & Vue.js — 7 ans d\'expérience en développement web, architecture logicielle et DevOps.'

useSeoMeta({
  title,
  description,
  ogTitle: title,
  ogDescription: description
})

const navLinks = [
  { label: 'À propos', href: '#about' },
  { label: 'Expérience', href: '#experience' },
  { label: 'Contact', href: '#contact' }
]

const mobileMenuOpen = ref(false)

const scrolled = ref(false)

onMounted(() => {
  const onScroll = () => {
    scrolled.value = window.scrollY > 20
  }
  window.addEventListener('scroll', onScroll, { passive: true })
  onUnmounted(() => window.removeEventListener('scroll', onScroll))
})

function closeMobileMenu() {
  mobileMenuOpen.value = false
}
</script>

<template>
  <UApp>
    <!-- Header -->
    <header
      class="fixed top-0 inset-x-0 z-50 transition-all duration-300"
      :class="scrolled
        ? 'bg-white/80 dark:bg-slate-900/80 backdrop-blur-md border-b border-slate-200 dark:border-slate-800'
        : 'bg-transparent'"
    >
      <nav class="mx-auto max-w-5xl px-6 h-16 flex items-center justify-between">
        <!-- Logo -->
        <a href="#" class="text-lg font-bold text-slate-900 dark:text-white">
          MP
        </a>

        <!-- Desktop nav -->
        <div class="hidden sm:flex items-center gap-8">
          <a
            v-for="link in navLinks"
            :key="link.href"
            :href="link.href"
            class="text-sm text-slate-600 dark:text-slate-300 hover:text-slate-900 dark:hover:text-white transition-colors"
          >
            {{ link.label }}
          </a>
          <UButton
            to="/cv/maxime-cv.pdf"
            download
            label="CV"
            icon="i-lucide-download"
            size="sm"
            variant="outline"
            color="neutral"
          />
          <UColorModeButton />
        </div>

        <!-- Mobile burger -->
        <div class="flex sm:hidden items-center gap-2">
          <UColorModeButton />
          <UButton
            :icon="mobileMenuOpen ? 'i-lucide-x' : 'i-lucide-menu'"
            color="neutral"
            variant="ghost"
            aria-label="Menu"
            @click="mobileMenuOpen = !mobileMenuOpen"
          />
        </div>
      </nav>

      <!-- Mobile overlay -->
      <Transition
        enter-active-class="transition duration-200 ease-out"
        enter-from-class="opacity-0 -translate-y-2"
        enter-to-class="opacity-100 translate-y-0"
        leave-active-class="transition duration-150 ease-in"
        leave-from-class="opacity-100 translate-y-0"
        leave-to-class="opacity-0 -translate-y-2"
      >
        <div
          v-if="mobileMenuOpen"
          class="sm:hidden bg-white dark:bg-slate-900 border-b border-slate-200 dark:border-slate-800 px-6 py-4"
        >
          <div class="flex flex-col gap-4">
            <a
              v-for="link in navLinks"
              :key="link.href"
              :href="link.href"
              class="text-base text-slate-600 dark:text-slate-300 hover:text-slate-900 dark:hover:text-white transition-colors"
              @click="closeMobileMenu"
            >
              {{ link.label }}
            </a>
            <UButton
              to="/cv/maxime-cv.pdf"
              download
              label="Télécharger CV"
              icon="i-lucide-download"
              size="sm"
              variant="outline"
              color="neutral"
              block
            />
          </div>
        </div>
      </Transition>
    </header>

    <!-- Spacer for fixed header -->
    <div class="h-16" />

    <main>
      <NuxtPage />
    </main>

    <!-- Footer -->
    <footer class="bg-slate-900 dark:bg-slate-950 text-slate-400 py-10">
      <div class="mx-auto max-w-5xl px-6 flex flex-col sm:flex-row items-center justify-between gap-4">
        <p class="text-sm">
          &copy; {{ new Date().getFullYear() }} Maxime Pinto. Tous droits réservés.
        </p>
        <div class="flex items-center gap-3">
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
        </div>
      </div>
    </footer>
  </UApp>
</template>
