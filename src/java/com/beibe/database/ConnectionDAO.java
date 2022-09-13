/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.beibe.database;

import com.beibe.utils.exceptions.DAOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author User
 */
public class ConnectionDAO {

    public Connection conectaDB() throws DAOException {
        Connection conn = null;

        try {
            //String url = "jdbc:mysql://localhost:3306/trabalho_lpoo2?user=root&password=root&useSSL=true";
            Class.forName("com.mysql.cj.jdbc.Driver");
            /* Aqui registra */
            String url = "jdbc:mysql://localhost:3306/beibe?user=root&password=root&useSSL=false";
            conn = DriverManager.getConnection(url);
        } catch (SQLException e) {
            e.printStackTrace();
            throw new DAOException(e);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
            throw new DAOException(e);
        }
        return conn;
    }

}
