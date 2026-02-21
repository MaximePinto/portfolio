// @ts-check
import withNuxt from './.nuxt/eslint.config.mjs'

export default withNuxt({
  rules: {
    // Vue – nommage des composants en PascalCase dans les templates
    'vue/component-name-in-template-casing': ['error', 'PascalCase'],

    // Vue – auto-fermeture cohérente des balises
    'vue/html-self-closing': ['error', {
      html: { void: 'always', normal: 'never', component: 'always' },
      svg: 'always',
      math: 'always'
    }],

    // Vue – ordre des attributs (v-bind, v-on, etc. en premier)
    'vue/attributes-order': ['error', { alphabetical: false }]
  }
})
