/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.util.Date;

/**
 *
 * @author admin
 */
public class Bill {
    int bill_id;
    int user_id;
    Float total;
    String address;
    Date date;
    int phone;

    public Bill() {
    }

    public Bill(int bill_id, int user_id, Float total, String address, Date date, int phone) {
        this.bill_id = bill_id;
        this.user_id = user_id;
        this.total = total;
        this.address = address;
        this.date = date;
        this.phone = phone;
    }

    
    
    public Bill(int bill_id,Float total,Date date) {
        this.bill_id = bill_id;
        this.total = total;
        this.date = date;
    }
    
    public Bill(int bill_id, Float total, String address, Date date, int phone) {
        this.bill_id = bill_id;
        this.total = total;
        this.address = address;
        this.date = date;
        this.phone = phone;
    }



    public int getBill_id() {
        return bill_id;
    }

    public void setBill_id(int bill_id) {
        this.bill_id = bill_id;
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public Float getTotal() {
        return total;
    }

    public void setTotal(Float total) {
        this.total = total;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public int getPhone() {
        return phone;
    }

    public void setPhone(int phone) {
        this.phone = phone;
    }
}
