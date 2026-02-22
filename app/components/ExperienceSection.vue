<script setup>
const experiences = [
  {
    role: 'Développeur Full Stack',
    company: 'Beekast (SaaS.group)',
    dates: 'Oct. 2025 – Jan. 2026',
    location: 'Lyon · Remote',
    description: 'Plateforme SaaS d\'intelligence collective et d\'animation de réunions interactives.',
    bullets: [
      'Implémentation d\'un rate limiter et reCAPTCHA v3 sur l\'authentification',
      'Développement d\'une feature IA sur une activité du produit',
      'Refonte complète du frontend Account (profil, settings, billing ChargeBee)',
      'Implémentation d\'un nouveau profil utilisateur avec gestion de droits'
    ],
    stack: ['Vue 2/3', 'Node.js', 'MongoDB', 'GraphQL', 'Docker']
  },
  {
    role: 'Développeur Full Stack',
    company: 'Maline Immobilier',
    dates: 'Mai 2022 – Sept. 2025',
    location: 'Lyon · Remote',
    description: 'SaaS de prospection immobilière basé sur le Big Data.',
    bullets: [
      'Refonte du SaaS v2 → v3 avec architecture CQRS et Event Sourcing',
      'Authentification sécurisée Keycloak / JWT',
      'Système de campagnes email automatisées (Brevo) et courrier (MySendingBox)',
      'Système de réassignation automatique de leads',
      'Import et génération de leads via CSV',
      'Évolution : Backend developer → Full Stack developer'
    ],
    stack: ['PHP 8', 'Symfony 6', 'Vue 3', 'PostgreSQL', 'RabbitMQ', 'Docker']
  },
  {
    role: 'Développeur PHP/Symfony',
    company: 'SQLI',
    dates: 'Avr. 2019 – Avr. 2022',
    location: 'Lyon',
    description: 'ESN — projets clients secteurs médical et pharmaceutique.',
    bullets: [
      'Refonte application web et intranet médical (Symfony 4, Angular, MongoDB)',
      'Application d\'archivage pharmaceutique avec authentification LDAPS',
      'TMA Symfony 2.8/3.4 et Drupal 8, migrations PHP 5.2 → 7.2',
      'Génération PDF (dompdf), exports CSV, commandes Symfony d\'import/purge'
    ],
    stack: ['Symfony 4', 'API Platform', 'Angular', 'MongoDB', 'MySQL', 'AWS']
  },
  {
    role: 'Stagiaire Développeur Web',
    company: 'SQLI',
    dates: 'Déc. 2018 – Avr. 2019',
    location: 'Lyon',
    description: '',
    bullets: [
      'Développement d\'une application interne de génération de CV (Symfony 4.3, Docker)',
      'Authentification, génération PDF, formulaires imbriqués, autocomplétion'
    ],
    stack: ['Symfony 4.3', 'Docker']
  },
  {
    role: 'Conducteur de Travaux',
    company: 'Altrad / SRPB',
    dates: '2013 – 2017',
    location: 'Environnement nucléaire',
    description: '',
    bullets: [
      'Gestion d\'équipes et de chantiers en milieu nucléaire',
      'Gestion de projet sous contraintes, travail d\'équipe, rigueur méthodologique'
    ],
    stack: []
  }
]
</script>

<template>
  <section
    id="experience"
    class="scroll-mt-20 py-20 sm:py-28 bg-slate-50 dark:bg-slate-950/50"
  >
    <div class="mx-auto max-w-5xl px-6">
      <h2 class="text-3xl font-bold text-slate-900 dark:text-white">
        Expérience
      </h2>
      <p class="mt-1 text-sm text-slate-400">
        Mon parcours professionnel
      </p>

      <div class="mt-12 relative">
        <!-- Timeline line -->
        <div class="absolute left-3.5 top-2 bottom-2 w-px bg-slate-200 dark:bg-slate-700" />

        <div class="space-y-12">
          <div
            v-for="(exp, i) in experiences"
            :key="i"
            class="relative pl-10"
          >
            <!-- Dot -->
            <div class="absolute left-2 top-1.5 size-3 rounded-full border-2 border-slate-400 dark:border-slate-500 bg-white dark:bg-slate-900" />

            <div>
              <div class="flex flex-wrap items-baseline gap-x-3 gap-y-1">
                <h3 class="text-lg font-semibold text-slate-900 dark:text-white">
                  {{ exp.role }}
                </h3>
                <span class="text-sm font-medium text-slate-600 dark:text-slate-300">
                  {{ exp.company }}
                </span>
              </div>
              <p class="mt-1 text-sm text-slate-400">
                {{ exp.dates }} · {{ exp.location }}
              </p>
              <p
                v-if="exp.description"
                class="mt-3 text-sm text-slate-500 dark:text-slate-400 italic"
              >
                {{ exp.description }}
              </p>
              <ul class="mt-3 space-y-1.5">
                <li
                  v-for="(bullet, j) in exp.bullets"
                  :key="j"
                  class="text-sm text-slate-600 dark:text-slate-300 flex gap-2"
                >
                  <span class="mt-1.5 shrink-0 size-1.5 rounded-full bg-slate-300 dark:bg-slate-600" />
                  {{ bullet }}
                </li>
              </ul>
              <div
                v-if="exp.stack.length"
                class="mt-3 flex flex-wrap gap-1.5"
              >
                <UBadge
                  v-for="tech in exp.stack"
                  :key="tech"
                  :label="tech"
                  variant="subtle"
                  color="neutral"
                  size="xs"
                />
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
</template>
