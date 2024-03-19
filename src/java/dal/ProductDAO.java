/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.Product;
import model.ProductImage;

/**
 *
 * @author admin
 */
public class ProductDAO extends DBContext{
    public List<Product> getAllProduct() {
        List<Product> list = new ArrayList<>();
//        String sql = "select c.category_name , p.product_id , p.product_name, p.product_price, p.product_describe, p.quantity,p.img from  \n"
//                + "product p inner join category c on p.category_id = c.category_id";
        String sql = "select * from product";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {

                list.add(new Product(rs.getInt(1), rs.getString(3), rs.getFloat(4), rs.getString(5), rs.getInt(6), rs.getString(7)));
            }

        } catch (Exception e) {
            System.out.println(e);
        }
        return list;
    }

    public List<Product> getListByPage(int index) {
        List<Product> list = new ArrayList<>();
        String sql = "select * from product order by product_id offset ? rows fetch next 8 rows only";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, (index - 1) * 3);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {

                list.add(new Product(rs.getInt(1), rs.getString(3), rs.getFloat(4), rs.getString(5), rs.getInt(6), rs.getString(7)));
            }

        } catch (Exception e) {
            System.out.println(e);
        }
        return list;
    }

    public List<Product> getProductByCategory(String cid) {
        List<Product> list = new ArrayList<>();
        String sql = "select * from product where category_id=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, cid);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
//                Category c = new Category(rs.getString(2));
                list.add(new Product(rs.getInt(1), rs.getString(3), rs.getFloat(4), rs.getString(5), rs.getInt(6), rs.getString(7)));
            }

        } catch (Exception e) {
            System.out.println(e);
        }
        return list;
    }

    public Product getProductById(int id) {

        String sql = "select * from product where product_id=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {

                return new Product(id, rs.getString(3), rs.getFloat(4), rs.getString(5), rs.getInt(6), rs.getString(7));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public List<Product> SearchProductByName(String txtSearch) {
        List<Product> list = new ArrayList<>();
        String sql = "select * from product\n"
                + "where product_name like ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, "%" + txtSearch + "%");
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
//                Category c = new Category(rs.getString(2));
                list.add(new Product(rs.getInt(1), rs.getString(3), rs.getFloat(4), rs.getString(5), rs.getInt(6), rs.getString(7)));
            }

        } catch (Exception e) {
            System.out.println(e);
        }
        return list;
    }
    
    public List<ProductImage> getProductImage(int pid) {
        List<ProductImage> list = new ArrayList<>();
        String sql = "select * from product_image where product_id=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, pid);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                list.add(new ProductImage(rs.getInt(1), rs.getString(2)));
            }

        } catch (Exception e) {
            System.out.println(e);
        }
        return list;

    }
    
    public void insertProduct( String category, String name, String price,
            String describe, String quantity, String image) {
        String sql = "insert into product values (?,?,?,?,?,?)";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            
            st.setString(2, category);
            st.setString(3, name);
            st.setString(4, price);
            st.setString(5, describe);
            st.setString(6, quantity);
            st.setString(7, image);
            st.executeUpdate();
        } catch (SQLException e) {

        }

    }
    
    public void deleteProduct(String pid) {
        String sql = "delete from product where product_id=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, pid);
            st.executeUpdate();
        } catch (SQLException e) {

        }
    }
}
