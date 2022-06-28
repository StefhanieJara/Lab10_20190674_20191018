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
                width="200"
                height="150"
                alt=""
        />

    </div>
    <div class="card-body">
        <div class="card-body">
            <h3 class="card-title">Bienvenido a Televiajero</h3>
            <h4 class="card-title">Registro</h4>
            <div class="card-body p-4 p-md-5">
                <form>
                    <div class="form-outline">
                        <input type="hidden" name="pagina" value="1"><!--Siempre regresaremos pagina 1-->
                        <label class="form-label" for="farmaName">Ingrese su nombre</label>
                        <input type="text"
                               name="numeroSala"
                               id="farmaName"
                               class="form-control"
                               placeholder="Ingrese su nombre" max="10" min="1" required="required"/>
                    </div>
                    <div class="form-outline">
                        <input type="hidden" name="pagina" value="1"><!--Siempre regresaremos pagina 1-->
                        <label class="form-label" for="farmaName">Ingrese su apellido</label>
                        <input type="text"
                               name="numeroSala"
                               id="farmaName"
                               class="form-control"
                               placeholder="Ingrese su apellido" max="10" min="1" required="required"/>
                    </div>

                    <div class="row mb-3">
                        <div class="col-md-6">
                            <div class="form-outline">
                                <input type="hidden" name="pagina" value="1"><!--Siempre regresaremos pagina 1-->
                                <label class="form-label" for="farmaName">Ingrese su edad</label>
                                <input type="number"
                                       name="numeroSala"
                                       id="farmaName"
                                       class="form-control"
                                       placeholder="Edad" max="10" min="1" required="required"/>
                            </div>
                        </div>

                        <div class="col-md-6">
                            <div class="form-outline">
                                <label class="form-label" for="farmaMail">Ingrese su Código PUCP</label>
                                <input type="number"
                                       id="farmaMail"
                                       name="aforo"
                                       class="form-control"
                                       placeholder="Codigo PUCP" required="required" max="200" min="50"/>
                            </div>
                        </div>
                    </div>
                    <div class="input-group has-validation">
                        <span class="input-group-text" id="inputGroupPrepend">@</span>
                        <input type="email" name="email" placeholder="Ingrese su Correo" class="form-control" id="validationCustomUsername" aria-describedby="inputGroupPrepend" required="required">
                    </div>

                    <div class="form-outline">
                        <label class="form-label" for="farmaMail">Ingrese su especialidad</label>
                        <input type="text"
                               name="aforo"
                               class="form-control"
                               placeholder="Codigo PUCP" required="required" max="200" min="50"/>
                    </div>

                    <div class="form-outline">
                        <label class="form-label" for="farmaMail">Ingrese una contraseña, esta debe tener una mayuscula, un número y un caracter especial</label>
                        <div class="mb-3">
                            <input class="form-control" type="password" name="pass0" placeholder="Contraseña" required="required">
                        </div>
                        <div class="mb-3">
                            <input class="form-control" type="password" name="pass" placeholder="Confirmar contraseña" required="required">
                        </div>
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




