import axios from "axios";


export default {
    getAllVendItems() {
        return axios.get('/inventory');
    },
    getVendItem(id) {
        return axios.get(`/inventory/${id}`);
    }
} 