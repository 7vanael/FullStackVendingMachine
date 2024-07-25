<template>
  <div class="vend-item">
    <h3>{{ item.slot }}</h3>
    <h2>{{ item.name }}</h2>
    <h3>{{ item.price }}</h3>
    <h3>{{ item.type }}</h3>
    <h3>{{ item.stock }}</h3>
  </div>
</template>

<script>
import VendingMachineService from '../services/VendingMachineService'

export default {
    data() {
        return {
            item: {}
        }
    },
    created() {
        VendingMachineService.getVendItem(this.ItemId)
        .then(response => {
              if(response.satus == 200) {
                 console.log(response.data);
                 this.item = response.data;
              }
            }).catch((error) => {
              console.log(error)
         })
    },
    props: {ItemId: {type : Number}}
}
</script>

<style>

</style>