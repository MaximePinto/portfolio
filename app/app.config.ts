export default defineAppConfig({
  ui: {
    colors: {
      primary: 'slate',
      neutral: 'slate'
    },
    button: {
      slots: {
        base: 'justify-center gap-2 whitespace-nowrap disabled:opacity-50',
      },
      variants: {
        size: {
          xl: {
            base: 'h-10 px-6 py-2 text-sm',
          },
        },
      },
      compoundVariants: [
        {
          color: 'neutral',
          variant: 'solid',
          class: 'bg-inverted text-inverted hover:bg-inverted/90 active:bg-inverted/90 shadow-sm',
        },
        {
          color: 'neutral',
          variant: 'outline',
          class: 'ring-0 border border-default bg-default text-highlighted hover:bg-muted active:bg-muted shadow-sm',
        },
      ],
    },
}
})
