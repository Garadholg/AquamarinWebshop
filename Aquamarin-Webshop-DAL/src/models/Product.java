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
@Table(name = "Product")
public class Product {
    
    @Column(name = "IDProduct")
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    
    @ManyToOne(cascade = CascadeType.PERSIST)
    @JoinColumn(name = "BrandID", nullable = false)
    private Brand brand;
    
    @Column(name = "ProductName")
    private String productName;
    
    @Column(name = "Price")
    private double price;
    
    @Column(name = "ProductDescription")
    private String productDescription;
    
    @Column(name = "IsHighlighted")
    private boolean highlighted;

    public Product() {
    }

    public Product(Brand brand, String productName, double price, String productDescription, boolean highlighted) {
        this.brand = brand;
        this.productName = productName;
        this.price = price;
        this.productDescription = productDescription;
        this.highlighted = highlighted;
    }

    public int getId() {
        return id;
    }

    public Brand getBrand() {
        return brand;
    }
    
    public String getProductName() {
        return productName;
    }

    public double getPrice() {
        return price;
    }

    public String getProductDescription() {
        return productDescription;
    }
    
    public boolean isHighlighted() {
        return highlighted;
    }

    public void setBrand(Brand brand) {
        this.brand = brand;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public void setProductDescription(String productDescription) {
        this.productDescription = productDescription;
    }

    public void setHighlighted(boolean highlighted) {
        this.highlighted = highlighted;
    } 
    
}
