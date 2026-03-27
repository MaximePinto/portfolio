<script setup lang="ts">
defineOptions({ inheritAttrs: false })

const props = defineProps({
  variant: {
    type: String as PropType<'solid' | 'outline'>,
    default: 'solid',
  },
})
</script>

<template>
  <UButton
    color="neutral"
    :variant="props.variant"
    size="xl"
    v-bind="$attrs"
  />
</template>
