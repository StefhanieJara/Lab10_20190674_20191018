package com.example._20190674_20191018.Daos;

import com.example._20190674_20191018.Beans.Usuario;

import java.sql.*;

public class LoginDao extends DaoBase{
    public Usuario validar(String correo, String password){
        Usuario usuario = null;
        String sql = "SELECT * FROM usuario WHERE correoPucp =? AND contrasenha=sha2(?,256)";

        try (Connection conn = this.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql);) {

            pstmt.setString(1,correo);
            pstmt.setString(2,password);
            try(ResultSet rs = pstmt.executeQuery()){
                if(rs.next()){
                    usuario = new Usuario();
                    usuario.setCodigoPUCP(Integer.valueOf(rs.getString(1)));
                    usuario.setCorreoPucp(rs.getString(5));
                    usuario.setEspecialidad(rs.getString(6));
                }
            }


        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return usuario;
    }
}
