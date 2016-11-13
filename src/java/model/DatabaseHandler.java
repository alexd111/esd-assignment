/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Alex
 */
public class DatabaseHandler {

    public List<Member> getAllMembers() throws ClassNotFoundException, SQLException {
        Connection connection = null;
        Statement statement = null;
        ResultSet resultSet = null;

        Class.forName("com.mysql.jdbc.Driver");

        connection = DriverManager.getConnection("jdbc:mysql://localhost/xyz_assoc", "root", "");

        statement = connection.createStatement();
        resultSet = statement.executeQuery("SELECT * FROM members");

        List<Member> members = new ArrayList<Member>();

        while (resultSet.next()) {
//            Member member = new Member(resultSet.getString("name"), resultSet.getString("address"), resultSet.getDate("dob"), resultSet.getDate("dor"), resultSet.getString("status"), resultSet.getFloat("balance"));
            Member member = new Member();
            member.setId(resultSet.getString("id"));
            member.setName(resultSet.getString("name"));
            member.setAddress(resultSet.getString("address"));
            member.setDob(resultSet.getDate("dob"));
            member.setDor(resultSet.getDate("dor"));
            member.setStatus(resultSet.getString("status"));
            member.setBalance(resultSet.getFloat("balance"));
            members.add(member);
        }
        return members;
    }
    
    public boolean checkIfMember(String userName, String password) throws SQLException, ClassNotFoundException {
        Connection connection = null;
        ResultSet resultSet = null;

        Class.forName("com.mysql.jdbc.Driver");

        connection = DriverManager.getConnection("jdbc:mysql://localhost/xyz_assoc", "root", "");
        
        PreparedStatement stm = connection.prepareStatement("SELECT * FROM users WHERE id=? AND password=?");
        stm.setString(1, userName);
        stm.setString(2, password);
        
        resultSet = stm.executeQuery();
        
        if (resultSet.next() == false) {
            return false;
        }
        
        return true;
    }
    
    public Member getMember (String id) throws SQLException, ClassNotFoundException {
        Connection connection = null;
        ResultSet resultSet = null;
        Member member = new Member();

        Class.forName("com.mysql.jdbc.Driver");

        connection = DriverManager.getConnection("jdbc:mysql://localhost/xyz_assoc", "root", "");
        
        PreparedStatement stm = connection.prepareStatement("SELECT * FROM members WHERE id=?");
        stm.setString(1, id);
        
        resultSet = stm.executeQuery();
        
        while(resultSet.next()) {
            member.setId(resultSet.getString("id"));
            member.setName(resultSet.getString("name"));
            member.setAddress(resultSet.getString("address"));
            member.setDob(resultSet.getDate("dob"));
            member.setDor(resultSet.getDate("dor"));
            member.setStatus(resultSet.getString("status"));
            member.setBalance(resultSet.getFloat("balance"));
        }
        return member;
    }
}
