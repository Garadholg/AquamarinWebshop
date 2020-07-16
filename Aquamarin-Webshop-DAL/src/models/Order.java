package models;

import java.text.SimpleDateFormat;
import java.util.Date;
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
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
@Table(name = "OrderDetails")
public class Order {
    
    @Column(name = "IDOrder")
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    
    @ManyToOne(cascade = CascadeType.MERGE)
    @JoinColumn(name = "UserID", nullable = false)
    private User user;
    
    @Temporal(TemporalType.DATE)
    @Column(name = "OrderDate")
    private Date orderDate;
    
    @Column(name = "TotalPrice")
    private double totalPrice;
    
    @Column(name = "UserAddress")
    private String address;
    
    @Column(name = "PhoneNr")
    private String phoneNr;
    
    @Column(name = "PaymentMethod")
    private String paymentMethod;
    
    @OneToMany(fetch = FetchType.EAGER, mappedBy = "order", cascade = CascadeType.PERSIST, orphanRemoval = true)
    private List<OrderProduct> productsList = new ArrayList<>();

    public Order() {
    }

    public Order(String address, String phoneNr) {
        this.address = address;
        this.phoneNr = phoneNr;
    }

    public int getId() {
        return id;
    }

    public User getUser() {
        return user;
    }

    public Date getOrderDate() {
        return orderDate;
    }
    
    public String getFormattedDateTime() {
        SimpleDateFormat sdf = new SimpleDateFormat("dd.MM.yyyy");
        String formattedDateTime = sdf.format(orderDate);
        
        return formattedDateTime;
    }

    public double getTotalPrice() {
        return totalPrice;
    }

    public String getAddress() {
        return address;
    }

    public String getPhoneNr() {
        return phoneNr;
    }

    public String getPaymentMethod() {
        return paymentMethod;
    }

    public List<OrderProduct> getProductsList() {
        return productsList;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public void setOrderDate(Date orderDate) {
        this.orderDate = orderDate;
    }

    public void setTotalPrice(double totalPrice) {
        this.totalPrice = totalPrice;
    }
    
    public void setPaymentMethod(String paymentMethod) {
        this.paymentMethod = paymentMethod;
    }
}
