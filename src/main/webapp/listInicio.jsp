<%--
  Created by IntelliJ IDEA.
  User: stefh
  Date: 28/06/2022
  Time: 01:04
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
    <link rel="stylesheet" href="style.css" />
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css" />
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
            href="https://fonts.googleapis.com/css2?family=Pacifico&display=swap"
            rel="stylesheet"
    />
    <link rel="stylesheet" href="css/estilos.css" />
    <script
            src="https://kit.fontawesome.com/5733880de3.js"
            crossorigin="anonymous"
    ></script>
    <style type="text/css">
        body {
            font-family: Arial;
            background-image: linear-gradient(
                    rgba(5, 10, 5, 0.8),
                    rgba(90, 40, 90, 0.8)
            ),
            url(ima/fondo2.jpg);
            background-repeat: no-repeat;
            background-attachment: fixed;
            background-position: center;
            background-size: 100% 100%;
        }
        #main-container {
            margin: 52px;
            margin-left: auto;
            margin-right: auto;
            justify-content: center;
            width: 1000px;
        }
        .busqueda {
            margin-left: auto;
            margin-right: auto;
            justify-content: center;
            width: 250px;
        }
        table {
            background-color: white;
            text-align: left;
            border-collapse: collapse;
            margin-left: auto;
            margin-right: auto;
            justify-content: center;
        }
        th,
        td {
            padding: 20px;
        }
        thead {
            background-color: #9e0c0c;
            border-bottom: solid 5px #0f362d;
            color: white;
        }
        tr:nth-child(even) {
            background-color: #ddd;
        }
        tr:hover td {
            background-color: #51514f;
            color: white;
        }
    </style>
</head>
<body
        class="bg-success row align-items-center justify-content-center"
        background="ima/fondo2.jpg"
>
<a href="" class="btn-float" style="margin-right: 100px">
    <i class="fas fa-plus my-float"></i>
</a>
<nav
        class="navbar navbar-light navbar-expand-md fixed-top navbar- shadow-sm navigation-clean-search d-flex justify-content-center"
        style="background-color: #0c309e"
>
    <div
            class="row w-100 align-items-center d-sm-flex d-flex pe-sm-4 ps-0 my-2"
    >
        <div
                class="col-xl-3 col-lg-3 col-md-3 col-sm-5 col-6 d-flex justify-content-center ps-2 ps-md-5 ps-lg-4 ps-xl-5 ps-xxl-2"
        >
            <a href=""
            ><img
                    class="LogoCentral"
                    src="ima/logo.png"
                    width="70"
                    height="60"
                    alt=""
            /></a>
        </div>

        <div
                class="col-xl-1 col-lg-1 col-md-1 col-sm-2 col-2 ms-sm-auto ms-auto d-flex justify-content-end"
        ></div>
        <div
                class="col-xl-1 col-lg-1 col-md-1 col-sm-2 col-2 d-flex justify-content-start ps-0"
        >
            <p class="text-white">Hola como estas</p>
        </div>
        <div
                class="col-xl-1 col-lg-1 col-md-1 col-sm-2 col-2 d-flex justify-content-start ps-0"
        >
            <button class="btn" type="button" style="color: white">
                <div style="font-size: 0.62rem">
                    <a href="">
                        <i
                                class="fa fa-caret-square-o-left fa-3x"
                                style="color: #fff"
                        ></i
                        ></a>
                </div>
            </button>
        </div>
    </div>
</nav>
<main>
    <div class="card-header my-2"></div>
    <div class="row">
        <div class="moverTitulo">
            <h3 class="text-white" style="margin-left: 100px" >Bienvenido al menú de viajes</h3>
        </div>
    </div>

    <!--Barra de búsqueda producto-->
    <form class="busqueda">
        <div class="row g-3 align-items-center mt-2">
            <div class="rows-auto">
                <input type="text"
                       id="farmaMail"
                       class="form-control"
                       placeholder="Destino u origen" required="required" max="200" min="50"/>
            </div>
        </div>
        </div>
        <div class="row row-cols-3 justify-content-center">
            <button class="btn btn-tele" type="submit">Filtrar</button>
        </div>
    </form>

    <div id="main-container">
        <table>
            <thead>
            <tr>
                <th>Peso</th>
                <th>Fuerza</th>
                <th>Nombre comleto de la pareja</th>
                <th>Peso cargado</th>
                <th>-</th>
            </tr>
            </thead>
            <tr>
                <td>sdfsd</td>
                <td>dfsdf</td>
                <td>asda</td>
                <td></td>
                <td></td>
            </tr>
        </table>
    </div>
</main>

<script src="bootstrap/js/bootstrap.min.js"></script>
</body>
</html>
