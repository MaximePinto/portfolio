<script setup>
const contactInfo = [
  { icon: 'i-lucide-mail', label: 'maxime.pinto.dev@gmail.com', href: 'mailto:maxime.pinto.dev@gmail.com' },
  { icon: 'i-lucide-phone', label: '06 48 79 15 61', href: 'tel:+33648791561' },
  { icon: 'i-simple-icons-linkedin', label: 'LinkedIn', href: 'https://linkedin.com/in/maxime-pinto' },
  { icon: 'i-lucide-map-pin', label: 'Vienne (38200)', href: null }
]

const form = reactive({
  name: '',
  email: '',
  message: ''
})
</script>

<template>
  <section
    id="contact"
    class="scroll-mt-20 py-20 sm:py-28"
  >
    <div class="mx-auto max-w-5xl px-6">
      <h2 class="text-3xl font-bold text-slate-900 dark:text-white">
        Contact
      </h2>
      <p class="mt-1 text-sm text-slate-400">
        Prenons contact
      </p>

      <div class="mt-12 grid grid-cols-1 lg:grid-cols-2 gap-12">
        <!-- Left: contact info -->
        <div>
          <p class="text-base text-slate-600 dark:text-slate-300 leading-relaxed mb-8">
            Disponible pour de nouvelles opportunités. N'hésitez pas à me contacter
            par email ou via LinkedIn.
          </p>
          <div class="space-y-5">
            <div
              v-for="item in contactInfo"
              :key="item.label"
              class="flex items-center gap-3"
            >
              <UIcon
                :name="item.icon"
                class="text-lg text-slate-400"
              />
              <component
                :is="item.href ? 'a' : 'span'"
                :href="item.href"
                :target="item.href?.startsWith('http') ? '_blank' : undefined"
                class="text-sm text-slate-600 dark:text-slate-300"
                :class="item.href ? 'hover:text-slate-900 dark:hover:text-white transition-colors' : ''"
              >
                {{ item.label }}
              </component>
            </div>
          </div>
        </div>

        <!-- Right: form (visual only) -->
        <div class="rounded-xl border border-slate-200 dark:border-slate-800 p-6">
          <form @submit.prevent>
            <div class="space-y-5">
              <UFormField label="Nom">
                <UInput
                  v-model="form.name"
                  placeholder="Votre nom"
                  class="w-full"
                />
              </UFormField>
              <UFormField label="Email">
                <UInput
                  v-model="form.email"
                  type="email"
                  placeholder="votre@email.com"
                  class="w-full"
                />
              </UFormField>
              <UFormField label="Message">
                <UTextarea
                  v-model="form.message"
                  placeholder="Votre message..."
                  :rows="5"
                  class="w-full"
                />
              </UFormField>
              <UButton
                type="submit"
                label="Envoyer"
                icon="i-lucide-send"
                block
                disabled
              />
              <p class="text-xs text-slate-400 text-center">
                Formulaire visuel uniquement — contactez-moi par email.
              </p>
            </div>
          </form>
        </div>
      </div>
    </div>
  </section>
</template>
