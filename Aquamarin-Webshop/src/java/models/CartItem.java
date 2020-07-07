package models;

public class CartItem {
    private int productID;
    private int qty;

    public CartItem(int productID, int qty) {
        this.productID = productID;
        this.qty = qty;
    }

    public int getProductID() {
        return productID;
    }

    public int getQty() {
        return qty;
    }

    public void setQty(int qty) {
        this.qty = qty;
    }

}
