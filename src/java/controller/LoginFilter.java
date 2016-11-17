/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.DatabaseHandler;

/**
 *
 * @author Alex
 */
public class LoginFilter implements Filter {
    
    private FilterConfig fc;

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        this.fc = filterConfig;
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        HttpServletRequest httpReq = (HttpServletRequest) request;
        HttpServletResponse httpResp = (HttpServletResponse) response;
        String userName = httpReq.getParameter("username");
        String password = httpReq.getParameter("psw");
        
        DatabaseHandler db = new DatabaseHandler();
        
        try {
            boolean isMember = db.checkIfMember(userName, password);
            if (userName.equals("admin") & (password.equals("admin"))){
                HttpSession session = httpReq.getSession();
                session.setAttribute("admin-authenticated", true);
                RequestDispatcher view = request.getRequestDispatcher("ListAllMembers");
                view.forward(httpReq, httpResp);
//                httpResp.sendRedirect("ListAllMembers");
            }
            else if (isMember == false) {
                httpResp.sendRedirect("login-error.jsp");
            }
            else {
                HttpSession session = httpReq.getSession();
                session.setAttribute("user-authenticated", true);
                chain.doFilter(request, response);
            }
        } catch (SQLException ex) {
            Logger.getLogger(LoginFilter.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(LoginFilter.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        
        
    }

    @Override
    public void destroy() {
        
    }
    
}
