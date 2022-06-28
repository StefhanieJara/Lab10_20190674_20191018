package com.example._20190674_20191018.Servlets;

import com.example._20190674_20191018.Beans.Seguros;
import com.example._20190674_20191018.Daos.SegurosDao;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "AnadirServlet", value = "/AnadirServlet")
public class AnadirServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        SegurosDao segurosDao = new SegurosDao();
        ArrayList<Seguros> listaSeguros = segurosDao.listarSeguros();
        request.setAttribute("seguros",listaSeguros);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("anadirViaje.jsp");
        requestDispatcher.forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
