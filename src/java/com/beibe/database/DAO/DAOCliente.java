/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.beibe.database.DAO;

import com.beibe.database.IClienteDAO;
import com.beibe.model.Cliente;
import com.beibe.model.Funcionario;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;

/**
 *
 * @author User
 */
public class DAOCliente implements IClienteDAO{
    
    Connection conn = null;

    public DAOCliente(Connection conn) {
        this.conn = conn;
    }

     public Cliente buscaPorEmail(String email) {
         Cliente cliente = new Cliente();
         System.out.println(email + " CHEGOU AQUI");
        try{
           
              PreparedStatement st = conn.prepareStatement("select * from  cliente  where email = ?");
           st.setString(1, email);
           ResultSet rs = st.executeQuery();
      System.out.println( rs);
             while (rs.next()) {
                 System.out.println( " CHEGOU AQUI no while");
                   System.out.println(   rs.getString("nome"));
              
                cliente.setId(rs.getInt("id"));
                cliente.setNome(rs.getString("nome"));
                cliente.setSobrenome(rs.getString("sobrenome"));
                cliente.setEmail(rs.getString("email"));
                cliente.setSenha(rs.getString("senha"));
                
             }
             
        }catch(Exception e){
            System.out.println(e);
        }
        return cliente;
               
    }
    @Override
    public void novo(Object vo) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public Object buscar(int id) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public List listaTodos() {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }
    
}