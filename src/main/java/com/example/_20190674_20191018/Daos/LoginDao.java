package com.example._20190674_20191018.Daos;

import com.example._20190674_20191018.Beans.Usuario;

import java.sql.*;
import java.util.ArrayList;

public class LoginDao extends DaoBase{
    public Usuario validar(String correo, String password){
        Usuario usuario = new Usuario();
        String sql = "SELECT * FROM usuario WHERE correoPucp =? AND contrasenha=sha2(?,256)";

        try (Connection conn = this.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql);) {

            pstmt.setString(1,correo);
            pstmt.setString(2,password);
            try(ResultSet rs = pstmt.executeQuery()){
                if(rs.next()){
                    usuario.setCodigoPUCP(rs.getInt(1));
                    usuario.setCorreoPucp(rs.getString(5));
                    usuario.setEspecialidad(rs.getString(6));
                }
            }


        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return usuario;
    }

    public Usuario obtenerUsuario(int idCodigo) {

        Usuario usuario = null;

        String sql = "SELECT * FROM usuario  WHERE codigoPucp = ?";

        try (Connection conn = this.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql);) {

            pstmt.setInt(1, idCodigo);

            try (ResultSet rs = pstmt.executeQuery();) {

                if (rs.next()) {
                    usuario = new Usuario();
                    usuario.setCodigoPUCP(rs.getInt(1));
                    usuario.setNombre(rs.getString(2));
                    usuario.setApellido(rs.getString(3));
                    usuario.setEdad(rs.getInt(4));
                    usuario.setCorreoPucp(rs.getString(5));
                    usuario.setEspecialidad(rs.getString(6));
                    usuario.setContrasenia(rs.getString(7));

                }
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }

        return usuario;
    }

    public int existeEmail(String email){
        int existe= 0;
        String sql="SELECT * FROM usuario WHERE correoPucp = ?";
        System.out.println("llega");
        try(Connection conn=this.getConnection();
            PreparedStatement pstmt= conn.prepareStatement(sql)){
            pstmt.setString(1, email);
            try(ResultSet rs= pstmt.executeQuery()){
                if(rs.next()){
                    existe=1;
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return existe;
    }






    public int tiene_numeros(String texto){
        var numeros="0123456789";
        for(int i=0; i<texto.length(); i++){
            if (numeros.indexOf(texto.charAt(i),0)!=-1){
                return 1;
            }
        }
        return 0;
    }

    public int validar_edad(int edad){
        if(edad>17 && edad<30){
            return 1;
        }
        else {
            return 0;
        }

    }

    public int validarContrasena (String Password){
        int length = 0;                     // Almacenamos numero de caracteres en el pass
        int numCount = 0;                   // Variable usada para almacenar numeros en el password
        int capCount = 0;                   // Variable usada para almacenar mayusculas en el password
        int capSignos = 0;                  // Variable usada para almacenar los signos
        int Arroba = 0;                     // solo la arroba -.-!
        for (int x = 0; x < Password.length(); x++) {
            if ((Password.charAt(x) >= 47 && Password.charAt(x) <= 58) //numeros
                    || (Password.charAt(x) >= 64 && Password.charAt(x) <= 91) //mayusculas
                    || (Password.charAt(x) >= 63 && Password.charAt(x) <= 65) //Arroba
                    || (Password.charAt(x) >= 32 && Password.charAt(x) <= 44) //signos
                    || (Password.charAt(x) >= 97 && Password.charAt(x) <= 122)) {  //minusculas

            }
            if ((Password.charAt(x) > 57 && Password.charAt(x) < 65)) { // Cuenta laS arrobas
                Arroba++;
            }
            if ((Password.charAt(x) > 32 && Password.charAt(x) < 48)) { // Cuenta la cantidad signos
                capSignos++;
            }
            if ((Password.charAt(x) > 47 && Password.charAt(x) < 58)) { // Cuenta la cantidad de numero
                numCount++;
            }

            if ((Password.charAt(x) > 64 && Password.charAt(x) < 91)) { // Cuenta la cantidad de mayuscula
                capCount++;
            }

            length = (x + 1); // Cuenta la longitud del password
        }

        boolean condicion1= capSignos>0 ||Arroba>0;
        boolean condicion =numCount>0 && capCount>0;


        if(capSignos>0 ||Arroba>0){
            if(numCount>0 && capCount>0){
                return 1;

            }
            else{
                return 0;
            }

        }else{
            return 0;

        }
    }





    public void crearUsuario(String nombre,String apellido, int edad, String correoPucp, String contrasenia, int codigoPUCP, String especialidad) throws SQLException {
        String sql= "INSERT INTO usuario (codigoPucp, nombre, apellido, edad, correoPucp, especialidad, contrasenha) " +
                "values (?,?, ?, ?, ?, ?, sha2(?,256));";
        Connection conn= this.getConnection();
        PreparedStatement pstmt= conn.prepareStatement(sql);
        pstmt.setInt(1,codigoPUCP);
        pstmt.setString(2,nombre);
        pstmt.setString(3, apellido);
        pstmt.setInt(4,edad);
        pstmt.setString(5,correoPucp);
        pstmt.setString(6,especialidad);
        pstmt.setString(7,contrasenia);

        pstmt.executeUpdate();
    }




}
