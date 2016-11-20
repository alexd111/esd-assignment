/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.Connection;
import java.sql.Date;
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
    
    public List<Claim> getAllClaims() throws ClassNotFoundException, SQLException {
        Connection connection = null;
        Statement statement = null;
        ResultSet resultSet = null;
        
        Class.forName("com.mysql.jdbc.Driver");

        connection = DriverManager.getConnection("jdbc:mysql://localhost/xyz_assoc", "root", "");

        statement = connection.createStatement();
        resultSet = statement.executeQuery("SELECT * FROM claims");
        
        List<Claim> claims = new ArrayList<Claim>();
        
        while (resultSet.next()) {
            Claim claim = new Claim();
            claim.setMemberID(resultSet.getString("id"));
            claim.setClaimDate(resultSet.getDate("date"));
            claim.setRationale(resultSet.getString("rationale"));
            claim.setStatus(resultSet.getString("status"));
            claim.setAmount(resultSet.getFloat("id"));
            claims.add(claim);
        }
        return claims;
    }
    
    public List<Claim> getMemberClaims(Member member) throws ClassNotFoundException, SQLException {
        Connection connection = null;
        Statement statement = null;
        ResultSet resultSet = null;
        String id = member.getId();
        
        Class.forName("com.mysql.jdbc.Driver");

        connection = DriverManager.getConnection("jdbc:mysql://localhost/xyz_assoc", "root", "");

        statement = connection.createStatement();
        resultSet = statement.executeQuery("SELECT * FROM claims WHERE mem_id=" + id);
        
        List<Claim> claims = new ArrayList<Claim>();
        
        while (resultSet.next()) {
            Claim claim = new Claim();
            claim.setMemberID(resultSet.getString("id"));
            claim.setClaimDate(resultSet.getDate("date"));
            claim.setRationale(resultSet.getString("rationale"));
            claim.setStatus(resultSet.getString("status"));
            claim.setAmount(resultSet.getFloat("id"));
            claims.add(claim);
        }
        return claims;
    }
    
    public List<Payment> getAllPayments() throws ClassNotFoundException, SQLException {
        Connection connection = null;
        Statement statement = null;
        ResultSet resultSet = null;
        
        Class.forName("com.mysql.jdbc.Driver");

        connection = DriverManager.getConnection("jdbc:mysql://localhost/xyz_assoc", "root", "");

        statement = connection.createStatement();
        resultSet = statement.executeQuery("SELECT * FROM payments");
        
        List<Payment> payments = new ArrayList<Payment>();
        
        while (resultSet.next()) {
            Payment payment = new Payment();
            payment.setMemberID(resultSet.getString("id"));
            payment.setPaymentType(resultSet.getString("type_of_payment"));
            payment.setAmount(resultSet.getFloat("amount"));
            payment.setPaymentDate(resultSet.getDate("id"));
            payments.add(payment);
        }
        return payments;
    }
    
    public List<Payment> getMemberPayments(Member member) throws ClassNotFoundException, SQLException {
        Connection connection = null;
        Statement statement = null;
        ResultSet resultSet = null;
        String id = member.getId();
        
        Class.forName("com.mysql.jdbc.Driver");

        connection = DriverManager.getConnection("jdbc:mysql://localhost/xyz_assoc", "root", "");

        statement = connection.createStatement();
        resultSet = statement.executeQuery("SELECT * FROM payments WHERE mem_id=" + id);
        
        List<Payment> payments = new ArrayList<Payment>();
        
        while (resultSet.next()) {
            Payment payment = new Payment();
            payment.setMemberID(resultSet.getString("id"));
            payment.setPaymentType(resultSet.getString("type_of_payment"));
            payment.setAmount(resultSet.getFloat("amount"));
            payment.setPaymentDate(resultSet.getDate("id"));
            payments.add(payment);
        }
        return payments;
    }
    
    
    public boolean checkIfMember(String userName, String password) throws SQLException, ClassNotFoundException {
        Connection connection = null;
        ResultSet resultSet = null;

        Class.forName("com.mysql.jdbc.Driver");
        
        connection = DriverManager.getConnection("jdbc:mysql://localhost/xyz_assoc", "root", "");

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
    
    public void addMember(Member member, User user) throws ClassNotFoundException, SQLException {
        Connection connection = null;
        
        Class.forName("com.mysql.jdbc.Driver");
        
        connection = DriverManager.getConnection("jdbc:mysql://localhost/xyz_assoc", "root", "");
        
        PreparedStatement memberStm = connection.prepareStatement("INSERT INTO members VALUES (?,?,?,?,?,?,?)");
        
        java.sql.Date dobSqlDate = new java.sql.Date(member.getDob().getTime());
        java.sql.Date dorSqlDate = new java.sql.Date(member.getDor().getTime());
        
        memberStm.setString(1, member.getId());
        memberStm.setString(2, member.getName());
        memberStm.setString(3, member.getAddress());
        memberStm.setDate(4, dobSqlDate);
        memberStm.setDate(5, dorSqlDate);
        memberStm.setString(6, member.getStatus());
        memberStm.setFloat(7, member.getBalance());
        
        memberStm.executeUpdate();
        
        PreparedStatement userStm = connection.prepareStatement("INSERT INTO users VALUES (?,?,?)");
        
        userStm.setString(1, user.getId());
        userStm.setString(2, user.getPassword());
        userStm.setString(3, user.getStatus());
        
        userStm.executeUpdate();
    }
    
    public void addClaim(Claim claim) throws ClassNotFoundException, SQLException {
        Connection connection = null;
        
        Class.forName("com.mysql.jdbc.Driver");
        
        connection = DriverManager.getConnection("jdbc:mysql://localhost/xyz_assoc", "root", "");
        
        PreparedStatement userStm = connection.prepareStatement("INSERT INTO claims (mem_id,date,rationale,status,amount) VALUES (?,?,?,?,?)");
        
        java.sql.Date claimSqlDate = new java.sql.Date(claim.getClaimDate().getTime());
        
        userStm.setString(1, claim.getMemberID());
        userStm.setDate(2, claimSqlDate);
        userStm.setString(3, claim.getRationale());
        userStm.setString(4, claim.getStatus());
        userStm.setFloat(5, claim.getAmount());
        
        userStm.executeUpdate();
    }
    
    public void addPayment(Payment payment) throws SQLException, ClassNotFoundException {
        Connection connection = null;
        
        Class.forName("com.mysql.jdbc.Driver");
        
        connection = DriverManager.getConnection("jdbc:mysql://localhost/xyz_assoc", "root", "");
        
        PreparedStatement paymentStm = connection.prepareStatement("INSERT INTO payments (mem_id,type_of_payment,amount,date) VALUES (?,?,?,?)");
        
        paymentStm.setString(1, payment.getMemberID());
        paymentStm.setString(2, payment.getPaymentType());
        paymentStm.setFloat(3, payment.getAmount());
        paymentStm.setDate(4, (Date) payment.getPaymentDate());
        
        paymentStm.executeUpdate();
    }
    
    public void updateClaimStatus(Claim claim, String status) throws ClassNotFoundException, SQLException {
        Connection connection = null;
        
        Class.forName("com.mysql.jdbc.Driver");
        
        connection = DriverManager.getConnection("jdbc:mysql://localhost/xyz_assoc", "root", "");
        
        int id = claim.getId();
        
        PreparedStatement claimStm = connection.prepareStatement("UPDATE claims SET status=? WHERE id=?");
        claimStm.setString(1, status);
        claimStm.setInt(2, id);
        
        claimStm.executeUpdate();
    }
}
