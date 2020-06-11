package dataHandlers;

import java.util.ArrayList;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;
import models.Product;

public class ProductDataHandler {
    
    private static ProductDataHandler instance;
    private static EntityManagerFactory emf;

    private ProductDataHandler() { 
        emf = Persistence.createEntityManagerFactory("aquamarin_pu");
    }
    
    public static ProductDataHandler getInstance() {
        if (instance == null) {
            instance = new ProductDataHandler();
        }
        return instance;
    }

    public List<Product> getProducts() {
        
        List<Product> productList = new ArrayList<Product>();
        EntityManager em = null;
        
        try {
            em = emf.createEntityManager();
            
            Query getProducts = em.createQuery("SELECT product FROM Product as product", Product.class);
            
            productList = getProducts.getResultList();
            
        } catch (Exception e) {
            //logging
        } finally {
            if (em != null) {
                em.close();
            }
        }
        
        return productList;
    }

    public List<Product> getHighlightedProducts() {
        List<Product> productList = new ArrayList<Product>();
        EntityManager em = null;
        
        try {
            em = emf.createEntityManager();
            
            Query getProducts = em.createQuery("SELECT product FROM Product as product WHERE product.highlighted = 1", Product.class);
            
            productList = getProducts.getResultList();
            
        } catch (Exception e) {
            //logging
        } finally {
            if (em != null) {
                em.close();
            }
        }
        
        return productList;
    }
}
