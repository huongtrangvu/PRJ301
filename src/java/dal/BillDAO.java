/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
import model.Bill;
import model.BillDetail;
import model.Cart;
import model.Item;
import model.User;

/**
 *
 * @author admin
 */
public class BillDAO extends DBContext{
     public List<Bill> getAllBill() {
        List<Bill> list = new ArrayList<>();
        String sql = "select * from bill";

        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {

                list.add(new Bill(rs.getInt(1), rs.getInt(2), rs.getFloat(3), rs.getString(4), rs.getDate(5), rs.getInt(6)));
            }

        } catch (Exception e) {
            System.out.println(e);
        }
        return list;
    }

    public List<BillDetail> getBillDetail(int bid) {
        List<BillDetail> list = new ArrayList<>();
        String sql = "select * from bill_detail where bill_id=?";

        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, bid);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                list.add(new BillDetail(rs.getInt(1), rs.getInt(2), rs.getInt(3), rs.getInt(4), rs.getString(5), rs.getFloat(6)));
            }

        } catch (Exception e) {
            System.out.println(e);
        }
        return list;
    }
    
    public void addBill(User c, Cart cart, String address, String phone) {
        LocalDate curDate=LocalDate.now();
        String date=curDate.toString();
        try {
            //add order
            String sql="insert into [bill] values(?,?,?,?,?)";
            PreparedStatement st=connection.prepareStatement(sql);
            st.setInt(1, c.getUser_id());
           
            st.setFloat(2, cart.getTotalMoney());
             st.setString(3, address);
             st.setString(4, date);
             st.setString(5, phone);
            st.executeUpdate();
            //lay id cua order vua add
            String sql1="select top 1 bill_id from [bill] order by bill_id desc";
            PreparedStatement st1=connection.prepareStatement(sql1);
            ResultSet rs=st1.executeQuery();
            //add bang orderdetail
            if(rs.next()) {
                int oid=rs.getInt(1);
                for(Item i:cart.getItems()){
                    String sql2="insert into Bill_detail values(?,?,?,?,?) ";
                    PreparedStatement st2=connection.prepareStatement(sql2);
                    st2.setInt(1, oid);
                    st2.setInt(2, i.getProduct().getProduct_id());
                    st2.setInt(3, i.getQuantity());
                    st2.setString(4, i.getSize());
                    st2.setFloat(5, i.getPrice());
                    st2.executeUpdate();
                }
            }
            //cap nhat lai so luong sp
            String sql3="update product set quantity=quantity-? where product_id=?";
            PreparedStatement st3=connection.prepareStatement(sql3);
            for(Item i:cart.getItems()) {
                st3.setInt(1, i.getQuantity());
                st3.setInt(2, i.getProduct().getProduct_id());
                st3.executeUpdate();
            }
        }
        catch(SQLException e){
            
        }
    }
    
     
    

}
