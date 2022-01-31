const { environment } = require('@rails/webpacker')
const { VueLoaderPlugin } = require('vue-loader')
const vue = require('./loaders/vue')

const webpack = require('webpack')
environment.plugins.append('Provide',new webpack.ProvidePlugin({
    $: 'jquery',
    jQuery: 'jquery',
     jquery: 'jquery',
     Rails: '@rails/ujs'
}))

environment.plugins.append('expose',{
    test: require.resolve('jquery'),
    use: [{
        loader: 'expose-loader',
        options: '$'
    },{
        loader: "expose-loader",
        options: 'jQuery'
    }]
})

environment.plugins.prepend('VueLoaderPlugin', new VueLoaderPlugin())
environment.loaders.prepend('vue', vue)
module.exports = environment
