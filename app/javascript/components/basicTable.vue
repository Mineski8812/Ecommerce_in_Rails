<template>
  <div class="row">
<!--    <div class="vld-parent">-->
<!--      <loading :active.sync="isLoading"-->
<!--               :can-cancel="false"-->
<!--               :is-full-page="true"></loading>-->
<!--    </div>-->
    <div id="currency-list">

        <div class="card-header">
          <div class="col">
            <h3 class="card-title">{{results.table_name}}</h3>
          </div>
        </div>
        <div class="card-body">
          <div class="table-responsive">
            <table class="table table-striped table-hover table-condensed table-vcenter" style="width: 1000px;">
              <thead class="thead-light">
              <tr>
                <th v-for="header in results.headers">{{header}}</th>
              </tr>
              </thead>
              <tbody>
              <tr v-if="results.infos.lenght==0">
                <td :colspan="results.headers.length">No existen elementos</td>
              </tr>
              <template v-else v-for="obj in results.infos">
                <tr :id="obj.id" :key="obj.id">
                  <td v-for="row in results.rows">
                    <span v-html="cleanMessage(obj[row])"></span>
                  </td>

                </tr>
              </template>

              </tbody>
            </table>
          </div>

        </div>

    </div>
  </div>
</template>


<script>

export default{
  props:["results"],
  methods:{
    cleanMessage(message) {
      return this.$sanitize(message);
    }
  },
  data(){
    return{
      isLoading: false,
      componentKey: 0
    }
  }
}
</script>
