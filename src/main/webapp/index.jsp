<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<jsp:useBean id="usuarioSesion" scope="session" type="com.example._20190674_20191018.Beans.Usuario" class="com.example._20190674_20191018.Beans.Usuario"/>
<%int idCodigo= usuarioSesion.getCodigoPUCP();%>
<html>
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
            rel="stylesheet"
            integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
            crossorigin="anonymous"
    />
    <link rel="stylesheet" href="css2/estilos.css" />

</head>
<body
        class="bg-success row align-items-center justify-content-center"
        background="ima/fondo2.jpg"
>

<body class="row align-items-center justify-content-center">
<div class="card text-white bg-dark mb-3"style="max-width: 35rem;">
    <div class="card-header">
        <img
                class="LogoCentral"
                src="ima/logo.png"
                width="200"
                height="150"
                style="margin-left: 150px"
        />

    </div>
    <div class="card-body">
        <div class="card-body">
            <h4 class="card-title" style="margin-left: 100px">Bienvenido a Televiajero</h4>
            <form class="form-signin" method="post" action="<%=request.getContextPath()%>/LoginServlet" >
                <p class="card-text">
                    <input
                        type="text"
                        class="form-control"
                        placeholder="Username"
                        aria-label="Username"
                        name="user"
                        aria-describedby="basic-addon1"

                    />
                <div>
                    <input
                        type="password"
                        class="form-control"
                        placeholder="Contraseña"
                        aria-label="Contraseña"
                        name="password"
                        aria-describedby="basic-addon1"
                    />
                </div>
                <%if(session.getAttribute("error")!=null){%>
                <div class="text-danger mb-2">Error en usuario o contraseña</div>
                <%}%>
                <%session.removeAttribute("error"); session.invalidate();%>
                <div class="btn-container">
                    <button type="submit" class="btn btn-ingresar" >Ingresar</button>
                </div>
            </form>
            <h6>
                    <a href="<%=request.getContextPath()%>/ListaServlet?action=listar&idCodigo=<%=idCodigo%>" class="link-primary" style="margin-left: 120px">Inicia Sesión
                    </a>
                <a href="<%=request.getContextPath()%>/RegistroServlet" class="link-primary" style="margin-left: 120px">Soy nuevo y quiero registrarme
                </a>
            </h6>
        </div>
    </div>
</div>
</body>
</html>



