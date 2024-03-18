/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import model.Bill;
import model.BillDetail;

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

}
