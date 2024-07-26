<template>
  <div class="container">
    <div class="vending_machine">
        <div class="slot">
            <VendingItem v-for="item in items" :key="item.id" :item="item"></VendingItem>
        </div>
    </div>

  </div>
</template>

<script>
import VendingItemVue from './VendingItem.vue'
import VendingMachineService from '../services/VendingMachineService'

export default {
    components: {
        VendingItem
    },
    data() {
        return {
            items: []
        }
    },
    created() {
        VendingMachineService.getAllVendItems()
        .then(response => {
             if(response.satus == 200) {
                console.log(response.data);
                this.items = response.data;
             }
         }).catch(error => {
             console.log(error)
         })
    }
}
</script>

<style>

</style>