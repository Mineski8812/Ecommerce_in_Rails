

<template>
  <div class="row">

    <table border="1" class="table table-striped table-bordered" style="width: 1000px;">
      <thead>
      <tr>
        <th>Nombre</th>
        <th>Fecha caducidad</th>
        <th>Descripcion</th>
        <th>Almacen</th>
        <th>Cantidad</th>
        <th colspan="5">Acciones</th>
      </tr>
      </thead>

      <tbody>
      <tr v-for="product in products" :key="product.id">
        <td>{{  product.Name  }}</td>
        <td>{{  product.EndingDate }}/td>
        <td>{{  product.Description }}</td>
        <td>{{  product.stock.Name  }}</td>
        <td>{{  product.cant }} </td>
        <td><a v-bind:href="'products/'+product.id"></a></td>

      </tr>
      </tbody>
    </table>
  </div>
</template>

<script>
export default {
  name: 'productsIndex',
  props:{
    products:{
      type: Array,
      default: ()=>[]
    }
  }
}
</script>