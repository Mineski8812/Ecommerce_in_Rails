<template>
  <div>
    <table border="1" class="table table-striped table-bordered" style="width: 1000px;">
      <thead>
      <tr>
        <th>Cantidad</th>
        <th>Descripcion</th>
        <th>Acciones</th>
      </tr>
      </thead>
      <tbody>
      <tr v-for="order in orders" :key="order.id">
        <td> {{order.Amount}}</td>
        <td> {{order.Description}}</td>
        <td><a v-bind:href="'/orders/'+ order.id" class="btn btn-sm btn-info">Mostrar</a> </td>
      </tr>
      </tbody>
    </table>

  </div>
</template>

<script>
export default {
  name:'OrdersIndex',
  props:{
    orders:{
      type: Array,
      default: ()=>[]
    }
  }
}
</script>