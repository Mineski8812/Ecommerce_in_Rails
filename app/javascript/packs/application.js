// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import 'vue-loading-overlay/dist/vue-loading.css'
import "channels"
import "css/styles"


 import jQuery from 'jquery'
 global.$ = global.jQuery = jQuery;
 window.$ = window.jQuery = jQuery;


require('bootstrap/dist/js/bootstrap.min');
require('controllers');



/*importando la coleccion de pedidos con vue*/
import Vue from 'vue/dist/vue.esm';
import TurbolinksAdapter from "vue-turbolinks";
import VueResource from "vue-resource";
import Loading from "vue-loading-overlay";
import VueSanitize from "vue-sanitize";



Rails.start()
Turbolinks.start()
ActiveStorage.start()
Vue.use(VueResource);
Vue.use(VueSanitize);
Vue.use(TurbolinksAdapter);

//
// document.addEventListener('turbo:load', () => {
//     Vue.http.headers.common['X-CSRF-Token'] = document.querySelector('meta[name="csrf-token"]').getAttribute('content');
//     let table = document.querySelector('#basic-table');
//
//     if (table != undefined){
//         Vue.mixin({
//             methods: {
//                 // Similar a la funcion blank? de rails
//                 isBlank: function(data) { return (data === undefined || data === null || data === false || (typeof data == 'string' && data.trim() === '')); },
//
//                 // Similar a la funcion present? de rails y basicamente !blank?
//                 isPresent: function(data) { return !this.isBlank(data); }
//             }
//         });
//         Vue.component('loading', Loading);
//         const app = new Vue({
//             el: table,
//             data:{
//                 lists: JSON.parse(table.dataset.lists).results,
//             },
//             template: "<basicTable :results='lists' @update-lists ='update' />",
//             components: {
//                 basicTable
//             },
//             methods: {
//                 update(list) {
//                     this.lists = list;
//                 }
//             }
//         });
//     }
// });
//
// document.addEventListener('turbolinks:load',()=>{
//     Vue.http.headers.common['X-CSRF-Token'] = document.querySelector('meta[name="csrf-token"]').getAttribute('content');
//     let table = document.querySelector('#dinamic-table');
//     if(table!=undefined){
// new Vue({
//     el: table,
//     data:{
//         lists: JSON.parse(table.dataset.lists).results,
//     },
//     template: "<dinamic-table :results='lists'/>",
//     components: { dinamicTable }
// });
//     }
// });

document.addEventListener('turbolinks:load',()=>{
   new Vue({
       el: '[data-behavior="vue"]'
   });


});

/*import stimulus*/
import "controllers"