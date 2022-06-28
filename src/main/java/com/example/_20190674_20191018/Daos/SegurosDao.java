package com.example._20190674_20191018.Daos;

import com.example._20190674_20191018.Beans.Seguros;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class SegurosDao extends DaoBase{

    public ArrayList<Seguros> listarSeguros() {

        ArrayList<Seguros> listaSeguros = new ArrayList<>();

        String sql = "select * from seguros";

        try (Connection conn = this.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql)) {
;
            try (ResultSet rs = pstmt.executeQuery()) {
                while (rs.next()) {
                    Seguros seguros = new Seguros();
                    seguros.setIdSeguro(rs.getInt(1));
                    seguros.setNombre(rs.getString(2));
                    listaSeguros.add(seguros);
                }

            } catch (SQLException e) {
                System.out.println("No se pudo realizar la busqueda");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return listaSeguros;

    }
}
