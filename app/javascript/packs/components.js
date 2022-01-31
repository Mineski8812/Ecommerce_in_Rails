import Vue from 'vue/dist/vue.esm';
import OrdersIndex from '../components/OrdersIndex'
import stockIndex from '../components/StocksIndex'
import productsIndex from '../components/ProductsIndex'


Vue.component('order-index', OrdersIndex)
Vue.component('stock-index', stockIndex)
Vue.component('product-index', productsIndex)


