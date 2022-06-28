package com.example._20190674_20191018.Beans;

public class Viaje {
    private String idViajes;
    private String fechaReserva;
    private String fechaViaje;
    private String ciudadOrigen;
    private String ciudadDestino;
    private String empresaSeguro;
    private int numeroBoletos;
    private Float costoTotal;

    public String getIdViajes() {
        return idViajes;
    }

    public void setIdViajes(String idViajes) {
        this.idViajes = idViajes;
    }

    public String getFechaReserva() {
        return fechaReserva;
    }

    public void setFechaReserva(String fechaReserva) {
        this.fechaReserva = fechaReserva;
    }

    public String getFechaViaje() {
        return fechaViaje;
    }

    public void setFechaViaje(String fechaViaje) {
        this.fechaViaje = fechaViaje;
    }

    public String getCiudadOrigen() {
        return ciudadOrigen;
    }

    public void setCiudadOrigen(String ciudadOrigen) {
        this.ciudadOrigen = ciudadOrigen;
    }

    public String getCiudadDestino() {
        return ciudadDestino;
    }

    public void setCiudadDestino(String ciudadDestino) {
        this.ciudadDestino = ciudadDestino;
    }

    public String getEmpresaSeguro() {
        return empresaSeguro;
    }

    public void setEmpresaSeguro(String empresaSeguro) {
        this.empresaSeguro = empresaSeguro;
    }

    public int getNumeroBoletos() {
        return numeroBoletos;
    }

    public void setNumeroBoletos(int numeroBoletos) {
        this.numeroBoletos = numeroBoletos;
    }

    public Float getCostoTotal() {
        return costoTotal;
    }

    public void setCostoTotal(Float costoTotal) {
        this.costoTotal = costoTotal;
    }
}
