package models;

import java.sql.Timestamp;
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
@Table(name = "AuthenticationLog")
public class AuthenticationLog {
    
    @Column(name = "IDAuthenticationLog")
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    
    @ManyToOne(cascade = CascadeType.MERGE)
    @JoinColumn(name = "UserID", nullable = false)
    private User user;
    
    @Column(name = "AuthDateTime")
    private Timestamp authDateTime;
    
    @Column(name = "IPAddress")
    private String ipAddress;

    public AuthenticationLog() {
    }

    public AuthenticationLog(User user, Timestamp authDateTime, String ipAddress) {
        this.user = user;
        this.authDateTime = authDateTime;
        this.ipAddress = ipAddress;
    }

    public int getId() {
        return id;
    }

    public User getUser() {
        return user;
    }

    public Timestamp getAuthDateTime() {
        return authDateTime;
    }

    public String getIpAddress() {
        return ipAddress;
    }
    
    
}
