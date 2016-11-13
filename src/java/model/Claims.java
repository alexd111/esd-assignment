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
public class Claims {

    private String memberID;
    private String Date;
    private String Rationale;
    private String Status;
    private float Amount;

    public Claims(String memberID, String Rationale, String Date, float Amount, String Status) {
        this.memberID = memberID;
        this.Rationale = Rationale;
        this.Date = Date;
        this.Amount = Amount;
        this.Status = Status;
    }

    public String getMemberID() {
        return memberID;
    }

    public void setMemberID(String memberID) {
        this.memberID = memberID;
    }

    public String getDate() {
        return Date;
    }

    public void setDate(String date) {
        this.Date = date;
    }

    public String getRationale() {
        return Rationale;
    }

    public void setRationale(String rationale) {
        this.Rationale = rationale;
    }

    public String getStatus() {
        return Status;
    }

    public void setStatus(String Status) {
        this.Status = Status;
    }

    public float getAmount() {
        return Amount;
    }

    public void setAmount(float Amount) {
        this.Amount = Amount;
    }

}
