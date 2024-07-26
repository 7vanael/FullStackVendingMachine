package com.techelevator.model;

public class VendingItem {
    private int id;
    private String slot;
    private String name;
    private int price;
    private String type;
    private int stock;
    private String image_url;

    public VendingItem(){
        id = -1;
        slot = "Z0";
        name = "Default Name";
        price = 0;
        type = "Empty";
        stock = -1;
    }

    public VendingItem(int id, String slot, String name, int price, String type, int stock, String image_url) {
        this.id = id;
        this.slot = slot;
        this.name = name;
        this.price = price;
        this.type = type;
        this.stock = stock;
        this.image_url = image_url;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getSlot() {
        return slot;
    }

    public void setSlot(String slot) {
        this.slot = slot;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public int getStock() {
        return stock;
    }

    public void setStock(int stock) {
        this.stock = stock;
    }

    public String getImage_url() {
        return image_url;
    }

    public void setImage_url(String image_url) {
        this.image_url = image_url;
    }
}
