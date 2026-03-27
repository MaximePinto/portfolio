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
          class: 'bg-slate-900 text-white hover:bg-slate-800 active:bg-slate-800 shadow-sm',
        },
        {
          color: 'neutral',
          variant: 'outline',
          class: 'ring-0 border border-slate-200 bg-white text-slate-900 hover:bg-slate-50 active:bg-slate-50 shadow-sm',
        },
      ],
    },
}
})
