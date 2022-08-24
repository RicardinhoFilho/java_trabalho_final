/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.beibe.database.DAO;

import com.beibe.database.IProdutoDAO;
import com.beibe.model.Produto;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.text.SimpleDateFormat;
import java.util.List;
import java.sql.ResultSet;
import java.util.ArrayList;
import utils.SqlUtils;

/**
 *
 * @author User
 */
public class DAOProduto implements IProdutoDAO {

    Connection conn = null;

    public DAOProduto(Connection conn) {
        this.conn = conn;
    }

    @Override
    public void novo(Produto vo) {

        try {
            PreparedStatement st = conn.prepareStatement("Insert into produto( nome, preco, validade, saldo) "
                    + "values(?, ?, ?,?)");
            st.setString(1, vo.getNome());
            st.setDouble(2, vo.getPreco());
            st.setDate(3, SqlUtils.convert(vo.getValidade()));
            st.setInt(4, vo.getSaldo());
            st.execute();
        } catch (Exception e) {
            System.out.println(e);
        }

    }

    @Override
    public Produto buscar(int id) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public List<Produto> listaTodos() {
        List<Produto> produtos = new ArrayList<Produto>();
        try {

            ResultSet rs = (conn.createStatement().executeQuery("select * from produto"));
            while (rs.next()) {

                Produto produto = new Produto();
                produto.setId(rs.getInt("id"));
                produto.setNome(rs.getString("nome"));
                produto.setPreco(rs.getDouble("preco"));
                produto.setPreco(rs.getDouble("preco"));
                produto.setData_criacao(rs.getDate("data_criacao"));
                produto.setValidade(rs.getDate("validade"));
                produto.setSaldo(rs.getInt("saldo"));
                System.out.println(produto.getNome());
                produtos.add(produto);
            }

        } catch (Exception e) {
            System.out.println(e);

        }
        return produtos;
    }

    public void excluirProduto(Integer id) {

        try {
            PreparedStatement st = conn.prepareStatement("delete from produto where id = ?");
            st.setInt(1, id);
            st.execute();
        } catch (Exception e) {
            System.out.println(e);
        }

    }
}
