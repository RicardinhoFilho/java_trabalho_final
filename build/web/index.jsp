<!DOCTYPE html>
<!--
Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Html.html to edit this template
-->
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
          <jsp:include page="header.jsp"/>
        <div id="layoutSidenav">
            <div id="layoutSidenav_nav">
                <nav class="sidenav shadow-right sidenav-light">
                    <jsp:include page="menu.jsp"/>
                    
                </nav>

            </div>
            <div id="layoutSidenav_content">
                <div class="container-fluid">

                    <div class="page-header-title"> <br></div>
                    <div class="row page-header-title">

                        <!-- Earnings (Monthly) Card Example -->
                        <div class="col-xl-3 col-md-6 mb-4">
                            <div class="card border-start-lg border-warning shadow h-100 py-2">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                            <div class="text-xs font-weight-bold text-warning text-uppercase mb-1">
                                                Chamados em aberto</div>
                                            <div class="h5 mb-0 font-weight-bold text-gray-800">4</div>
                                        </div>
                                        <div class="col-auto">
                                            <i class="fas fa-dollar-sign fa-2x text-gray-300"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Earnings (Monthly) Card Example -->
                        <div class="col-xl-3 col-md-6 mb-4">
                            <div class="card border-start-lg border-primary shadow h-100 py-2">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                            <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">
                                                Tempo médio de resolução</div>
                                            <div class="h5 mb-0 font-weight-bold text-gray-800">4H</div>
                                        </div>
                                        <div class="col-auto">
                                            <i class="fas  fa-clock fa-2x text-gray-300"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>


                        <!-- Earnings (Monthly) Card Example -->
                        <div class="col-xl-3 col-md-6 mb-4">
                            <div class="card border-start-lg border-danger shadow h-100 py-2">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                            <div class="text-xs font-weight-bold text-danger text-uppercase mb-1"> Chamados atrasados
                                            </div>
                                            <div class="h5 mb-0 font-weight-bold text-gray-800">258</div>
                                        </div>
                                        <div class="col-auto">
                                            <i class="fas fa-exclamation-triangle fa-2x text-gray-300"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Pending Requests Card Example -->
                        <div class="col-xl-3 col-md-6 mb-4">
                            <div class="card border-start-lg border-success shadow h-100 py-2">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                            <div class="text-xs font-weight-bold text-success text-uppercase mb-1">
                                                Chamados fechados hoje</div>
                                            <div class="h5 mb-0 font-weight-bold text-gray-800">18</div>
                                        </div>
                                        <div class="col-auto">
                                            <i class="fas fa-comments fa-2x text-gray-300"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
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

                                        <div class="timeline-item">
                                            <div class="timeline-item-marker">
                                                <div class="timeline-item-marker-text">01/01/2022</div>
                                                <div class="timeline-item-marker-indicator bg-danger-soft-soft text-danger"><i data-feather="plus"></i></div>
                                            </div>
                                            <div class="timeline-item-content pt-0">
                                                <div class="card shadow-sm">
                                                    <div class="card-body">
                                                        <h5 class="text-danger">Joana - Estorno - Chamado #828</h5>
                                                        Comprei produtos da BEIBE para testar e desde que comecei a usar minha pele piorou muito! Ficou vermelha, sensível e irritada, além disso estou cheia de espinhas, é desesperador! Gostaria de um reembolso, por favor.                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="timeline-item">
                                            <div class="timeline-item-marker">
                                                <div class="timeline-item-marker-text">04/04/2022</div>
                                                <div class="timeline-item-marker-indicator bg-warning-soft text-warning"><i data-feather="plus"></i></div>
                                            </div>
                                            <div class="timeline-item-content pt-0">
                                                <div class="card shadow-sm">
                                                    <div class="card-body">
                                                        <h5 ><a class="text-warning" href="alerts.html" data-bs-toggle="modal" data-bs-target="#exampleModalXl">Pedro - Estorno - Chamado #829</a></h5>
                                                        Comprei produtos da BEIBE para testar e desde que comecei a usar minha pele piorou muito! Ficou vermelha, sensível e irritada, além disso estou cheia de espinhas, é desesperador! Gostaria de um reembolso, por favor.                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="timeline-item">
                                            <div class="timeline-item-marker">
                                                <div class="timeline-item-marker-text">04/04/2022</div>
                                                <div class="timeline-item-marker-indicator bg-warning-soft text-warning"><i data-feather="plus"></i></div>
                                            </div>
                                            <div class="timeline-item-content pt-0">
                                                <div class="card shadow-sm">
                                                    <div class="card-body">
                                                        <h5 class="text-warning">Luis - Fraude - Chamado #830</h5>
                                                        Sinto-me enganada pela BEIBE, não obtive resultado quanto ao uso do produto por dois meses. Minhas manchas parecem que pioraram, estão mais escuras e poros dilatados.                                                </div>

                                                </div>
                                            </div>
                                        </div>
                                        <div class="timeline-item">
                                            <div class="timeline-item-marker">
                                                <div class="timeline-item-marker-text">04/04/2022</div>
                                                <div class="timeline-item-marker-indicator bg-warning-soft text-warning"><i data-feather="plus"></i></div>
                                            </div>
                                            <div class="timeline-item-content ">
                                                <div class="card shadow-sm">
                                                    <div class="card-body">
                                                        <h5 class="text-warning">Roberta - Insatisfação - Chamado #831</h5>
                                                        Há uma semana comprei os produtos e já comecei a usar estava muito feliz e com muitas expectativas, pois são produtos famosos e aparentemente bons. Gostaria de saber o que poderiam fazer para resolver o meu problema, estou muito insatisfeita.                                                </div>
                                                </div>
                                            </div>
                                        </div>

                                    </div>
                                </div>
            </div>

        </div>




                                <!-- MODAL -->
                                <div class="modal fade" id="exampleModalXl" tabindex="-1" role="dialog" aria-labelledby="myExtraLargeModalLabel" style="display: none;" aria-hidden="true">
                                    <div class="modal-dialog modal-xl" role="document">
                                        <div class="modal-content">
                                            <div class="mb-4">
                                                <!-- Dashboard activity timeline example-->
                                                <div class="card card-header-actions">
                                                    <div class="card-header">
                                                        Pedro - Estorno - Chamado #831
                                                        <button class="btn-close" type="button" data-bs-dismiss="modal" aria-label="Close"></button>
                                                    </div>
                                                    <div class="card-body">
                                                <div class="timeline timeline-xs">
                                                    <!-- Timeline Item 1-->
                                                    <div class="timeline-item">
                                                        <div class="timeline-item-marker">
                                                            <div class="timeline-item-marker-text">2 horas</div>
                                                            <div class="timeline-item-marker-indicator bg-green"></div>
                                                        </div>
                                                        <div class="timeline-item-content">
                                                            Gabriel assumiu seu ticket!
                                                        </div>
                                                    </div>
                                                    <!-- Timeline Item 2-->
                                                    <div class="timeline-item">
                                                        <div class="timeline-item-marker">
                                                            <div class="timeline-item-marker-text">2 horas</div>
                                                            <div class="timeline-item-marker-indicator bg-green"></div>
                                                        </div>
                                                        <div class="timeline-item-content">
                                                            Gabriel: Sentimos muito que tenha passado por isso! Pode me passar mais detalhes do que aconteceu?
                                                        </div>
                                                    </div>
                                                    <!-- Timeline Item 3-->
                                                    <div class="timeline-item">
                                                        <div class="timeline-item-marker">
                                                            <div class="timeline-item-marker-text">2 horas</div>
                                                            <div class="timeline-item-marker-indicator bg-purple"></div>
                                                        </div>
                                                        <div class="timeline-item-content">
                                                            Pedro: Comprei produtos da BEIBE para testar e desde que comecei a usar minha pele piorou muito! Ficou vermelha, sensível e irritada, além disso estou cheia de espinhas, é desesperador!
                                                        </div>
                                                    </div>
                                                    <!-- Timeline Item 4-->
                                                    <div class="timeline-item">
                                                        <div class="timeline-item-marker">
                                                            <div class="timeline-item-marker-text">2 horas</div>
                                                            <div class="timeline-item-marker-indicator bg-green"></div>
                                                        </div>
                                                        <div class="timeline-item-content">Gabriel: Poxa! Que pena</div>
                                                    </div>
                                                    <!-- Timeline Item 5-->
                                                    <div class="timeline-item">
                                                        <div class="timeline-item-marker">
                                                            <div class="timeline-item-marker-text">30 min</div>
                                                            <div class="timeline-item-marker-indicator bg-purple"></div>
                                                        </div>
                                                        <div class="timeline-item-content">
                                                            Pedro: PENA????????? EU QUERO MEU DINHEIRO
                                                        </div>
                                                    </div>
                                                    <!-- Timeline Item 6-->
                                                    <div class="timeline-item">
                                                        <div class="timeline-item-marker">
                                                            <div class="timeline-item-marker-text">28 min</div>
                                                            <div class="timeline-item-marker-indicator bg-green"></div>
                                                        </div>
                                                        <div class="timeline-item-content">
                                                            Gabriel: Sua solicitação será analisada.
                                                        </div>
                                                    </div>
                                                    <!-- Timeline Item 7-->
                                                    <div class="timeline-item">
                                                        <div class="timeline-item-marker">
                                                            <div class="timeline-item-marker-text">Agora</div>
                                                            <div class="timeline-item-marker-indicator bg-purple"></div>
                                                        </div>
                                                        <div class="timeline-item-content">
                                                            Pedro: Quanto tempo demora?
                                                        </div>
                                                    </div>


                                                </div>
                                            </div>
                                           </div>
                                        </div>
                                    <div class="card-header">
                                        Interagir no chamado
                                    </div>
                                    <div class="card-body"><textarea class="lh-base form-control" type="text" placeholder="Escreva..." rows="2"></textarea></div>
                                    <div class="d-grid"></div>
                                    <div class="modal-footer">
                                            <button class="btn btn-danger" type="button" data-bs-dismiss="modal">Finalizar chamado</button>
                                            <button class="fw-100 btn btn-primary">Enviar interação</button>
                                    </div>
                                        </div>
                                    </div>
                                    </div>
                    </div>
                            </div>
                        </div>
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="js/scripts.js"></script>
    </body>
</html>
