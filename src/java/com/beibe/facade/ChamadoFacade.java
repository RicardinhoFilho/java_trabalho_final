/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.beibe.facade;

import com.beibe.database.ConnectionDAO;
import com.beibe.database.DAO.DAOChamado;
import com.beibe.database.DAO.DAOResposta;
import com.beibe.model.Chamado;
import com.beibe.model.Resposta;
import com.beibe.utils.exceptions.DAOException;
import com.beibe.utils.exceptions.chamadosExceptions.AtualizarChamadoException;
import com.beibe.utils.exceptions.chamadosExceptions.CriarChamadoException;
import com.beibe.utils.exceptions.chamadosExceptions.CriarRespostaException;
import com.beibe.utils.exceptions.chamadosExceptions.ExcluirChamadoException;
import com.beibe.utils.exceptions.chamadosExceptions.ListarChamadosException;
import java.util.List;

/**
 *
 * @author eduar
 */
public class ChamadoFacade {
    
    public static void criarChamado(String nome) throws CriarChamadoException {
        /* TO DO
        try {
            DAOChamado dao = new DAOChamado(new ConnectionDAO().conectaDB());
            Chamado chamado = new Chamado();
            chamado.setNome(nome);
            dao.criar(chamado);

        } catch (DAOException e) {
            throw new CriarChamadoException("Erro ao criar categoria " + nome, e);
        }*/

    }

    public static void excluirChamado(Integer id) throws ExcluirChamadoException {
        try {
            DAOChamado dao = new DAOChamado(new ConnectionDAO().conectaDB());
            dao.excluir(id);

        } catch (DAOException e) {
            throw new ExcluirChamadoException("Erro ao excluir categoria id =" + id, e);
        }
    }
    
    public static void finalizarChamado(Integer id) throws AtualizarChamadoException {
        try {
            DAOChamado dao = new DAOChamado(new ConnectionDAO().conectaDB());
            dao.atualizar(id);

        } catch (DAOException e) {
            throw new AtualizarChamadoException("Erro ao finalizar chamado id =" + id, e);
        }
    }
    
    public static List<Chamado> listarChamados() throws ListarChamadosException {
        try {
            
            DAOChamado dao = new DAOChamado(new ConnectionDAO().conectaDB());
            return dao.listarTodos();

        } catch (DAOException e) {
            throw new ListarChamadosException("Erro ao listar os chamados ", e);
        }
    }

    public static List<Chamado> listarChamadosPorIdCliente(Integer id) throws ListarChamadosException {
        try {
            
            DAOChamado dao = new DAOChamado(new ConnectionDAO().conectaDB());
            return dao.listaMeusChamados(id);

        } catch (DAOException e) {
            throw new ListarChamadosException("Erro ao listar os chamados do cliente id = " + id, e);
        }
    }
    
    public static void criarResposta(Resposta resposta) throws CriarRespostaException{
        
        try {
            
            DAOResposta dao = new DAOResposta(new ConnectionDAO().conectaDB());
            dao.criar(resposta);

        }catch (DAOException e) {
            throw new CriarRespostaException("Erro ao criar a resposta id = " + resposta.getId(), e);
        }
        
    }
}
