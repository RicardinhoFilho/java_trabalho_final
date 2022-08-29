/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.beibe.database.DAO;

import com.beibe.database.ConnectionDAO;
import com.beibe.database.IChamadoDAO;
import com.beibe.model.Chamado;
import com.beibe.model.Cliente;
import java.lang.reflect.Array;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author User
 */
public class DAOChamado implements IChamadoDAO {

    Connection conn = null;

    public DAOChamado(Connection conn) {
        this.conn = conn;
    }

    @Override
    public void novo(Chamado vo) {

        try {
            PreparedStatement st = conn.prepareStatement("insert into chamado (titulo,texto, cliente_id, finalizado)values(?,?,?,?)"
                    + "values(?, ?, ?,?,?)");
            st.setString(1, vo.getTitulo());
            st.setString(2, vo.getTexto());
            st.setInt(3, vo.getCliente().getId());
            st.setBoolean(4, vo.getFinalizado());
            st.execute();
        } catch (Exception e) {
            System.out.println(e);
        }
    }

    @Override
    public Chamado buscar(int id) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public List<Chamado> listaTodos() {

        List<Chamado> chamados = new ArrayList<Chamado>();
        try {

            ResultSet rs = (conn.createStatement().executeQuery("select * from chamado inner join cliente on cliente_id = cliente.id"));
            while (rs.next()) {

                Chamado chamado = new Chamado();
                Cliente cliente = new Cliente();
                chamado.setId(rs.getInt("id"));
                chamado.setTitulo(rs.getString("titulo"));
                chamado.setTexto(rs.getString("texto"));
                chamado.setFinalizado(rs.getBoolean("finalizado"));
                chamado.setCriacao(rs.getDate("criacao"));
                cliente.setId(rs.getInt("cliente_id"));
                cliente.setNome(rs.getString("nome"));
                cliente.setSobrenome(rs.getString("sobrenome"));
                cliente.setEmail(rs.getString("email"));

                chamado.setCliente(cliente);
                DAOResposta daoResposta = new DAOResposta(new ConnectionDAO().conectaDB());

                chamado.setRepostas(daoResposta.listaTodosPorChamado(chamado.getId()));

                chamados.add(chamado);

            }

        } catch (Exception e) {
            System.out.println(e);

        }
        return chamados;

    }

}
