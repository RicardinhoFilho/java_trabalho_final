<%-- 
    Document   : chamados
    Created on : 24 de ago de 2022, 16:38:49
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="com.beibe.model.Chamado" %>
<%@ page import ="java.util.List"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Beibe Beauty</title>
        <link href="css/styles.css" rel="stylesheet" />
        <link rel="icon" type="image/x-icon" href="assets/img/favicon.png" />
        <script data-search-pseudo-elements defer src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/js/all.min.js" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/feather-icons/4.28.0/feather.min.js" crossorigin="anonymous"></script>
    </head>
    <body class="nav-fixed">
        <nav class="topnav navbar navbar-expand shadow justify-content-between justify-content-sm-start navbar-light bg-primary" id="sidenavAccordion">
            <!-- Sidenav Toggle Button-->
            <button class="btn btn-icon btn-transparent-dark order-1 order-lg-0 me-2 ms-lg-2 me-lg-0" id="sidebarToggle"><i data-feather="menu"></i></button>
            <!-- Navbar Brand-->
            <!-- * * Tip * * You can use text or an image for your navbar brand.-->
            <!-- * * * * * * When using an image, we recommend the SVG format.-->
            <!-- * * * * * * Dimensions: Maximum height: 32px, maximum width: 240px-->
            <a class="navbar-brand pe-3 ps-4 ps-lg-2" href="index.html">Beibe Beauty</a>
            <!-- Navbar Search Input-->
            <!-- * * Note: * * Visible only on and above the lg breakpoint-->
            <form class="form-inline me-auto d-none d-lg-block me-3">
                <div class="input-group input-group-joined input-group-solid">
                    <input class="form-control pe-0" type="search" placeholder="Procurar" aria-label="Procurar" />
                    <div class="input-group-text"><i data-feather="Procurar"></i></div>
                </div>
            </form>
            <!-- Navbar Items-->
            <ul class="navbar-nav align-items-center ms-auto">
                <!-- Documentation Dropdown-->
                <!-- Navbar Search Dropdown-->
                <!-- * * Note: * * Visible only below the lg breakpoint-->
                <li class="nav-item dropdown no-caret me-3 d-lg-none">
                    <a class="btn btn-icon btn-transparent-dark dropdown-toggle" id="searchDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i data-feather="search"></i></a>
                    <!-- Dropdown - Search-->
                    <div class="dropdown-menu dropdown-menu-end p-3 shadow animated--fade-in-up" aria-labelledby="searchDropdown">
                        <form class="form-inline me-auto w-100">
                            <div class="input-group input-group-joined input-group-solid">
                                <input class="form-control pe-0" type="text" placeholder="Procurar por..." aria-label="Search" aria-describedby="basic-addon2" />
                                <div class="input-group-text"><i data-feather="Procurar"></i></div>
                            </div>
                        </form>
                    </div>
                </li>
                <!-- Alerts Dropdown-->

                <!-- Messages Dropdown-->

                <!-- User Dropdown-->
                <li class="nav-item dropdown no-caret dropdown-user me-3 me-lg-4">
                    <a class="btn btn-icon btn-transparent-dark dropdown-toggle" id="navbarDropdownUserImage" href="javascript:void(0);" role="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><img class="img-fluid" src="assets/img/illustrations/profiles/profile-1.png" /></a>
                    <div class="dropdown-menu dropdown-menu-end border-0 shadow animated--fade-in-up" aria-labelledby="navbarDropdownUserImage">
                        <h6 class="dropdown-header d-flex align-items-center">
                            <img class="dropdown-user-img" src="assets/img/illustrations/profiles/profile-1.png" />
                            <div class="dropdown-user-details">
                                <div class="dropdown-user-details-name">Valerie Luna</div>
                                <div class="dropdown-user-details-email">vluna@aol.com</div>
                            </div>
                        </h6>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="login.html">
                            <div class="dropdown-item-icon"><i data-feather="log-out"></i></div>
                            Sair
                        </a>
                    </div>
                </li>
            </ul>
        </nav>
        <div id="layoutSidenav">
            <div id="layoutSidenav_nav">
                <nav class="sidenav shadow-right sidenav-light">
                    <div class="sidenav-menu">
                        <div class="nav accordion" id="accordionSidenav">
                            <!-- Sidenav Menu Heading (Account)-->
                            <!-- * * Note: * * Visible only on and above the sm breakpoint-->
                            <div class="sidenav-menu-heading d-sm-none">Account</div>
                            <!-- Sidenav Link (Alerts)-->
                            <!-- * * Note: * * Visible only on and above the sm breakpoint-->
                            <a class="nav-link d-sm-none" href="#!">
                                <div class="nav-link-icon"><i data-feather="bell"></i></div>
                                Alerts
                                <span class="badge bg-warning-soft text-warning ms-auto">4 novos!</span>
                            </a>

                            <!-- Sidenav Menu Heading (Core)-->

                            <div id="layoutSidenav_nav">
                                <nav class="sidenav shadow-right sidenav-light">
                                    <jsp:include page="menu.jsp"/>

                                </nav>

                            </div>

                            <!-- Sidenav Heading (Custom)-->
                        </div>
                    </div>
                </nav>

            </div>
            <div id="layoutSidenav_content">
                <div class="container-fluid">

                    <div class="page-header-title"> <br></div>
                    <div class="row page-header-title">

                    </div>
                </div>
                <!-- Styled timeline component-->
                <div id="timelineStyled">
                    <div class="card mb-4">
                        <div class="card-header">Novos chamados</div>
                        <div class="card-body">
                            <!-- Component Preview-->
                            <div class="sbp-preview">
                                <div class="sbp-preview-content">
                                    <div class="timeline">
                                        <%  List<Chamado> chamados= (List<Chamado>) request.getAttribute("chamados"); 

                                         
                                        %>

                                        <c:forEach var="item" items="${chamados}">


                                            <div class="timeline-item">
                                                <div class="timeline-item-marker">
                                                    <div class="timeline-item-marker-text"> <c:out value="${item.criacao}" /> </div>
                                                    <div class="timeline-item-marker-indicator bg-warning-soft text-warning"><i data-feather="plus"></i></div>
                                                </div>
                                                <div class="timeline-item-content pt-0">
                                                    <div class="card shadow-sm">
                                                        <div class="card-body">
                                                            <h5 ><a class="text-warning" href="alerts.html" data-bs-toggle="modal" data-bs-target="#teste<c:out value="${item.id}" />"><c:out value="${item.cliente.nome}" /> - <c:out value="${item.titulo}" /> - Chamado #<c:out value="${item.id}" /></a></h5>
                                                            <c:out value="${item.texto}" />                                                   </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- MODAL -->
                                            <c:out value="${item.repostas.size()}" />
                                             <div class="modal fade" id="teste<c:out value="${item.id}" />" tabindex="-1" role="dialog" aria-labelledby="myExtraLargeModalLabel" style="display: none;" aria-hidden="true">
                                                            <div class="modal-dialog modal-xl" role="document">
                                                                <div class="modal-content">
                                                                    <div class="mb-4">
                                                                        <!-- Dashboard activity timeline example-->
                                                                        <div class="card card-header-actions">
                                                                            <div class="card-header">
                                                                                <c:out value="${item.cliente.nome}" />  -  <c:out value="${item.titulo}" />  - Chamado #<c:out value="${item.id}" />"
                                                                                <button class="btn-close" type="button" data-bs-dismiss="modal" aria-label="Close"></button>
                                                                            </div>
                                            <c:choose>
                                                <c:when test="${item.repostas.size()> 0}">

                                                    
                                                    <c:forEach var="item2" items="${item.repostas}">


                                                       

                                                                            <div class="card-body">
                                                                                <div class="timeline timeline-xs">
                                                                                    <!-- Timeline Item 1-->
                                                                                    <div class="timeline-item">
                                                                                        <div class="timeline-item-marker">
                                                                                            <div class="timeline-item-marker-text"><c:out value="${item2.criacao}"/></div>

                                                                                            <div class="timeline-item-marker-indicator bg-purple"></div>

                                                                                        </div>
                                                                                        <div class="timeline-item-content">
                                                                                            <c:out value="${item.cliente.nome}"/> -    <c:out value="${item.texto}"/>
                                                                                        </div>

                                                                                    </div>
                                                                                    <div class="timeline timeline-xs">
                                                                                        <!-- Timeline Item 1-->
                                                                                        <div class="timeline-item">
                                                                                            <div class="timeline-item-marker">
                                                                                                <div class="timeline-item-marker-text">                                                                                                <div class="timeline-item-marker-text"><c:out value="${item2.criacao}"/></div>
                                                                                                </div>
                                                                                                <c:choose>
                                                                                                    <c:when test="${item2.funcionario != null}">
                                                                                                        <div class="timeline-item-marker-indicator bg-green"></div>
                                                                                                    </c:when>
                                                                                                    <c:otherwise>
                                                                                                        <div class="timeline-item-marker-indicator bg-purple"></div>
                                                                                                    </c:otherwise>
                                                                                                </c:choose>
                                                                                            </div>
                                                                                            <div class="timeline-item-content">
                                                                                                <c:out value="${item2.funcionario!=null?item2.funcionario.nome: item.cliente.nome}"/>: <c:out value="${item2.texto}"/>
                                                                                            </div>
                                                                                        </div>










                                                                                    </div>
                                                                                </div>
                                                                                <div class="card-header">
                                                                                    Interagir no chamado
                                                                                </div>
                                                                                <form action="CriarResposta?id=<c:out value="${item.id}"/>" method = "post" >
                                                                                    <div class="card-body"><textarea  name="texto" class="lh-base form-control" type="text" placeholder="Escreva..." rows="2"></textarea></div>
                                                                                    <div class="d-grid"></div>
                                                                                    <div class="modal-footer">
                                                                                        <button class="btn btn-danger" type="button" data-bs-dismiss="modal">Finalizar chamado</button>
                                                                                        <button class="fw-100 btn btn-primary" type="submit">Enviar interação</button>
                                                                                    </div>
                                                                                </form>
                                                                            </div>
                                                                      

                                                                   
                                                              
                                                        </c:forEach>
                                                      </div>
                                                                    </div>
                                                                      </div>
                                                            </div>    </div>
                                                    </c:when>
                                                    <c:otherwise>
                                                    <div class="modal fade" id="teste<c:out value="${item.id}" />" tabindex="-1" role="dialog" aria-labelledby="myExtraLargeModalLabel" style="display: none;" aria-hidden="true">
                                                        <div class="modal-dialog modal-xl" role="document">
                                                            <div class="modal-content">
                                                                <div class="mb-4">
                                                                    <!-- Dashboard activity timeline example-->
                                                                    <div class="card card-header-actions">
                                                                        <div class="card-header">
                                                                            <c:out value="${item.cliente.nome}" />  -  <c:out value="${item.titulo}" />  - Chamado #<c:out value="${item.id}" />"
                                                                            <button class="btn-close" type="button" data-bs-dismiss="modal" aria-label="Close"></button>
                                                                        </div>

                                                                        <div class="card-body">
                                                                            <div class="timeline timeline-xs">
                                                                                <!-- Timeline Item 1-->
                                                                                <div class="timeline-item">
                                                                                    <div class="timeline-item-marker">
                                                                                        <div class="timeline-item-marker-text"><c:out value="${item2.criacao}"/></div>

                                                                                        <div class="timeline-item-marker-indicator bg-purple"></div>

                                                                                    </div>
                                                                                    <div class="timeline-item-content">
                                                                                        <c:out value="${item.cliente.nome}"/> -  <c:out value="${item.texto}"/>
                                                                                    </div>
                                                                                </div>









                                                                            </div>
                                                                        </div>
                                                                        <div class="card-header">
                                                                            Interagir no chamado
                                                                        </div>
                                                                        <form action="CriarResposta?id=<c:out value="${item.id}"/>" method = "post" >
                                                                            <div class="card-body"><textarea  name="texto" class="lh-base form-control" type="text" placeholder="Escreva..." rows="2"></textarea></div>
                                                                            <div class="d-grid"></div>
                                                                            <div class="modal-footer">
                                                                                <button class="btn btn-danger" type="button" data-bs-dismiss="modal">Finalizar chamado</button>
                                                                                <button class="fw-100 btn btn-primary" type="submit">Enviar interação</button>
                                                                            </div>
                                                                        </form>
                                                                    </div>

                                                                </div>
                                                            </div>
                                                        </div>

                                                        <li class="nav-item dropdown no-caret d-none d-sm-block me-3 dropdown-notifications">
                                                            <a class="btn btn-icon btn-transparent-dark dropdown-toggle" id="navbarDropdownAlerts" href="javascript:void(0);" role="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i data-feather="bell"></i></a>
                                                            <div class="dropdown-menu dropdown-menu-end border-0 shadow animated--fade-in-up" aria-labelledby="navbarDropdownAlerts">
                                                                <h6 class="dropdown-header dropdown-notifications-header">
                                                                    <i class="me-2" data-feather="bell"></i>
                                                                    Alertas
                                                                </h6>
                                                                <!-- Example Alert 1-->
                                                                <a class="dropdown-item dropdown-notifications-item" href="alerts.html" data-bs-toggle="modal" data-bs-target="#teste<c:out value="${item.id}" />">
                                                                    <div class="dropdown-notifications-item-icon bg-warning"><i data-feather="activity"></i></div>
                                                                    <div class="dropdown-notifications-item-content">
                                                                        <div class="dropdown-notifications-item-content-details">29 dez 2021</div>
                                                                        <div class="dropdown-notifications-item-content-text">Nova interação de Pedro - Estorno </div>
                                                                    </div>
                                                                </a>
                                                                <!-- Example Alert 2-->
                                                                <a class="dropdown-item dropdown-notifications-item" href="#!">
                                                                    <div class="dropdown-notifications-item-icon bg-info"><i data-feather="bar-chart"></i></div>
                                                                    <div class="dropdown-notifications-item-content">
                                                                        <div class="dropdown-notifications-item-content-details">December 22, 2021</div>
                                                                        <div class="dropdown-notifications-item-content-text">Novo chamado de Roberta</div>
                                                                    </div>
                                                                </a>
                                                                <a class="dropdown-item dropdown-notifications-footer" href="#!">Ver todos os alertas</a>
                                                            </div>
                                                        </li>
                                                    </div>
                                                </div>    
                                            </c:otherwise>
                                        </c:choose>




                                    </c:forEach>








                                    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
                                    <script src="js/scripts.js"></script>
                                    </body>
                                    </html>
