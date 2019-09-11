<%-- 
    Document   : PantallaPrincipal
    Created on : 15/08/2019, 14:47:23
    Author     : Desarrollo Web
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="modelo.Usuario"%>
<%@page import="modelo.Hostel"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <title>Voyage</title>
        <link rel="shortcut icon" href="img/viajealaluna.jpg">
        <link href="ppal-css.css" rel="stylesheet" type="text/css"/>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    </head>
    <body>



        <nav class="navbar navbar-expand-sm  navbar-dark ">
            <!-- Links -->
            <ul class="navbar-nav container ">
                <li class="nav-item" style=" margin-left:-20px;font-size:30px">

                    <a  class="nav-link" href="index.jsp">A Voyage</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#info">SOBRE NOSOTROS</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#pie">CONTACTANOS</a>
                </li>
                <!-- Dropdown -->  
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown">
                        VOLUNTARIADOS
                    </a>
                    <div class="dropdown-menu">
                        <a class="dropdown-item" href="controlador?accion=Listarhostel">LISTA DE VOLUNTARIADOS</a>
                        <a class="dropdown-item" href="controlador?accion=registroHost">REGISTRAR UN VOLUNTARIADO</a>
                    </div>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="controlador?accion=buscar&ide=${hos.getIdHostel()}" id="navbarDropdown" role="button" data-toggle="dropdown">
                        BUSCAR
                    </a>
                    <div class="dropdown-menu">
                        <a class="dropdown-item" href="controlador?accion=Listarhostel">${hos.getUbicacion()}</a>
                    </div>
                </li>
                <div class="dropdown">
                    <button style="border: none" class="btn btn-outline-light dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        ${nombreUser.getNombre()} ${nombreUser.getApellido()}
                    </button>
                    <div class="dropdown-menu text-center">

                        <a class="dropdown-item" href="#">
                            <img src="img/user.png" alt="60" width="60"/>
                        </a>
                        <a class="dropdown-item" href="#">${nombreUser.getMail()}</a>
                        <a class="dropdown-item" href="controlador?accion=Editarusuario&ide=${nombreUser.getIdClientes()}">Editar usuario</a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="controlador?accion=Salir">Salir</a>

                    </div>
                </div>

            </ul>
        </nav>
        <main role="main">
            <!-- pantalla principal para llamado a la pantalla principal -->
            <div class="jumbotron">
                <div class="container">
                    <h1 class="display-3">Descubre el mundo!</h1>
                    <p>Donde quiera que vayas, ve con todo tu corazón.</p>
                    <a href="#footer" > <button class="button" role="button"><span>Lea mas!</span> </button></a>
                </div>
            </div>
            <!-- Seccion servicios -->
            <section>
                <div class="container" id="what-we-do">
                    <h2 class="section-title  h1 text-center" style="color:black">NUESTROS SERVICIOS</h2>
                    <p class="text-center mb-2 text-muted h5">Siempre tendrás lugares fascinantes para estar y gente amigable para ver.</p>
                    <div class="row mt-5">
                        <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4 col-xl-4">
                            <div class="card">
                                <div class="card-block block-1">
                                    <h3 class="card-title">VUELOS</h3>
                                    <p class="card-text">Con texto de apoyo a continuación como una introducción natural a contenido adicional.</p>
                                    <a href="javascript:void();" title="Lea mas" class="read-more" >Lea mas!<i class="fa fa-angle-double-right ml-2" style="color:black"></i></a>
                                </div>
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4 col-xl-4">
                            <div class="card">
                                <div class="card-block block-2">
                                    <h3 class="card-title">VERANO 2020</h3>
                                    <p class="card-text">Con texto de apoyo a continuación como una introducción natural a contenido adicional.</p>
                                    <a href="javascript:void();" title="Lea mas" class="read-more" >Lea mas!<i class="fa fa-angle-double-right ml-2"></i></a>
                                </div>
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4 col-xl-4">
                            <div class="card">
                                <div class="card-block block-3">
                                    <h3 class="card-title">Aventura</h3>
                                    <p class="card-text">Con texto de apoyo a continuación como una introducción natural a contenido adicional.</p>
                                    <a href="javascript:void();" title="Read more" class="read-more" >Lea mas!<i class="fa fa-angle-double-right ml-2"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
                <!-- /Seccion servicios -->
            </section>
            <hr>

            <div class="container">
                <!-- Example row of columns -->
                <h2 class="text-center">Viajes y mas!</h2>

                <div class="row" >
                    <div class=" card col-md-3" style="margin:30px;">
                        <img src = "img/jumboCataratas.jpg" height="200px" width="100%">
                        <P>Argentina</P>
                        <p><a class="button" href="#" role="button">Ver mas</a></p>
                    </div>
                    <div class=" card col-md-3" style="margin:30px;">
                        <img src = "img/peru.jpg" height="200px" width="100%">
                        <p>Peru</p>
                        <p><a class="button" href="#" role="button">Ver mas</a></p>
                    </div>
                    <div class="card col-md-3" style="margin:30px;">
                        <img src = "img/ecuador.jpg" height="200px" width="100%">
                        <P>Ecuador</P>
                        <p><a class="button" href="#" role="button">Ver mas </a></p>

                    </div>
                </div>

                <div class="row" >
                    <div class=" card col-md-3" style="margin:30px;">
                        <img src = "img/bolivia.jpg" height="200px" width="100%">
                        <P>Bolivia</P>
                        <p><a class="button" href="#" role="button">Ver mas</a></p>
                    </div>
                    <div class=" card col-md-3" style="margin:30px;">
                        <img src = "img/chile.jpg" height="200px" width="100%">
                        <p>Chile</p>
                        <p><a class="button" href="#" role="button">Ver mas</a></p>
                    </div>
                    <div class="card col-md-3" style="margin:30px;">
                        <img src = "img/brasil.jpg" height="200px" width="100%">
                        <P>Brasil</P>
                        <p><a class="button" href="#" role="button">Ver mas </a></p>
                    </div>
                </div>
                <br>
            </div> <!-- /container -->
            <hr>
            <h1 class="text-center">Comentarios</h1>
            <section class="carouselsection">
                <div class="container">

                    <div id="demo" class="carousel slide" data-ride="carousel">
                        <ul class="carousel-indicators">
                            <li data-target="#demo" data-slide-to="0" class="active"></li>
                            <li data-target="#demo" data-slide-to="1" ></li>
                            <li data-target="#demo" data-slide-to="2" ></li>
                        </ul>
                        <div class="carousel-inner">
                            <div class="carousel-item active"style="background-color:black;opacity:0.7;height:400px">
                                <div class="carousel-caption">
                                    <h3>Mendoza</h3>
                                    <p>El vino de mendoza es increible!</p>
                                </div>
                            </div>
                            <div class="carousel-item" style="background-color:black;opacity:0.7;height:400px">
                                <div class="carousel-caption active ">
                                    <h3>Ecuador</h3>
                                    <p>Gracias Ecuador!</p>
                                </div>
                            </div>
                            <div class="carousel-item" style="background-color:black;opacity:0.7;height:400px">
                                <div class="carousel-caption active">
                                    <h3>Peru</h3>
                                    <p>Amamos la tierra Inca!</p>
                                </div>
                            </div>
                        </div>
                        <a class="carousel-control-prev" href="#demo" data-slide="prev">
                            <span class="carousel-control-prev-icon active"></span>
                        </a>
                        <a class="carousel-control-next" href="#demo" data-slide="next">
                            <span class="carousel-control-next-icon"></span>
                        </a>
                    </div>
                </div>
            </section>
            <hr>
        </main>
        <!-- Footer -->
        <section id="footer">
            <div id="info" class="container">
                <div class="row text-center text-xs-center text-sm-left text-md-left">
                    <p class="text-center mb-2 text-muted h5" style="font-size: 30px;">                    
                        Voyage es una sistema colaborativo que te conecta con anfitriones del mundo entero para viajar intercambiando tus habilidades por alojamiento.
                        Ya sea para ahorrar en tu viaje, tener una inmersión en la cultura local o desarrollar nuevas habilidades. Puedes utilizar Voyage en tus vacaciones, irte de mochilero o tomarte un año sabático. Hay hostales, albergues, ONGs, comunidades y proyectos ecológicos en los que puedes ayudar y recibir a cambio alojamiento gratuito, alimentación y otros beneficios.
                        <br>Queres viajar por el mundo con Voyage?<br>
                        Realiza voluntariados en el exterior y conoce nuevas culturas sin pagar alojamiento en hostales, ONGs, homestays, comunidades, y muchos lugares más .
                    </p>
                </div>
            </div>
        </section>
        <!-- ./Footer -->
        <nav class="navbar navbar-expand-sm bg-light justify-content-end">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link" id="pie" href="https://www.google.com.ar/maps/place/Edificio+Nido+%22Coronel+Dorrego%22/@-31.6162452,-60.7195806,14z/data=!4m8!1m2!2m1!1snido+coronel+dorrego!3m4!1s0x95b507c296455667:0x4c0cd9eef40eafcd!8m2!3d-31.5975415!4d-60.6821003" target="_blank"  style="background-color:#F8F9FA">Locacion : 3000 SANTA FE , ARGENTINA</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" id="pie" style="background-color:#F8F9FA">Contact : +5493425596425</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" id="pie" style="background-color:#F8F9FA">Mail : info@ejemplo.com</a>
                </li>
            </ul>
        </nav>

    </body>
</html>
