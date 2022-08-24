/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package com.beibe.database;

import com.beibe.model.Funcionario;

/**
 *
 * @author User
 */
public interface IFuncionarioDAO extends IDAO<Funcionario> {

    Funcionario buscaPorEmail(String email);

}
