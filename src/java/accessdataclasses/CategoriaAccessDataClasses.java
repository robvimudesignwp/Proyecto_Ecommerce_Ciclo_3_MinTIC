/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package accessdataclasses;

import JavaBeans.Categoria;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author rober
 */
public class CategoriaAccessDataClasses {
    public static ArrayList<Categoria> listar(){
        try {
            String sql="{call sp_listarCategoriaSuperior()}";
            Connection c = Conexion.conectar();
            CallableStatement sentencia =(CallableStatement) c.prepareCall(sql);
            ResultSet resultado = sentencia.executeQuery();
            ArrayList<Categoria> lista = new ArrayList<>();
            while(resultado.next()){
                Categoria ctgr = new Categoria();
                ctgr.setCodigo(resultado.getInt("codigo"));
                ctgr.setNombre(resultado.getString("nombre"));
                lista.add(ctgr);
            }
            return lista;
        } catch (SQLException ex) {
            return null;
        }
        
    }
    
    public static ArrayList<Categoria> listarSubCategoria(int ctgrSuperior){
        try {
            String sql="{call sp_listarSubCategoria(?)}";
            Connection c = Conexion.conectar();
            CallableStatement sentencia =(CallableStatement) c.prepareCall(sql);
            sentencia.setInt(1, ctgrSuperior);
            ResultSet resultado = sentencia.executeQuery();
            ArrayList<Categoria> lista = new ArrayList<>();
            while(resultado.next()){
                Categoria ctgr = new Categoria();
                ctgr.setCodigo(resultado.getInt("codigo"));
                ctgr.setNombre(resultado.getString("nombre"));
                lista.add(ctgr);
            }
            return lista;
        } catch (SQLException ex) {
            return null;
        }
        
    }
}
