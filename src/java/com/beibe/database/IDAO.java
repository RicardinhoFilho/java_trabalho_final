/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package com.beibe.database;

/**
 *
 * @author User
 */
public interface IDAO<T> {
      public void novo(T vo);


    public T buscar(int id);

    public java.util.List<T> listaTodos();
}
