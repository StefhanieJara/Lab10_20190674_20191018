package com.example._20190674_20191018.Servlets;

import com.example._20190674_20191018.Beans.Usuario;
import com.example._20190674_20191018.Daos.LoginDao;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "LoginServlet", value = "/LoginServlet")
public class LoginServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher requestDispatcher;
        String logout = request.getParameter("finish");
        if(logout == null){
            requestDispatcher = request.getRequestDispatcher("index.jsp");
            requestDispatcher.forward(request,response);
        }else{
            if(logout.equals("yes")){
                HttpSession session = request.getSession();
                session.invalidate();
                response.sendRedirect(request.getContextPath() + "/LoginServlet");
            }else{

                requestDispatcher = request.getRequestDispatcher("index.jsp");
                requestDispatcher.forward(request,response);

            }
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        LoginDao loginDao = new LoginDao();
        String correo = request.getParameter("user");
        String pass = request.getParameter("password");
        Usuario usuario = loginDao.validar(correo, pass);
        HttpSession session = request.getSession();
        System.out.println(usuario.getCodigoPUCP());

        if(usuario.getCodigoPUCP()!=0){
            if(usuario.getEspecialidad().equals("Telecomunicaciones")){
                session.setAttribute("usuarioSesion",usuario);
                request.getSession().setAttribute("idCodigo", usuario.getCodigoPUCP());
                response.sendRedirect(request.getContextPath()+"/ListaServlet");
                System.out.println("logueo");
            }else{
                response.sendRedirect(request.getContextPath()+"/LoginServlet");
            }
        }else{
            session.setAttribute("indicador","error");
            response.sendRedirect(request.getContextPath()+"/LoginServlet");
        }
    }
}

