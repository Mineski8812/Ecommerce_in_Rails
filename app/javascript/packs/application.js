// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"
import "bootstrap"
import "css/styles"
import "datatables.net-bs4"


/*import stimulus*/
import "controllers"

/*import vue*/
// import App from '../app.vue'
import Vue from 'vue/dist/vue.esm';
import TurbolinksAdapter from "vue-turbolinks";
/*importando la coleccion de pedidos con vue*/
import './components'


// document.addEventListener('DOMContentLoaded', () => {
//     const app = new Vue({
//         render: h => h(App)
//     }).$mount()
//     document.body.appendChild(app.$el)
//
//     console.log(app)
// })


Vue.use(TurbolinksAdapter);

document.addEventListener('turbolinks:load', () => {
    new Vue({
        el: '[data-behavior="vue"]',
    });
});




Rails.start()
Turbolinks.start()
ActiveStorage.start()
bootstrap.start()


