<script setup lang="ts">
defineProps<{
  title: string
  description: string
  tags: string[]
  to?: string
  icon?: string
}>()
</script>

<template>
  <UCard class="h-full">
    <template #header>
      <div class="flex items-center gap-2">
        <UIcon v-if="icon" :name="icon" class="text-xl text-primary" />
        <h3 class="text-lg font-semibold">
          {{ title }}
        </h3>
      </div>
    </template>

    <p class="text-sm text-muted">
      {{ description }}
    </p>

    <div class="mt-3 flex flex-wrap gap-1">
      <UBadge v-for="tag in tags" :key="tag" :label="tag" variant="subtle" color="neutral" size="xs" />
    </div>

    <template v-if="to" #footer>
      <UButton :to="to" target="_blank" label="Voir le projet" trailing-icon="i-lucide-external-link" variant="link" class="p-0" />
    </template>
  </UCard>
</template>
