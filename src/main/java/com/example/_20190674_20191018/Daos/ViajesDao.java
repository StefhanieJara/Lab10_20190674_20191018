package com.example._20190674_20191018.Daos;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class ViajesDao extends DaoBase{
    public void crearViaje(String fechaReserva, String fechaViaje, String ciudadOrigen, String ciudadDestino, int empresaSeguro, int numeroBoletos, Float costoTotal, int codigoPucp){
        String idviajes="";
        String[] nums = {"0","1","2","3","4","5","6","7","8","9"};
        for (int i = 0; i < 8; i++ ) {
            idviajes += nums[(int) Math.round(Math.random() * 9)];
        }

        String sql = "INSERT INTO viajes (idviajes, fechaReserva, fechaViaje, ciudadOrigen, ciudadDestino, empresaSeguro, numeroBoletos, costoTotal, codigoPucp)\n" +
                "VALUES (?,?,?,?,?,?,?,?,?),";

        try (Connection conn = this.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql)) {

            pstmt.setString(1, idviajes);
            pstmt.setString(2, fechaReserva);
            pstmt.setString(3, fechaViaje);
            pstmt.setString(4, ciudadOrigen);
            pstmt.setString(5, ciudadDestino);
            pstmt.setInt(6, empresaSeguro);
            pstmt.setInt(7, numeroBoletos);
            pstmt.setFloat(8, costoTotal);
            pstmt.setString(9, Integer.toString(codigoPucp));
            pstmt.executeUpdate();

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}
