<%-- 
    Document   : produtos
    Created on : 24 de ago de 2022, 16:43:36
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="com.beibe.model.Produto" %>
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
        <title>Groups List - SB Admin Pro</title>
        <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
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
            <li class="nav-item dropdown no-caret d-none d-sm-block me-3 dropdown-notifications">
                <a class="btn btn-icon btn-transparent-dark dropdown-toggle" id="navbarDropdownAlerts" href="javascript:void(0);" role="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i data-feather="bell"></i></a>
                <div class="dropdown-menu dropdown-menu-end border-0 shadow animated--fade-in-up" aria-labelledby="navbarDropdownAlerts">
                    <h6 class="dropdown-header dropdown-notifications-header">
                        <i class="me-2" data-feather="bell"></i>
                        Alertas
                    </h6>
                    <!-- Example Alert 1-->
                    <a class="dropdown-item dropdown-notifications-item" href="alerts.html" data-bs-toggle="modal" data-bs-target="#exampleModalXl">
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
                         <jsp:include page="menu.jsp"/>
                </div>
            </nav>

        </div>
            <div id="layoutSidenav_content">
                <main>
                    <header class="page-header page-header-compact page-header-light border-bottom bg-white mb-4">
                        <div class="container-fluid px-4">
                            <div class="page-header-content">
                                <div class="row align-items-center justify-content-between pt-3">
                                    <div class="col-auto mb-3">
                                        <h1 class="page-header-title">
                                            <div class="page-header-icon"><i data-feather="box"></i></div>
                                            Produtos
                                        </h1>
                                    </div>
                                    <div class="col-12 col-xl-auto mb-3">
                                        <button class="btn btn-sm btn-light text-primary" type="button" data-bs-toggle="modal" data-bs-target="#createGroupModal">
                                            <i class="me-1" data-feather="plus"></i>
                                            Cadastrar novo produto
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </header>
                    <!-- Main page content-->
                    <div class="container-fluid px-4">
                        <div class="card">
                            <div class="card-body">
                                <table id="datatablesSimple">
                                    <thead>
                                        <tr>
                                            <th>Nome do produto</th>
                                            <th>Preço</th>
                                            <th>Data de criação</th>
                                            <th>Data de validade</th>
                                            <th>Saldo</th>
                                            <th>Ações</th>
                                        </tr>
                                    </thead>
                                    <tfoot>
                                        <tr>
                                            <th>Nome do produto</th>
                                            <th>Preço</th>
                                            <th>Data de criação</th>
                                            <th>Data de validade</th>
                                            <th>Saldo</th>
                                            <th>Ações</th>
                                        </tr>
                                    </tfoot>
                                    <tbody>
                                         <%  List<Produto> produtos= (List<Produto>) request.getAttribute("produtos"); 
                                         
                                         %>
                                    <c:forEach var="item" items="${produtos}">
                                        <tr>
                                     <td><c:out value="${item.nome}" /></td>
                                      <td>R$<c:out value="${item.preco}" /></td>
                                            <td><c:out value="${item.data_criacao}" /></td>
                                            <td><c:out value="${item.validade}" /></td>
                                            <td><c:out value="${item.saldo}" /></td>
                                            <td>
                                                <button class="btn btn-datatable btn-icon btn-transparent-dark me-2" type="button" data-bs-toggle="modal" data-bs-target="#editGroupModal<c:out value="${item.id}" />">Editar</button>
                                                <a class="btn btn-datatable btn-icon btn-transparent-dark" href="ExcluirProduto?id=<c:out value="${item.id}" />">Excluir</a>
                                            </td>
                                            </tr>
                                            
                                            
                                             <!-- Edit group modal-->
                    <div class="modal fade" id="editGroupModal<c:out value="${item.id}" />" tabindex="-1" role="dialog" aria-labelledby="editGroupModalLabel" aria-hidden="true">
                        <div class="modal-dialog" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="editGroupModalLabel">Editar produto</h5>
                                    <button class="btn-close" type="button" data-bs-dismiss="modal" aria-label="Close"></button>
                                </div>
                                <div class="modal-body">
                                    <form action="EditarProduto?id=<c:out value="${item.id}"/>" method="post">
                                      
                                          <div class="mb-0">
                                            <label class="mb-1 small text-muted" for="formGroupName">Nome do produto: </label>
                                            <input name="nome" class="form-control" id="formGroupName" type="text" placeholder="Digite o nome do produto" value="<c:out value="${item.nome}" />"/>
                                        </div>
                                          <div class="mb-0">
                                            <label class="mb-1 small text-muted" for="formGroupName">Saldo disponível: </label>
                                            <input class="form-control" name="saldo"  id="formSaldo" type="text" placeholder="Digite o saldo" value="<c:out value="${item.saldo}" />" />
                                        </div>
                                        <div class="mb-0">
                                            <label class="mb-1 small text-muted" for="formGroupName">Data de validade: </label>
                                            <input name="validade" class="form-control" id="formQtdEdit" type="date"  />
                                        </div>
                                        <div class="mb-0">
                                            <label class="mb-1 small text-muted" for="formGroupName">Preço: </label>
                                            <input name="preco" class="form-control" id="formPrecoEdit" type="number" placeholder="Digite o preço" value="<c:out value="${item.preco}" />" />
                                        </div>
                                        
                                          <div class="modal-footer">
                                    <button class="btn btn-danger-soft text-danger" type="button" data-bs-dismiss="modal">Cancelar</button>
                                    <button class="btn btn-primary-soft text-light" type="submit">Salvar</button>
                                </div>

                                    </form>
                                        </div>
                                        </div>
                                </div>
                              
                            </div>
                                         
                    </div>
                                            
                                    </c:forEach>
                                    
                                       
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    <!-- Create group modal-->
                    <div class="modal fade" id="createGroupModal" tabindex="-1" role="dialog" aria-labelledby="createGroupModalLabel" aria-hidden="true">
                        <div class="modal-dialog" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="createGroupModalLabel">Cadastrar produto</h5>
                                    <button class="btn-close" type="button" data-bs-dismiss="modal" aria-label="Close"></button>
                                </div>
                                <div class="modal-body">
                                    <form method = "post"  action = "CriarProduto">
                                        <div class="mb-0">
                                            <label class="mb-1 small text-muted" for="formGroupName">Nome do produto: </label>
                                            <input class="form-control" name="nome" id="formNomeProduto" type="text" placeholder="Digite o nome do produto" />
                                        </div>
                                        <div class="mb-0">
                                            <label class="mb-1 small text-muted" for="formGroupName">Saldo disponível: </label>
                                            <input class="form-control" name="saldo"  id="formSaldo" type="text" placeholder="Digite o saldo" />
                                        </div>
                                        <div class="mb-0">
                                            <label class="mb-1 small text-muted" for="formGroupName">Data de validade: </label>
                                            <input class="form-control" name="validade"  id="formQtd" type="date"  />
                                        </div>
                                        <div class="mb-0">
                                            <label class="mb-1 small text-muted" for="formGroupName">Preço: </label>
                                            <input class="form-control" name="preco"  id="formPreco" type="number" placeholder="Digite o preço" />
                                        </div>
                                        
                                         <div class="modal-footer">
                                    <button class="btn btn-danger-soft text-danger" type="button" data-bs-dismiss="modal">Cancel</button>
                                    <button class="btn btn-primary-soft text-primary" type="submit">Cadastrar produto</button>
                                </div>
                                    </form>
                                </div>
                               
                            </div>
                        </div>
                    </div>
                   
                </main>

            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="js/scripts.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
        <script src="js/datatables/datatables-simple-demo.js"></script>
    </body>
</html>

