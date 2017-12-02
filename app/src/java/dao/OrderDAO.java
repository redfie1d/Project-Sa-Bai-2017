/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import model.Order;

/**
 *
 * @author Kwtam
 */
public class OrderDAO { 
    public static void updateInventory(String pVillage, int pNo) {
        Connection conn = null;
        ResultSet rs = null;
        PreparedStatement stmt = null;

        try {
            conn = ConnectionManager.getConnection();
            stmt = conn.prepareStatement("select * from patients where id = ? and village_prefix = ?");
            stmt.setInt(1, pNo);
            stmt.setString(2, pVillage);
            rs = stmt.executeQuery();

            ArrayList<Integer> allergies = new ArrayList<>();
            if (rs.next()) {
                String village = rs.getString("village_prefix");
                int patientId = rs.getInt("id");
                String name = rs.getString("name");
                String gender = rs.getString("gender");
                int birthYear = rs.getInt("year_of_birth");
                int parentId = rs.getInt("parent");
                String allergy = rs.getString("drug_allergy");

//                allergies.add(allergy);
//                while (rs.next()) {
//                    allergy = rs.getInt(7);
//                    allergies.add(allergy);
//                }
//                Patient p = new Patient(village, patientId, name, gender, birthYear, parentId, allergy);
//                p.setPhotoImage(rs.getString("image"));
//                return p;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            ConnectionManager.close(conn, stmt, rs);
        }
//        return null;
    }
    
    public static boolean placeOrder(int patientID) {
        Connection conn = null;
        ResultSet rs = null;
        PreparedStatement stmt = null;
        
        try {
            conn = ConnectionManager.getConnection();
            stmt = conn.prepareStatement("INSERT INTO orders values(NULL,'Pris',?,'PENDING')");
            stmt.setInt(1, patientID);
            stmt.executeUpdate();
            
            return true;
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            ConnectionManager.close(conn, stmt, rs);
        }
        return false;
    }
    
    public static boolean addOrders(int orderID, Order order) {
        Connection conn = null;
        ResultSet rs = null;
        PreparedStatement stmt = null;
        
        try {
            conn = ConnectionManager.getConnection();
            
            stmt = conn.prepareStatement("INSERT INTO orderlist values(?,?,?,?,?)");
            stmt.setInt(1, orderID);
            stmt.setString(2, order.getMedicine());
            stmt.setInt(3, order.getQuantity());
            stmt.setString(4, order.getNotes());
            stmt.setString(5, order.getRemarks());
            stmt.executeUpdate();
            return true;
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            ConnectionManager.close(conn, stmt, rs);
        }
        return false;
    }

    
    public static void removeOrder(int orderID){
        Connection conn = null;
        PreparedStatement stmt = null;
        
        try {
            conn = ConnectionManager.getConnection();
            stmt = conn.prepareStatement("delete from orders where order_id = ?");
            stmt.setInt(1, orderID);
            stmt.executeUpdate();
        } catch(SQLException e){
            e.printStackTrace();
        }
    }
    
    public static int getOrderID(){
        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;

        try {
            conn = ConnectionManager.getConnection();
            stmt = conn.prepareStatement("SELECT AUTO_INCREMENT FROM  INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA = 'sabai' AND   TABLE_NAME= 'orders';");
            rs = stmt.executeQuery();

            if (rs.next()) {
                System.out.println("Returning rs.next");
                return rs.getInt("AUTO_INCREMENT");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            ConnectionManager.close(conn, stmt, rs);
        }
        System.out.println("Returning 0");
        return 0;
    }
    
    public static ArrayList<Order> getOrders(){
        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        ArrayList<Order> orderList = new ArrayList<Order>();

        try {
            conn = ConnectionManager.getConnection();
            stmt = conn.prepareStatement("SELECT o.order_id, doctor, patient_id, medicine_name, quantity, notes, remarks FROM orders o INNER JOIN orderlist ol ON o.order_id = ol.order_id WHERE status = 'PENDING';");
            rs = stmt.executeQuery();

            while (rs.next()) {
                int orderID = rs.getInt("order_id");
                String doctor = rs.getString("doctor");
                int patient_id = rs.getInt("patient_id");
                String medicine_name = rs.getString("medicine_name");
                int quantity = rs.getInt("quantity");
                String notes = rs.getString("notes");
                String remarks = rs.getString("remarks");
                orderList.add(new Order(orderID, doctor, patient_id, medicine_name, quantity, notes, remarks));
            }
            
            return orderList;
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            ConnectionManager.close(conn, stmt, rs);
        }
        return orderList;
    }
    
    public static ArrayList<Order> getOrdersByOrderID(int orderID){
        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        ArrayList<Order> orderList = new ArrayList<Order>();

        try {
            conn = ConnectionManager.getConnection();
            stmt = conn.prepareStatement("SELECT o.order_id, doctor, patient_id, medicine_name, quantity, notes, remarks FROM orders o INNER JOIN orderlist ol ON o.order_id = ol.order_id WHERE o.order_id = ?");
            stmt.setInt(1, orderID);
            rs = stmt.executeQuery();

            while (rs.next()) {
                rs.getInt("order_id");
                String doctor = rs.getString("doctor");
                int patient_id = Integer.parseInt(rs.getString("patient_id"));
                String medicine_name = rs.getString("medicine_name");
                int quantity = rs.getInt("quantity");
                String notes = rs.getString("notes");
                String remarks = rs.getString("remarks");
                orderList.add(new Order(orderID, doctor, patient_id, medicine_name, quantity, notes, remarks));
            }
            
            return orderList;
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            ConnectionManager.close(conn, stmt, rs);
        }
        return orderList;
    }
}
