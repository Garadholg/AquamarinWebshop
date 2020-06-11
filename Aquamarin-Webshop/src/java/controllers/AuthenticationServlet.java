package controllers;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class AuthenticationServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String path = request.getServletPath();
        
        if (request.getQueryString() != null) {
            path = String.format("%s?%s", path, request.getQueryString());
        }
        
        ServletContext sc = this.getServletContext();
        RequestDispatcher rd = sc.getRequestDispatcher("/WEB-INF/sites/login.jsp");
        
        switch (path) {
            case "/odjava":
                request.getSession().invalidate();
                response.sendRedirect("pocetna");
                break;
            case "/prijava?error":
                request.setAttribute("loginError", "Neispravno korisničko ime ili lozinka!");                
            case "/prijava":                
                rd.forward(request, response);
        }
                       
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        
        HttpSession session = request.getSession();
        
        if (username.equals("Jacqueline") && password.equals("wuw")) {
            session.setAttribute("uid", username);
            response.sendRedirect("pocetna");
        } else {
            response.sendRedirect("prijava?error");
        }
        
    }

}
