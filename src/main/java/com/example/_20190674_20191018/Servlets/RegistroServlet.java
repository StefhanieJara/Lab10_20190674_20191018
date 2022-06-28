package com.example._20190674_20191018.Servlets;

import com.example._20190674_20191018.Daos.LoginDao;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "RegistroServlet", value = "/RegistroServlet")
public class RegistroServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action") == null ? "registro" : request.getParameter("action");
        RequestDispatcher view;
        switch (action) {
            case "registro":
                view= request.getRequestDispatcher("registro.jsp");
                view.forward(request, response);
                break;
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action") == null ? "registrar" : request.getParameter("action");
        RequestDispatcher view;
        LoginDao loginDao = new LoginDao();
        String nombre=request.getParameter("nombre");
        String apellido=request.getParameter("apellido");
        String codigostr=request.getParameter("codigo");
        String edadStr= request.getParameter("edad");
        String especialidad= request.getParameter("especialidad");
        String correo= request.getParameter("email");
        String pass0= request.getParameter("pass0");
        String pass= request.getParameter("pass");
        HttpSession session= request.getSession();

        switch (action){
            case "registrar"->{
                if(loginDao.existeEmail(correo)){
                    session.setAttribute("error","emailExiste");
                    response.sendRedirect(request.getContextPath()+"/RegistroServlet");
                }else{
                    session.setAttribute("error","emailExiste1");
                    response.sendRedirect(request.getContextPath()+"/RegistroServlet");

                }

            }
        }


    }
}
