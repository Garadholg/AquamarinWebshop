package models;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "OrderProduct")
public class OrderProduct {
    
    @Column(name = "IDOrderProduct")
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    
    @ManyToOne(cascade = CascadeType.PERSIST)
    @JoinColumn(name = "OrderID", nullable = false)
    private Order order;
    
    @ManyToOne
    @JoinColumn(name = "ProductID", nullable = false)
    private Product product;
    
    @Column(name = "Quantity")
    private int quantity;

    public OrderProduct() {
    }

    public OrderProduct(Product product, int quantity) {
        this.product = product;
        this.quantity = quantity;
    }

    public int getId() {
        return id;
    }

    public Order getOrder() {
        return order;
    }

    public Product getProduct() {
        return product;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setOrder(Order order) {
        this.order = order;
    }
}
