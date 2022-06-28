<%--
  Created by IntelliJ IDEA.
  User: stefh
  Date: 28/06/2022
  Time: 11:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
                alt=""
        />

    </div>
    <div class="card-body">
        <div class="card-body">
            <h4 class="card-title">Bienvenido a Televiajero</h4>
            <h6>
                <a href="" class="link-primary">Su registro esta completado
                </a>
                <a href="<%=request.getContextPath()%>/LoginServlet" class="link-primary">Inicie Sesión
                </a>

            </h6>
        </div>
    </div>
</body>
</html>




