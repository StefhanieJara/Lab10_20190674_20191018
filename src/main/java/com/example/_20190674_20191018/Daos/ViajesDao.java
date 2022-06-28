package com.example._20190674_20191018.Daos;

import com.example._20190674_20191018.Beans.Viaje;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class ViajesDao extends DaoBase{
    public void crearViaje(String fechaReserva, String fechaViaje, String ciudadOrigen, String ciudadDestino, int empresaSeguro, int numeroBoletos, Float costoTotal, int codigoPucp){
        String idviajes="";
        String[] nums = {"0","1","2","3","4","5","6","7","8","9"};
        for (int i = 0; i < 8; i++ ) {
            idviajes += nums[(int) Math.round(Math.random() * 9)];
        }

        String sql = "INSERT INTO viajes (idviajes, fechaReserva, fechaViaje, ciudadOrigen, ciudadDestino, empresaSeguro, numeroBoletos, costoTotal, codigoPucp) \n" +
                "VALUES (?,\n" +
                "?,\n" +
                "?,\n" +
                "?,\n" +
                "?,\n" +
                "?,\n" +
                "?,\n" +
                "?,\n" +
                "?)";

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
    public String getDate(){
        String fecha = "";

        String sql = "SELECT CURDATE()";

        try (Connection conn = this.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql)) {
            try (ResultSet rs = pstmt.executeQuery()) {
                if (rs.next()) {
                    Viaje viajes = new Viaje();
                    viajes.setFechaReserva(rs.getString(1));
                    fecha = viajes.getFechaReserva();
                }

            } catch (SQLException e) {
                System.out.println("No se pudo realizar la busqueda");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return fecha;
    }
}
