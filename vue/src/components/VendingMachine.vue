<template>
  <div>

  </div>
</template>

<script>
import VendingItemVue from './VendingItem.vue'
import VendingMachineService from '../services/VendingMachineService'

export default {
    components: {
        VendingItemVue
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
                this.items = response.data
             }
         })
    }
}
</script>

<style>

</style>