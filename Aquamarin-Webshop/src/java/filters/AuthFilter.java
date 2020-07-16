package filters;

import java.io.IOException;
import java.util.Arrays;
import java.util.List;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import models.User;

public class AuthFilter implements Filter {
    
    private static final List<String> authReqList = Arrays.asList("/Aquamarin-Webshop/checkout", "/Aquamarin-Webshop/povijest");
    private static final List<String> adminPages = Arrays.asList("/Aquamarin-Webshop/admin/userLogs", "/Aquamarin-Webshop/admin/userOrders");
    private static final List<String> mutualPages = Arrays.asList("/Aquamarin-Webshop/prijava", "/Aquamarin-Webshop/odjava", "/Aquamarin-Webshop/img", "/Aquamarin-Webshop/order");
    
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        
    }
    
    @Override
    public void doFilter(ServletRequest request, ServletResponse response,
            FilterChain chain)
            throws IOException, ServletException {
        
        HttpServletRequest req = (HttpServletRequest)request;
        HttpServletResponse resp = (HttpServletResponse)response;
        
        String reqUri = req.getRequestURI();
        System.out.println("");
        
        
        HttpSession session = req.getSession();
        User user = (User)session.getAttribute("user");
        
        if (!reqUri.equals("/Aquamarin-Webshop/unauthorized.jsp") && !reqUri.contains("img") && !reqUri.contains("static")) {
            if (user == null) {
                if (authReqList.contains(reqUri) || adminPages.contains(reqUri)) {
                    resp.sendRedirect("/Aquamarin-Webshop/prijava"); 
                    return;
                }
            } else {
                switch (user.getRole()) {
                    case ("user"):
                        if (adminPages.contains(reqUri)) {
                            resp.sendRedirect("/Aquamarin-Webshop/unauthorized.jsp");
                            return;
                        }
                        break;
                    case ("admin"):
                        if (!adminPages.contains(reqUri) && !mutualPages.contains(reqUri)) {
                            resp.sendRedirect("/Aquamarin-Webshop/unauthorized.jsp");
                            return;
                        }
                        break;
                }
            }
        }
        
        chain.doFilter(request, response);
              
    }

    @Override
    public void destroy() {
        
    }
   
}
