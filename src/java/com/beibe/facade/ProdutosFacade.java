/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.beibe.facade;

import com.beibe.database.ConnectionDAO;
import com.beibe.model.Produto;
import com.beibe.database.DAO.DAOProduto;
import com.beibe.utils.exceptions.DAOException;
import java.util.List;

/**
 *
 * @author eduar
 */
public class ProdutosFacade {
    
    public List<Produto> listarProdutos() throws DAOException{
         DAOProduto dao = new DAOProduto(new ConnectionDAO().conectaDB());

            
            return dao.listarTodos();
    }
   
    
}
