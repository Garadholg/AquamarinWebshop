package dataHandlers;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;
import models.User;

public class AuthDataHandler {
    private static AuthDataHandler instance;
    private static EntityManagerFactory emf;

    private AuthDataHandler() { 
        emf = Persistence.createEntityManagerFactory("aquamarin2_pu");
    }
    
    public static AuthDataHandler getInstance() {
        if (instance == null) {
            instance = new AuthDataHandler();
        }
        return instance;
    }
    
    public User login(String username, String password) {
        User user = null;
        EntityManager em = null;
        String query = String.format("SELECT user FROM User as user WHERE user.username = '%s' and Pwd = '%s'", username, password);
        
        try {
            em = emf.createEntityManager();
            
            Query getUser = em.createQuery(query, User.class);
            
            user = (User)getUser.getSingleResult();
            
        } catch (Exception e) {
            //logging
        } finally {
            if (em != null) {
                em.close();
            }
        }
        
        return user;
    }
}
