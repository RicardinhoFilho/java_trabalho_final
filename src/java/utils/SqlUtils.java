/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package utils;

/**
 *
 * @author User
 */
public class SqlUtils {
    
    
      public static java.sql.Date convert(java.util.Date date) {
        return new java.sql.Date(date.getTime());
    }
    
}
