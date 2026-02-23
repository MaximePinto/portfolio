<script setup>
const skills = [
  { category: 'Backend', icon: 'i-lucide-server', items: ['PHP 8', 'Symfony 6', 'API Platform', 'Node.js', 'GraphQL'] },
  { category: 'Frontend', icon: 'i-lucide-monitor', items: ['Vue.js 2/3', 'JavaScript', 'HTML5', 'CSS3', 'SASS'] },
  { category: 'Bases de données', icon: 'i-lucide-database', items: ['PostgreSQL', 'MySQL', 'MongoDB'] },
  { category: 'Architecture', icon: 'i-lucide-blocks', items: ['CQRS', 'Event Sourcing', 'Microservices', 'REST API'] },
  { category: 'DevOps', icon: 'i-lucide-container', items: ['Docker', 'Docker Compose', 'GitLab CI/CD', 'RabbitMQ'] },
  { category: 'Outils', icon: 'i-lucide-wrench', items: ['Git', 'Jira', 'PhpStorm', 'Postman', 'Keycloak'] }
]
</script>

<template>
  <section
    id="about"
    class="scroll-mt-20 py-20 sm:py-28"
  >
    <div class="max-w-section mx-auto px-6">
      <h2 class="text-3xl font-bold text-slate-900 dark:text-white">
        À propos
      </h2>
      <p class="mt-1 text-sm text-slate-400">
        Qui suis-je
      </p>

      <div class="mt-10 max-w-3xl text-base leading-relaxed text-slate-600 dark:text-slate-300 space-y-4">
        <p>
          Développeur web avec plus de 6 ans d'expérience, je suis spécialisé en backend
          PHP/Symfony et frontend Vue.js. J'ai travaillé sur des architectures modernes
          telles que CQRS, Event Sourcing et Microservices.
        </p>
        <p>
          Après un parcours en conduite de travaux dans le secteur nucléaire, j'ai effectué
          une reconversion réussie dans le développement web. Cette première carrière m'a
          apporté rigueur méthodologique, gestion de projet sous contraintes et un véritable
          esprit d'équipe.
        </p>
      </div>

      <h3 class="mt-16 text-xl font-semibold text-slate-900 dark:text-white">
        Compétences techniques
      </h3>
      <div class="mt-6 grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-6">
        <div
          v-for="group in skills"
          :key="group.category"
          class="rounded-xl border border-slate-200 dark:border-slate-800 p-5"
        >
          <div class="flex items-center gap-2 mb-3">
            <UIcon
              :name="group.icon"
              class="text-lg text-slate-500"
            />
            <h4 class="font-medium text-slate-900 dark:text-white">
              {{ group.category }}
            </h4>
          </div>
          <div class="flex flex-wrap gap-2">
            <UBadge
              v-for="item in group.items"
              :key="item"
              :label="item"
              variant="subtle"
              color="neutral"
              size="sm"
            />
          </div>
        </div>
      </div>
    </div>
  </section>
</template>
