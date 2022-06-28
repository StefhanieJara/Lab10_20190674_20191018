package com.example._20190674_20191018.Servlets;

import com.example._20190674_20191018.Beans.Seguros;
import com.example._20190674_20191018.Beans.Usuario;
import com.example._20190674_20191018.Beans.Viaje;
import com.example._20190674_20191018.Daos.ListarDao;
import com.example._20190674_20191018.Daos.ViajesDao;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "ListaServlet", value = "/ListaServlet")
public class ListaServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ListarDao listaDao = new ListarDao();
        Integer codigo = (Integer)request.getSession().getAttribute("idCodigo");
        System.out.println(codigo);
        ArrayList<Viaje> listaViajes = listaDao.listarViajes(codigo);
        request.setAttribute("lista",listaViajes);
        request.setAttribute("idCodigo",codigo);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("listInicio.jsp");
        requestDispatcher.forward(request,response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
