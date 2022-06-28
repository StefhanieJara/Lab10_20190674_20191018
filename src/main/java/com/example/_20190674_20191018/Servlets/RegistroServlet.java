package com.example._20190674_20191018.Servlets;

import com.example._20190674_20191018.Daos.LoginDao;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;

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
                if(loginDao.existeEmail(correo) ==1){
                    session.setAttribute("error","emailExiste");
                    response.sendRedirect(request.getContextPath()+"/RegistroServlet");
                }else{
                    if(pass.equals(pass0)){
                        if(loginDao.validarContrasena(pass)==1) {
                            if(loginDao.tiene_numeros(nombre) == 0){
                                if(loginDao.tiene_numeros(apellido)==0){
                                    int edad= Integer.parseInt(edadStr);
                                    if(loginDao.validar_edad(edad)==1){
                                        int codigo = Integer.parseInt(codigostr);
                                        if(((int)Math.log10(codigo)+1)==8){
                                            try {
                                                loginDao.crearUsuario(nombre,apellido,edad,correo,pass,codigo,especialidad);
                                                session.invalidate();
                                                view= request.getRequestDispatcher("confirmoRegistro.jsp");
                                                view.forward(request, response);
                                            } catch (SQLException e) {
                                                e.printStackTrace();
                                                session.setAttribute("error","errorSQL");
                                                response.sendRedirect(request.getContextPath()+"/RegistroServlet");
                                            }
                                        }else{
                                            session.setAttribute("error","codigoIncorrecto");
                                            response.sendRedirect(request.getContextPath()+"/RegistroServlet");
                                        }

                                    }
                                    else{
                                        session.setAttribute("error","edadIncorrecta");
                                        response.sendRedirect(request.getContextPath()+"/RegistroServlet");
                                    }

                                }else{
                                    session.setAttribute("error","apellidoIncorrecto");
                                    response.sendRedirect(request.getContextPath()+"/RegistroServlet");
                                }
                            }else{
                                session.setAttribute("error","nombreIncorrecto");
                                response.sendRedirect(request.getContextPath()+"/RegistroServlet");
                            }


                        }
                        else{
                            session.setAttribute("error","passNocumple");
                            response.sendRedirect(request.getContextPath()+"/RegistroServlet");

                        }

                    }else {
                        session.setAttribute("error","passNoCoinciden");
                        response.sendRedirect(request.getContextPath()+"/RegistroServlet");
                    }

                }

            }
        }


    }
}
