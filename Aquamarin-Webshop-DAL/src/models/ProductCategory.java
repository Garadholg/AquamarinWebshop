package models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "ProductCategory")
public class ProductCategory {
    
    @Column(name = "IDCategory")
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    
    @Column(name = "CategoryName")
    private String name; 

    public ProductCategory() {
    }

    public int getId() {
        return id;
    }

    public String getName() {
        return name;
    }
}
