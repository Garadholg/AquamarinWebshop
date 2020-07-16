package dataHandlers;

import java.util.ArrayList;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;
import models.Order;
import models.OrderProduct;

public class OrderDataHandler {
       
    private static OrderDataHandler instance;
    private static EntityManagerFactory emf;
    
    private OrderDataHandler() { 
        emf = Persistence.createEntityManagerFactory("aquamarin2_pu");
    }
    
    public static OrderDataHandler getInstance() {
        if (instance == null) {
            instance = new OrderDataHandler();
        }
        return instance;
    }
    
    public Order getOrder(int id) {
        Order order = null;
        EntityManager em = null;
        String query = String.format("SELECT order FROM Order as order WHERE order.id = %d", id);
        
        try {
            em = emf.createEntityManager();
            
            Query getOrder = em.createQuery(query, Order.class);
            
            order = (Order)getOrder.getSingleResult();
            
        } catch (Exception e) {
            //logging
        } finally {
            if (em != null) {
                em.close();
            }
        }
        
        return order;
    }
    
    public List<Order> getOrders() {
        
        List<Order> ordersList = new ArrayList<>();
        EntityManager em = null;
        
        try {
            em = emf.createEntityManager();
            
            Query getOrders = em.createQuery("SELECT order FROM Order as order", Order.class);
            
            ordersList = getOrders.getResultList();
            
        } catch (Exception e) {
            //logging
        } finally {
            if (em != null) {
                em.close();
            }
        }
        
        return ordersList;
    }
    
    public List<Order> getOrders(int userID) {
        
        List<Order> ordersList = new ArrayList<>();
        EntityManager em = null;
        String query = String.format("SELECT order FROM Order as order where order.user.id = %d", userID);
        
        try {
            em = emf.createEntityManager();
            
            Query getOrders = em.createQuery(query, Order.class);
            
            ordersList = getOrders.getResultList();
            
        } catch (Exception e) {
            //logging
        } finally {
            if (em != null) {
                em.close();
            }
        }
        
        return ordersList;
    }
    
    public void insertOrder(Order order, List<OrderProduct> orderProducts) {
        EntityManager em = null;
        
        try {
            em = emf.createEntityManager();
            em.getTransaction().begin();
            
            for (OrderProduct op : orderProducts) {
                order.getProductsList().add(op);
                op.setOrder(order);
            }
            
            em.persist(order);
                        
            em.getTransaction().commit();
            
        } catch (Exception e) {
            //logging
            em.getTransaction().rollback();
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }
}
