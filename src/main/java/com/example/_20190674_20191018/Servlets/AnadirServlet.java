package com.example._20190674_20191018.Servlets;

import com.example._20190674_20191018.Beans.Seguros;
import com.example._20190674_20191018.Beans.Viaje;
import com.example._20190674_20191018.Daos.SegurosDao;
import com.example._20190674_20191018.Daos.ViajesDao;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

@WebServlet(name = "AnadirServlet", value = "/AnadirServlet")
public class AnadirServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("a") == null ? "form" : request.getParameter("a");
        SegurosDao segurosDao = new SegurosDao();
        ViajesDao viajesDao = new ViajesDao();
        ArrayList<Seguros> listaSeguros = segurosDao.listarSeguros();
        String date = viajesDao.getDate();
        request.setAttribute("seguros",listaSeguros);
        request.setAttribute("date",date);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("anadirViaje.jsp");
        requestDispatcher.forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String action = request.getParameter("a");
        ViajesDao viajesDao = new ViajesDao();
        switch (action){
            case "agregarViaje":{
                String fechaReserva = request.getParameter("current_date");
                String fechaViaje = request.getParameter("fechaViaje");
                String ciudadOrigen = request.getParameter("origen");
                String ciudadDestino = request.getParameter("destino");
                int empresaSeguro = Integer.parseInt(request.getParameter("seguros"));
                int numeroBoletos = Integer.parseInt(request.getParameter("boletos"));
                Float costoTotal = Float.valueOf(request.getParameter("costo"));
                int codigoPucp = 20191018;
                System.out.println(fechaViaje);
                System.out.println(fechaReserva);
                System.out.println(ciudadOrigen);
                System.out.println(ciudadDestino);
                viajesDao.crearViaje(fechaReserva, fechaViaje, ciudadOrigen, ciudadDestino, empresaSeguro, numeroBoletos, costoTotal, codigoPucp);
                response.sendRedirect(request.getContextPath() + "/listaCanciones");
                break;
            }
        }
    }
}
