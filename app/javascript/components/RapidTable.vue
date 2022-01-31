
<template>

  <table id="myTable" border="1" class="table table-striped table-bordered table-hover" style="width: 1000px;">
    <thead>
    <tr>
      <th>Nombre</th>
      <th>Descripcion</th>
      <th colspan="4">Acciones</th>
    </tr>
    </thead>
    <tbody>

    <tr v-for="stock in stocks" :key="stock.id">
      <td>{{stock.Name}}</td>
      <td>{{stock.Description}}</td>
      <td><a v-bind:href="'stocks/'+stock.id" class="btn btn-sm btn-info">Mostrar</a></td>
      <td><a v-bind:href="'stocks/'+stock.id+'/edit'" class="btn btn-sm btn-warning">Editar</a></td>
      <td><a v-bind:href="'stocks/products/'+stock.id" class="btn btn-sm btn-outline-secondary">Productos</a></td>

    </tr>
    </tbody>
  </table>

</template>

<script>
export default {
  name: 'stocksIndex',
  props: {
    stocks:{
      type: Array,
      default: ()=>[]
    }
  }
}
</script>