/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.beibe.database.DAO;

import com.beibe.database.IFuncionarioDAO;
import com.beibe.model.Funcionario;
import java.util.List;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.sql.Statement;

/**
 *
 * @author User
 */
public class DAOFuncionario implements IFuncionarioDAO {

    Connection conn = null;

    public DAOFuncionario(Connection conn) {
        this.conn = conn;
    }

    public void novo(Funcionario vo) {

        try {
            PreparedStatement st = conn.prepareStatement("Insert into FUNCIONARIO( nome, sobrenome, email, senha, admin) "
                    + "values(?, ?, ?,?,?)");
            st.setString(1, vo.getNome());
            st.setString(2, vo.getSobrenome());
            st.setString(3, vo.getEmail());
            st.setString(3, vo.getSenha());
            st.setBoolean(3, vo.isAdmin());
            st.execute();
        } catch (Exception e) {
            System.out.println(e);
        }

    }

    public Funcionario buscar(int id) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }
    
    public Funcionario buscaPorEmail(String email) {
         Funcionario funcionario = new Funcionario();
         System.out.println(email + " CHEGOU AQUI");
        try{
           
              PreparedStatement st = conn.prepareStatement("select * from  FUNCIONARIO  where email = ?");
           st.setString(1, email);
           ResultSet rs = st.executeQuery();
      System.out.println( rs);
             while (rs.next()) {
                 System.out.println( " CHEGOU AQUI no while");
                   System.out.println(   rs.getString("nome"));
              
                funcionario.setId(rs.getInt("id"));
                funcionario.setNome(rs.getString("nome"));
                funcionario.setSobrenome(rs.getString("sobrenome"));
                funcionario.setEmail(rs.getString("email"));
                funcionario.setSenha(rs.getString("senha"));
                funcionario.setAdmin(rs.getBoolean("admin"));
                
             }
             
        }catch(Exception e){
            System.out.println(e);
        }
        return funcionario;
    }

    public List<Funcionario> listaTodos() {
        List<Funcionario> funcionarios = new ArrayList<Funcionario>();
        try {
            Statement st = conn.createStatement();

            ResultSet rs = (st.executeQuery("select * from funcionario"));

            while (rs.next()) {
                Funcionario funcionario = new Funcionario();
                funcionario.setId(rs.getInt("id"));
                funcionario.setNome(rs.getString("nome"));
                funcionario.setSobrenome(rs.getString("sobrenome"));
                funcionario.setEmail(rs.getString("email"));
                funcionario.setSenha(rs.getString("senha"));
                funcionario.setAdmin(rs.getBoolean("admin"));

                funcionarios.add(funcionario);
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return funcionarios;
    }

}
