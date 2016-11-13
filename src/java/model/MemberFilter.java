/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.io.IOException;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Alex
 */
public class MemberFilter implements Filter {
    
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
            if (isMember == false) {
                httpResp.sendRedirect("login-error.jsp");
            }
            else {
                chain.doFilter(request, response);
            }
        } catch (SQLException ex) {
            Logger.getLogger(MemberFilter.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(MemberFilter.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        
        
    }

    @Override
    public void destroy() {
        
    }
    
}
