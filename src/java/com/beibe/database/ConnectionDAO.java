/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.beibe.database;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author User
 */
public class ConnectionDAO {
    
      public  Connection conectaDB(){
        Connection conn = null;
        
        try{
            //String url = "jdbc:mysql://localhost:3306/trabalho_lpoo2?user=root&password=root&useSSL=true";
            Class.forName("com.mysql.jdbc.Driver"); /* Aqui registra */
            String url = "jdbc:mysql://localhost:3306/beibe?user=root&password=teste&useSSL=false";
            conn = DriverManager.getConnection(url);
        }catch(SQLException error){
          System.out.println(error);
        } catch (ClassNotFoundException ex) {
              Logger.getLogger(ConnectionDAO.class.getName()).log(Level.SEVERE, null, ex);
          }
        return conn;   
    }
    
}
