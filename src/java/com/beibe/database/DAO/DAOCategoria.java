/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.beibe.database.DAO;

import com.beibe.database.ConnectionDAO;
import com.beibe.database.ICategoriaDAO;
import com.beibe.model.Categoria;
import com.beibe.model.Chamado;
import com.beibe.model.Cliente;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author User
 */
public class DAOCategoria implements ICategoriaDAO {

    Connection conn = null;

    public DAOCategoria(Connection conn) {
        this.conn = conn;
    }

    @Override
    public void novo(Categoria vo) {
        try {
            PreparedStatement st = conn.prepareStatement("insert into categorias (nome)values(?);");

            st.setString(1, vo.getNome());
            st.execute();
        } catch (Exception e) {
            System.out.println(e);
        }
    }
    
     
    public void editar(Categoria vo) {
        try {
            PreparedStatement st = conn.prepareStatement("update  categorias set nome = ? where id = ? ;");

            st.setString(1, vo.getNome());
             st.setInt(2, vo.getId());
            st.execute();
        } catch (Exception e) {
            System.out.println(e);
        }
    }


    @Override
    public Categoria buscar(int id) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    public void excluir(int id) {
        try {
            PreparedStatement st = conn.prepareStatement("delete from categorias where id = ?;");

            st.setInt(1, id);
            st.execute();
        } catch (Exception e) {
            System.out.println(e);
        }
        
    }

    @Override
    public List<Categoria> listaTodos() {
        List<Categoria> categorias = new ArrayList<Categoria>();
        try {

            ResultSet rs = (conn.createStatement().executeQuery("select * from categorias"));
            while (rs.next()) {

                Categoria categoria = new Categoria();

                categoria.setId(rs.getInt("id"));
                categoria.setNome(rs.getString("nome"));
                categoria.setCreated_at(rs.getDate("created_at"));

                categorias.add(categoria);

            }

        } catch (Exception e) {
            System.out.println(e);

        }
        return categorias;

    }

}
