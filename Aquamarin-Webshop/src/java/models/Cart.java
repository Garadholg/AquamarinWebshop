package models;

import java.util.ArrayList;
import java.util.List;

public class Cart {
    private List<CartItem> cartItems;
    private int totalItems;

    public Cart() {
        cartItems = new ArrayList<>();
        totalItems = 0;
    }

    public List<CartItem> getCartItems() {
        return cartItems;
    }

    public int getTotalItems() {
        return totalItems;
    }
    
    
    private void countItems() {
        int counter = 0;
        
        for (CartItem item : cartItems) {
            counter += item.getQty();
        }
        
        totalItems = counter;
    }
    
    public void addCartItem(int productID, int qty) {
        
        CartItem item = cartItems.stream()
                .filter(ci -> ci.getProductID() == productID)
                .findAny()
                .orElse(null);

        if (item == null) { 
            cartItems.add(new CartItem(productID, qty));
        } else {
            item.setQty(qty);
        }
        
        totalItems += qty;
    }    
    
}
