/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package com.beibe.database;

import com.beibe.model.Chamado;

/**
 *
 * @author User
 */
public interface IChamadoDAO extends IDAO<Chamado> {
    
    public void finaliza(Integer id);
    
}
