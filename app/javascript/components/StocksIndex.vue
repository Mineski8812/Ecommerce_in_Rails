
<template>

      <thead>
      <tr>
        <th>Nombre</th>
        <th>Descripcion</th>
        <th>Tienda</th>
        <th colspan="4">Acciones</th>
      </tr>
      </thead>
      <tbody>

      <tr v-for="stock in stocks" :key="stock.id">
        <td>{{stock.Name}}</td>
        <td>{{stock.Description}}</td>
        <td>{{stock.shop.Name}}</td>
        <td><a v-bind:href="'stocks/'+stock.id" class="btn btn-sm btn-info">Mostrar</a></td>
        <td><a v-bind:href="'stocks/'+stock.id+'/edit'" class="btn btn-sm btn-warning">Editar</a></td>
        <td><a v-bind:href="'stocks/products/'+stock.id" class="btn btn-sm btn-outline-secondary">Productos</a></td>

      </tr>
      </tbody>

</template>

<script>
export default {
  name: 'stockIndex',
  props: {
    stocks:{
      type: Array,
      default:()=>[]
    }
  }
}
</script>