<%--
  Created by IntelliJ IDEA.
  User: stefh
  Date: 27/06/2022
  Time: 19:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <!-- CSS only -->
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
<script
        src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"
></script>
<div class="card text-white bg-dark mb-3"style="max-width: 35rem;">
    <div class="card-header">
        <img
                class="LogoCentral"
                src="ima/logo.png"
                style="margin-left: 150px"
                width="200"
                height="150"
                alt=""
        />

    </div>
    <div class="card-body">
        <div class="card-body">
            <h3 class="card-title" style="margin-left: 80px" >Bienvenido a Televiajero</h3>
            <h4 class="card-title" style="margin-left: 190px" >Registro</h4>
            <div class="card-body p-4 p-md-5">
                <form method="post" action="<%=request.getContextPath()%>/RegistroServlet?action=registrar">
                    <%if(session.getAttribute("error")!=null && session.getAttribute("error").equals("errorSQL")){%>
                    <div class="text-danger mb-2">¡Lo sentimos! Hubo un error en su registro, vuelva a intentar.</div>
                    <%}%>
                    <div class="form-outline">
                        <input type="hidden" name="pagina" value="1"><!--Siempre regresaremos pagina 1-->
                        <label class="form-label" for="farmaName">Ingrese su nombre</label>
                        <input type="text"
                               name="nombre"
                               id="farmaName"
                               class="form-control"
                               placeholder="Ingrese su nombre" />
                    </div>
                    <%if(session.getAttribute("error")!=null && session.getAttribute("error").equals("nombreIncorrecto")){%>
                    <div class="text-danger mb-2">El nombre no debe contener números</div>
                    <%}%>
                    <div class="form-outline">
                        <input type="hidden" name="pagina" value="1"><!--Siempre regresaremos pagina 1-->
                        <label class="form-label" for="farmaName">Ingrese su apellido</label>
                        <input type="text"
                               name="apellido"
                               class="form-control"
                               placeholder="Ingrese su apellido" />
                    </div>
                    <%if(session.getAttribute("error")!=null && session.getAttribute("error").equals("apellidoIncorrecto")){%>
                    <div class="text-danger mb-2">El apellido no debe contener números</div>
                    <%}%>

                    <div class="row mb-3">
                        <div class="col-md-6">
                            <div class="form-outline">
                                <input type="hidden" name="pagina" value="1"><!--Siempre regresaremos pagina 1-->
                                <label class="form-label" for="farmaName">Ingrese su edad</label>
                                <input type="number"
                                       name="edad"
                                       class="form-control"
                                       placeholder="Edad" />
                            </div>
                        </div>
                        <%if(session.getAttribute("error")!=null && session.getAttribute("error").equals("edadIncorrecta")){%>
                        <div class="text-danger mb-2">Usted no tiene la edad permitida</div>
                        <div class="text-danger mb-2">Debe tener entre 18 y 30 años</div>
                        <%}%>

                        <div class="col-md-6">
                            <div class="form-outline">
                                <label class="form-label" for="farmaMail">Ingrese su Código PUCP</label>
                                <input type="number"
                                       id="farmaMail"
                                       name="codigo"
                                       class="form-control"
                                       placeholder="Codigo PUCP" />
                            </div>
                        </div>
                        <%if(session.getAttribute("error")!=null && session.getAttribute("error").equals("codigoIncorrecto")){%>
                        <div class="text-danger mb-2">Codigo debe tener 8 dígitos!</div>
                        <%}%>
                    </div>
                    <div class="input-group has-validation">
                        <span class="input-group-text" id="inputGroupPrepend">@</span>
                        <input type="email" name="email" placeholder="Correo" class="form-control" id="validationCustomUsername" aria-describedby="inputGroupPrepend" >
                    </div>
                    <%if(session.getAttribute("error")!=null && session.getAttribute("error").equals("emailExiste")){%>
                    <div class="text-danger mb-2">¡Ya existe una cuenta con este correo! Inicie Sesión</div>
                    <%}%>

                    <%if(session.getAttribute("error")!=null && session.getAttribute("error").equals("emailExiste1")){%>
                    <div class="text-danger mb-2">Sigue noma</div>
                    <%}%>

                    <div class="form-outline">
                        <label class="form-label" for="farmaMail">Ingrese su especialidad</label>
                        <label class="form-label" for="farmaMail">Ingrese "Telecomunicaciones" si es alumno de esa especialidad</label>
                        <input type="text"
                               name="especialidad"
                               class="form-control"
                               placeholder="Especialidad"  max="200" min="50"/>
                    </div>

                    <div class="form-outline">
                        <label class="form-label" for="farmaMail">Ingrese una contraseña, esta debe tener una mayuscula, un número y un caracter especial</label>
                        <div class="mb-3">
                            <input class="form-control" type="password" name="pass0" placeholder="Contraseña" required="required">
                        </div>
                        <div class="mb-3">
                            <input class="form-control" type="password" name="pass" placeholder="Confirmar contraseña" required="required">
                        </div>
                        <%if(session.getAttribute("error")!=null && session.getAttribute("error").equals("passNoCoinciden")){%>
                        <div class="text-danger mb-2">Las contraseñas no coinciden!</div>
                        <%}%>
                        <%if(session.getAttribute("error")!=null && session.getAttribute("error").equals("passNocumple")){%>
                        <div class="text-danger mb-2">Las contraseñas no cumplen el requerimiento!</div>
                        <%}%>
                        <%if(session.getAttribute("error")!=null && session.getAttribute("error").equals("passSicumple")){%>
                        <div class="text-danger mb-2">Las contraseñas cumplen el requerimiento!</div>
                        <%}%>
                    </div>

                    <div class="mb-3">
                        <button class="btn btn-primary d-block w-100" type="submit" style="color: white; background:#E72D4B; border-color:#E72D4B">
                            <strong>Registrarse</strong>
                        </button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

</body>
</html>




