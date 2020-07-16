package dataHandlers;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;
import models.AuthenticationLog;
import models.User;

public class AuthenticationLogsDataHandler {
    
    private static AuthenticationLogsDataHandler instance;
    private static EntityManagerFactory emf;
    
    private AuthenticationLogsDataHandler() { 
        emf = Persistence.createEntityManagerFactory("aquamarin2_pu");
    }
    
    public static AuthenticationLogsDataHandler getInstance() {
        if (instance == null) {
            instance = new AuthenticationLogsDataHandler();
        }
        return instance;
    }
    
    public List<AuthenticationLog> getLogs() {
        List<AuthenticationLog> logsList = new ArrayList<>();
        EntityManager em = null;
        
        try {
            em = emf.createEntityManager();
            
            Query getLogs = em.createQuery("SELECT authenticationLog FROM AuthenticationLog as authenticationLog", AuthenticationLog.class);
            
            logsList = getLogs.getResultList();
            
        } catch (Exception e) {
            //logging
        } finally {
            if (em != null) {
                em.close();
            }
        }
        
        return logsList;
    }
    
    public void insertLog(User user, String ip) {
        EntityManager em = null;
        
        try {
            Timestamp ts = new Timestamp(System.currentTimeMillis());
            AuthenticationLog log = new AuthenticationLog(user, ts, ip);
            
            em = emf.createEntityManager();
            em.getTransaction().begin();
            
            em.persist(log);
                        
            em.getTransaction().commit();
            
        } catch (Exception e) {
            //logging
            System.out.println(e.getMessage());
            em.getTransaction().rollback();
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }
}
