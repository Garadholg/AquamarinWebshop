package models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "ProductImage")
public class ProductImage {
    
    @Column(name = "IDProductImage")
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    
    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "ProductID")
    private Product product;
    
    @Column(name = "ImagePath")
    private String path;
    
    @Column(name = "PrimaryImage")
    private boolean primary;

    public ProductImage() {
    }

    public ProductImage(Product product, String path, boolean primary) {
        this.product = product;
        this.path = path;
        this.primary = primary;
    }

    public int getId() {
        return id;
    }

    public Product getProduct() {
        return product;
    }

    public String getPath() {
        return path;
    }

    public boolean isPrimary() {
        return primary;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    public void setPath(String path) {
        this.path = path;
    }

    public void setPrimary(boolean primary) {
        this.primary = primary;
    }
    
}
