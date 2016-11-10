/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author amaka
 */
public class Payments {
    private String memberID;
    private String PaymentType;
    private float Amount;
    private String Date;
    
     public Payments(String memberID, String PaymentType, String Date, float Amount) {
        this.memberID = memberID;
        this.PaymentType = PaymentType;
        this.Date = Date;
        this.Amount = Amount;
    }

    


    public String getMemberID() {
        return memberID;
    }

    public void setMemberID(String memberID) {
        this.memberID = memberID;
    }

    public String getPaymentType() {
        return PaymentType;
    }

    public void setPaymentType(String PaymentType) {
        this.PaymentType = PaymentType;
    }

    public float getAmount() {
        return Amount;
    }

    public void setAmount(float Amount) {
        this.Amount = Amount;
    }

    public String getDate() {
        return Date;
    }

    public void setDate(String Date) {
        this.Date = Date;
    }
  
    
}
