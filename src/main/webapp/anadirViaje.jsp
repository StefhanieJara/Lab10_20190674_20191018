<%--
  Created by IntelliJ IDEA.
  User: stefh
  Date: 28/06/2022
  Time: 01:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="com.example._20190674_20191018.Beans.Seguros" %>
<%@ page import="java.util.Objects" %>
<%@ page import="jdk.internal.org.objectweb.asm.tree.analysis.Value" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="date" class="java.lang.String"/>
<jsp:useBean type="java.util.ArrayList<com.example._20190674_20191018.Beans.Seguros>" scope="request" id="seguros"/>
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
    <section class="vh-100">
        <div class="container py-6 h-150" style="margin-top: 150px">
            <div class="row justify-content-center align-items-center h-100">
                <div class="col-12 col-lg-9 col-xl-7">
                    <div
                            class="card shadow-2-strong card-registration"
                            style="border-radius: 15px"
                    >
                        <div
                                class="card-header"
                                style="background-color: #e72d4b; color: white"
                        >
                            <h4 class="my-2">Registrar Viaje</h4>
                        </div>
                        <div class="card-body p-4 p-md-5">
                            <form method="post" action="<%=request.getContextPath()%>/AnadirServlet?a=agregarViaje">
                                <div class="row">
                                    <div class="col-md-6 mb-1">
                                        <div class="form-outline mb-4">
                                            <label class="form-label" for="fechaViaje"
                                            >Fecha de Viaje</label>
                                            <input
                                                    type="date"
                                                    id="fechaViaje"
                                                    name="fechaViaje"
                                                    class="form-control"
                                                    placeholder="Fecha de Viaje"
                                            />
                                        </div>
                                        <div class="form-outline mb-4">
                                            <label class="form-label" for="current_date"
                                            >Fecha de Reserva</label>
                                            <input
                                                    type="date"
                                                    id="current_date"
                                                    name="current_date"
                                                    class="form-control"
                                                    value="date"
                                                    placeholder="Fecha de reserva"
                                            />
                                        </div>
                                        <div class="form-outline mb-4">
                                            <label class="form-label" for="seguros"
                                            >Elija la empresa de seguros</label
                                            >
                                            <select
                                                    class="form-select form-select-sm"
                                                    id = "seguros"
                                                    name="seguros"
                                                    aria-label=".form-select-sm example"
                                            >
                                                <option value="NULL">Seleccione</option>
                                                <%
                                                    for (Seguros seguro : seguros) {
                                                %>
                                                <option value="<%=seguro.getIdSeguro()%>"><%=seguro.getNombre()%></option>
                                                <%
                                                    }
                                                %>
                                            </select>
                                        </div>
                                        <div class="form-outline mb-4">
                                            <label class="form-label" for="origen"
                                            >Ciudad de Origen</label
                                            >
                                            <input
                                                    type="text"
                                                    id="origen"
                                                    name="origen"
                                                    class="form-control"
                                                    placeholder="Ingrese ciudad de origen"
                                            />
                                        </div>
                                        <div class="form-outline mb-4">
                                            <label class="form-label" for="destino"
                                            >Ciudad de Destino</label
                                            >
                                            <input
                                                    type="text"
                                                    id="destino"
                                                    name="destino"
                                                    class="form-control"
                                                    placeholder="Ingrese ciudad de destino"
                                            />
                                        </div>
                                        <div class="form-outline mb-4">
                                            <label class="form-label" for="boletos"
                                            >N??mero de Boletos</label
                                            >
                                            <input
                                                    type="number"
                                                    id="boletos"
                                                    name="boletos"
                                                    class="form-control"
                                                    placeholder="Ingrese cantidad"
                                            />
                                        </div>
                                        <div class="form-outline mb-4">
                                            <label class="form-label" for="costo"
                                            >Costo</label
                                            >
                                            <input
                                                    type="number"
                                                    id="costo"
                                                    name="costo"
                                                    class="form-control"
                                                    placeholder="Ingrese cantidad"
                                            />
                                        </div>
                                    </div>

                                    <div class="col-md-6 mb-4 text-center" style="margin-top:90px">
                                        <img
                                                src="imagen.jpg"
                                                class="img-thumbnail"
                                                width="550px"
                                                height="550px"
                                                alt=""
                                        />
                                    </div>
                                </div>

                                <div class="">
                                    <input
                                            class="btn btn-tele"
                                            type="submit"
                                            value="Guardar Viaje"
                                    />
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</main>

<script src="bootstrap/js/bootstrap.min.js"></script>
</body>
</html>
