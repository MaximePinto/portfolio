<script setup>
const navItems = [
  { label: 'À propos', to: '#about' },
  { label: 'Expérience', to: '#experience' },
  { label: 'Contact', to: '#contact' }
]

const navItemsMobile = navItems.map(item => ({
  ...item,
  trailingIcon: 'i-lucide-arrow-right'
}))

const scrolled = ref(false)

const onScroll = () => { scrolled.value = window.scrollY > 10 }
onMounted(() => window.addEventListener('scroll', onScroll, { passive: true }))
onUnmounted(() => window.removeEventListener('scroll', onScroll))
</script>

<template>
  <UHeader
    :ui="{
      root: [
        'transition-all duration-300',
        scrolled
          ? 'bg-default/90 backdrop-blur-md shadow-sm border-default'
          : 'bg-default/50 backdrop-blur-sm border-transparent'
      ]
    }"
  >
    <template #title>
      <div class="size-8 bg-inverted text-inverted rounded-lg flex items-center justify-center text-sm font-bold shrink-0">
        MP
      </div>
      <span class="hidden sm:inline font-bold tracking-tight text-highlighted">Maxime Pinto</span>
    </template>

    <template #right>
      <UNavigationMenu
        :items="navItems"
        variant="link"
        color="neutral"
        :ui="{ link: 'nav-underline' }"
        class="hidden lg:flex"
      />
      <UColorModeButton variant="solid" color="neutral" size="sm" class="hidden lg:flex" />
      <UButton
        to="/cv/maxime-cv.pdf"
        download
        label="CV"
        icon="i-lucide-download"
        size="sm"
        color="neutral"
        variant="solid"
        class="hidden lg:flex"
      />
      
    </template>

    <template #body>
      <UNavigationMenu
        :items="navItemsMobile"
        orientation="vertical"
        class="-mx-2.5"
        variant="link"
        color="neutral"
      />
      <USeparator class="mt-5 mb-2" />
      <div class="flex items-center justify-between">
        <UButton
          to="/cv/maxime-cv.pdf"
          download
          label="Télécharger mon CV"
          icon="i-lucide-download"
          color="neutral"
          variant="solid"
        />
        <UColorModeButton />
      </div>
    </template>
  </UHeader>
</template>
