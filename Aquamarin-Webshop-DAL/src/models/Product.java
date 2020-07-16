package models;

import java.util.ArrayList;
import java.util.List;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
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
    
    @ManyToOne(cascade = CascadeType.PERSIST)
    @JoinColumn(name = "CategoryID", nullable = false)
    private ProductCategory category;
    
    @Column(name = "ProductName")
    private String productName;
    
    @Column(name = "Price")
    private double price;
    
    @Column(name = "ProductDescription")
    private String productDescription;
    
    @Column(name = "IsHighlighted")
    private boolean highlighted;
    
    @OneToMany(fetch = FetchType.EAGER, mappedBy = "product", cascade = CascadeType.ALL, orphanRemoval = true)
    private List<ProductImage> images = new ArrayList<>();

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

    public ProductCategory getCategory() {
        return category;
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
    
    public ProductImage getPrimaryImage() {
        return images
                .stream()
                .filter(img -> img.isPrimary() == true)
                .findFirst()
                .orElse(null);
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
