const { defineConfig } = require('@vue/cli-service')
module.exports = defineConfig({
  publicPath: '/prodinit/',
  transpileDependencies: [
    'vuetify'
  ]
})
