package com.example._20190674_20191018.Daos;
import com.example._20190674_20191018.Beans.Viaje;

import java.sql.*;
import java.util.ArrayList;

public class ListarDao {
    String user = "root";
    String pass = "root";
    String url = "jdbc:mysql://localhost:3306/lab10";

    public ArrayList<Viaje> listarViajes(String codigoPucp) {

        ArrayList<Viaje> listaViajes = new ArrayList<>();

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }

        String sql = "select v.idViajes, v.fechaReserva, v.fechaViaje, v.ciudadOrigen, v.ciudadDestino, s.nombre, v.numeroBoletos, v.costoTotal \n" +
                "from viajes v, seguros s where codigoPUCP = ? and v.empresaSeguro = s.idSeguros";

        try (Connection conn = DriverManager.getConnection(url, user, pass);
             PreparedStatement pstmt = conn.prepareStatement(sql);) {

            pstmt.setString(1, codigoPucp);
            try (ResultSet rs = pstmt.executeQuery()) {

                if (rs.next()) {
                    Viaje viajes = new Viaje();
                    viajes.setIdViajes(rs.getString(1));
                    viajes.setFechaReserva(rs.getString(2));
                    viajes.setFechaViaje(rs.getString(3));
                    viajes.setCiudadOrigen(rs.getString(4));
                    viajes.setCiudadDestino(rs.getString(5));
                    viajes.setEmpresaSeguro(rs.getString(6));
                    viajes.setNumeroBoletos(rs.getInt(7));
                    viajes.setCostoTotal(rs.getFloat(8));
                    listaViajes.add(viajes);
                }

            } catch (SQLException e) {
                System.out.println("No se pudo realizar la busqueda");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return listaViajes;

    }
    public ArrayList<Viaje> filtrarViajes(String codigoPucp, String filtro) {

        ArrayList<Viaje> filtroViajes = new ArrayList<>();

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }

        String sql = "select v.idViajes, v.fechaReserva, v.fechaViaje, v.ciudadOrigen, v.ciudadDestino, s.nombre, v.numeroBoletos, v.costoTotal \n" +
                "from viajes v, seguros s where codigoPUCP = ? and v.empresaSeguro = s.idSeguros and (v.ciudadOrigen = ? or v.ciudadDestino= ?)";

        try (Connection conn = DriverManager.getConnection(url, user, pass);
             PreparedStatement pstmt = conn.prepareStatement(sql);) {

            pstmt.setString(1, codigoPucp);
            pstmt.setString(2, filtro);
            pstmt.setString(3, filtro);
            try (ResultSet rs = pstmt.executeQuery()) {

                if (rs.next()) {
                    Viaje viajes = new Viaje();
                    viajes.setIdViajes(rs.getString(1));
                    viajes.setFechaReserva(rs.getString(2));
                    viajes.setFechaViaje(rs.getString(3));
                    viajes.setCiudadOrigen(rs.getString(4));
                    viajes.setCiudadDestino(rs.getString(5));
                    viajes.setEmpresaSeguro(rs.getString(6));
                    viajes.setNumeroBoletos(rs.getInt(7));
                    viajes.setCostoTotal(rs.getFloat(8));
                    filtroViajes.add(viajes);
                }

            } catch (SQLException e) {
                System.out.println("No se pudo realizar la busqueda");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return filtroViajes;
    }
}
