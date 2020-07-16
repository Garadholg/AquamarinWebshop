package dataHandlers;

import java.util.ArrayList;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;
import models.Order;
import models.ProductCategory;

public class ProductCategoryDataHandler {
    
    private static ProductCategoryDataHandler instance;
    private static EntityManagerFactory emf;
    
    private ProductCategoryDataHandler() { 
        emf = Persistence.createEntityManagerFactory("aquamarin2_pu");
    }
    
    public static ProductCategoryDataHandler getInstance() {
        if (instance == null) {
            instance = new ProductCategoryDataHandler();
        }
        return instance;
    }
    
    public List<ProductCategory> getCategories() {
        
        List<ProductCategory> categoriesList = new ArrayList<>();
        EntityManager em = null;
        
        try {
            em = emf.createEntityManager();
            
            Query getCategories = em.createQuery("SELECT productCategory FROM ProductCategory as productCategory", ProductCategory.class);
            
            categoriesList = getCategories.getResultList();
            
        } catch (Exception e) {
            //logging
        } finally {
            if (em != null) {
                em.close();
            }
        }
        
        return categoriesList;
    }
}
