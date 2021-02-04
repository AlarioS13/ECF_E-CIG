<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">   
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Ma commande</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="robots" content="all,follow">
    <!-- Bootstrap CSS-->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/vendor/bootstrap/css/bootstrap.min.css">
    <!-- Font Awesome CSS-->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/vendor/font-awesome/css/font-awesome.min.css">
    <!-- Google fonts - Roboto -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,700">
    <!-- owl carousel-->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/vendor/owl.carousel/assets/owl.carousel.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/vendor/owl.carousel/assets/owl.theme.default.css">
    <!-- theme stylesheet-->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/style.black.css" id="theme-stylesheet">
    <!-- Leaflet CSS - For the map-->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/leaflet/1.4.0/leaflet.css">
<!-- Custom stylesheet - for your changes-->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/custom.css">
    <!-- Favicon-->
    <link rel="shortcut icon" href="<%=request.getContextPath()%>/img/favicon.png">
    <!-- Tweaks for older IEs--><!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
  </head>
<body>
    <!-- navbar-->
    <header class="header mb-5">
      <!--
      *** TOPBAR ***
      _________________________________________________________
      -->
      <div id="top">
        <div class="container">
          <div class="row">
            <div class="col-lg-6 offer mb-3 mb-lg-0"><a href="#" class="btn btn-success btn-sm">Offre du jour</a><a class="ml-1">Pour P&acirc;ques 10€ offerts sur votre premi&egrave;re commande</a></div>
            <div class="col-lg-6 text-center">
              <ul class="menu list-inline mb-0">
                <li class="list-inline-item"><a href="#" data-toggle="modal" data-target="#login-modal">Connexion</a></li>
                <li class="list-inline-item"><a href="<%=request.getContextPath()%>/e-cig/enregistrer">S'enregistrer</a></li>
                <li class="list-inline-item"><a href="<%=request.getContextPath()%>/e-cig/contact">Contact</a></li>
                
<!-- Phrase de connexion pour l'utilisateur connecté de type Bonjour nomUtilisateur -->
                <li class="list-inline-item"><a href="#" class="text-warning" >Bonjour Utilisateur</a></li>
                
              </ul>
            </div>
          </div>
        </div>
        <div id="login-modal" tabindex="-1" role="dialog" aria-labelledby="Login" aria-hidden="true" class="modal fade">
          <div class="modal-dialog modal-sm">
            <div class="modal-content">
              <div class="modal-header">
                <h5 class="modal-title">Connexion abonn&eacute;</h5>
                <button type="button" data-dismiss="modal" aria-label="Close" class="close"><span aria-hidden="true">×</span></button>
              </div>
              <div class="modal-body">
                <form action="#" method="post">
                  <div class="form-group">
                    <input id="email-modal" type="text" placeholder="votre email" class="form-control">
                  </div>
                  <div class="form-group">
                    <input id="password-modal" type="password" placeholder="votre mot de passe" class="form-control">
                  </div>
                  <p class="text-center">
                    <button class="btn btn-primary"><i class="fa fa-sign-in"></i>Connexion</button>
                  </p>
                </form>
                <p class="text-center text-muted">Pas encore de compte?</p>
                <p class="text-center text-muted"><a href="<%=request.getContextPath()%>/e-cig/enregistrer"><strong>Enregristrez-vous maintenant!</strong><br/></a>Cr&eacute;ez votre compte en moins d'une minutes!</p>
              </div>
            </div>
          </div>
        </div>
        <!-- *** TOP BAR END ***-->
        
        
      </div>
      <nav class="navbar navbar-expand-lg">
        <div class="container"><a href="<%=request.getContextPath()%>/e-cig/" class="navbar-brand home"><img src="<%=request.getContextPath()%>/img/logo.png" alt="Logo E-Cig" class="d-none d-md-inline-block"><img src="<%=request.getContextPath()%>/img/logo-small.png" alt="Logo E-Cig" class="d-inline-block d-md-none"><span class="sr-only">E-CIG - retour &aacute; l'accueil</span></a>
          <div class="navbar-buttons">
            <button type="button" data-toggle="collapse" data-target="#navigation" class="btn btn-outline-secondary navbar-toggler"><span class="sr-only">Basculer vers la navigation</span><i class="fa fa-align-justify"></i></button>
            <button type="button" data-toggle="collapse" data-target="#search" class="btn btn-outline-secondary navbar-toggler"><span class="sr-only">Basculer sur la recherche</span><i class="fa fa-search"></i></button><a href="<%=request.getContextPath()%>/e-cig/panier" class="btn btn-outline-secondary navbar-toggler"><i class="fa fa-shopping-cart"></i></a>
          </div>
          <div id="navigation" class="collapse navbar-collapse">
            <ul class="navbar-nav mr-auto">
              <li class="nav-item"><a class="nav-link active" href="<%=request.getContextPath()%>/e-cig/">Accueil</a></li>
              <li class="nav-item"><a href="<%=request.getContextPath()%>/e-cig/produits" class="nav-link">Nos Produits</a></li>
              <li class="nav-item dropdown menu-large"><a href="#" data-toggle="dropdown" data-hover="dropdown" data-delay="200" class="dropdown-toggle nav-link">Blog<b class="caret"></b></a>
                <ul class="dropdown-menu megamenu">
                  <li>
                    <div class="row">
                      <div class="col-md-6 col-lg-3">
                        <h5>Je vapote, tu vapotes </h5>
                        <ul class="list-unstyled mb-3">
                          <li class="nav-item"><a href="<%=request.getContextPath()%>/e-cig/avantages" class="nav-link">Les avantages</a></li>
                          <li class="nav-item"><a href="<%=request.getContextPath()%>/e-cig/pourquoi" class="nav-link">Pourquoi je vapote</a></li>
                          <li class="nav-item"><a href="<%=request.getContextPath()%>/e-cig/quesaco" class="nav-link">C'est quoi une cigarette &eacute;lctronique?</a></li>
                        </ul>
                      </div>
<!-- pages personnelles de chaque membre du groupe -->
                      <div class="col-md-6 col-lg-3">
                        <h5>La reglementation </h5>
                        <ul class="list-unstyled mb-3">
                          <!-- SOFIEN --><li class="nav-item"><a href="<%=request.getContextPath()%>/e-cig/agevapo" class="nav-link">&Aacute; quel &acirc;ge vapoter? </a></li>
                          <!-- ENRICK --><li class="nav-item"><a href="<%=request.getContextPath()%>/e-cig/ouvapo" class="nav-link">O&uacute; vapoter? </a></li>
                          <!-- LAURENT --><li class="nav-item"><a href="<%=request.getContextPath()%>/e-cig/nicotine" class="nav-link">La nicotine c'est quoi?</a></li>
                        </ul>
                      </div>
                    </div>
                  </li>
                </ul>
              </li>
              
              <!-- Lien vers admin / accessible uniquement si Employé connecté -->
              <li class="nav-item"><a href="<%=request.getContextPath()%>/e-cig/admin" class="nav-link">Admin</a></li> 
                      
            </ul>
            <div class="navbar-buttons d-flex justify-content-end">
              <!-- /.nav-collapse-->
              <div id="search-not-mobile" class="navbar-collapse collapse"></div><a data-toggle="collapse" href="#search" class="btn navbar-btn btn-primary d-none d-lg-inline-block"><span class="sr-only">Recherche</span><i class="fa fa-search"></i></a>
              
              <!-- Prévoir de modifier dans span le nombre d'article -->
              <div id="basket-overview" class="navbar-collapse collapse d-none d-lg-block"><a href="<%=request.getContextPath()%>/e-cig/panier" class="btn btn-primary navbar-btn"><i class="fa fa-shopping-cart"></i><span>3</span></a></div>
            </div>
          </div>
        </div>
      </nav>
      <div id="search" class="collapse">
        <div class="container">
          <form role="search" class="ml-auto">
            <div class="input-group">
              <input type="text" placeholder="Vous recherchez?" class="form-control">
              <div class="input-group-append">
                <button type="button" class="btn btn-primary"><i class="fa fa-search"></i></button>
              </div>
            </div>
          </form>
        </div>
      </div>
    
    </header>
    <div id="all">
      <div id="content">
        <div class="container">
          <div class="row">
            <div class="col-lg-12">
              <!-- breadcrumb-->
              <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                  <li class="breadcrumb-item"><a href="#">Home</a></li>
                  <li aria-current="page" class="breadcrumb-item"><a href="#">My orders</a></li>
                  <li aria-current="page" class="breadcrumb-item active">Order # 1735</li>
                </ol>
              </nav>
            </div>
             <div class="col-lg-3">
              <!--
              *** CUSTOMER MENU ***
              _________________________________________________________
              -->
              <div class="card sidebar-menu">
                <div class="card-header">
                  <h3 class="h4 card-title">Customer section</h3>
                </div>
                <div class="card-body">
                  <ul class="nav nav-pills flex-column"><a href="customer-orders.html" class="nav-link active"><i class="fa fa-list"></i> Ma commande</a><a href="customer-wishlist.html" class="nav-link"><i class="fa fa-heart"></i> My wishlist</a><a href="customer-account.html" class="nav-link"><i class="fa fa-user"></i> Mon compte</a><a href="index.html" class="nav-link"><i class="fa fa-sign-out"></i> Se deconnecter</a></ul>
                </div>
              </div>
              <!-- /.col-lg-3-->
              <!-- *** CUSTOMER MENU END ***-->
            </div>
            <div id="customer-order" class="col-lg-9">
              <div class="box">
                <h1>Commande #1735</h1>
                <p class="lead">>La commande #1735 a été effectuée le <strong>22/01/2021</strong> et est <strong>en préparation</strong>.</p>
                <p class="text-muted">Si vous avez des questions,  <a href="contact.html">contactez-nous</a>, notre service client fonctionne 0/7.</p>
                <hr>
                <div class="table-responsive mb-4">
                  <table class="table">
                    <thead>
                      <tr>
                        <th colspan="2">Produit</th>
                        <th>Quantité</th>
                        <th>Prix unitaire</th>
                        <th>Remise</th>
                        <th>Total</th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <td><a href="#"><img src="<%=request.getContextPath()%>/img/aegis.png" alt=" boxe Aegis"></a></td>
                        <td><a href="#">Aegis box</a></td>
                        <td>1</td>
                        <td>48,90€</td>
                        <td>0.00€</td>
                        <td>48,90€</td>
                      </tr>
                      <tr>
                        <td><a href="#"><img src="<%=request.getContextPath()%>/img/eliquid.png" alt="e-liquide"></a></td>
                        <td><a href="#">E liquide</a></td>
                        <td>3</td>
                        <td>6,90€</td>
                        <td>0.00€</td>
                        <td>20,70€</td>
                      </tr>
                    </tbody>
                    <tfoot>
                      <tr>
                        <th colspan="5" class="text-right">Sous total</th>
                        <th>69,60€</th>
                      </tr>
                      <tr>
                        <th colspan="5" class="text-right">Frais de port</th>
                        <th>0,00€</th>
                      </tr>
                      <tr>
                        <th colspan="5" class="text-right">Taxe</th>
                        <th>0,00€</th>
                      </tr>
                      <tr>
                        <th colspan="5" class="text-right">Total</th>
                        <th>69,60€</th>
                      </tr>
                    </tfoot>
                  </table>
                </div>
                <!-- /.table-responsive-->
                <div class="row addresses">
                  <div class="col-lg-6">
                    <h2>Invoice address</h2>
                    <p>John Brown<br>13/25 New Avenue<br>New Heaven<br>45Y 73J<br>England<br>Great Britain</p>
                  </div>
                  <div class="col-lg-6">
                    <h2>Shipping address</h2>
                    <p>John Brown<br>13/25 New Avenue<br>New Heaven<br>45Y 73J<br>England<br>Great Britain</p>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!--
    *** FOOTER ***
    _________________________________________________________
    -->
    <div id="footer">
      <div class="container">
        <div class="row">
          <div class="col-lg-3 col-md-6">
            <h4 class="mb-3">Pages</h4>
            <ul class="list-unstyled">
              <li><a href="text.html">About us</a></li>
              <li><a href="text.html">Terms and conditions</a></li>
              <li><a href="faq.html">FAQ</a></li>
              <li><a href="contact.html">Contact us</a></li>
            </ul>
            <hr>
            <h4 class="mb-3">User section</h4>
            <ul class="list-unstyled">
              <li><a href="#" data-toggle="modal" data-target="#login-modal">Login</a></li>
              <li><a href="register.html">Regiter</a></li>
            </ul>
          </div>
          <!-- /.col-lg-3-->
          <div class="col-lg-3 col-md-6">
            <h4 class="mb-3">Top categories</h4>
            <h5>Men</h5>
            <ul class="list-unstyled">
              <li><a href="category.html">T-shirts</a></li>
              <li><a href="category.html">Shirts</a></li>
              <li><a href="category.html">Accessories</a></li>
            </ul>
            <h5>Ladies</h5>
            <ul class="list-unstyled">
              <li><a href="category.html">T-shirts</a></li>
              <li><a href="category.html">Skirts</a></li>
              <li><a href="category.html">Pants</a></li>
              <li><a href="category.html">Accessories</a></li>
            </ul>
          </div>
          <!-- /.col-lg-3-->
          <div class="col-lg-3 col-md-6">
            <h4 class="mb-3">Where to find us</h4>
            <p><strong>Obaju Ltd.</strong><br>13/25 New Avenue<br>New Heaven<br>45Y 73J<br>England<br><strong>Great Britain</strong></p><a href="contact.html">Go to contact page</a>
            <hr class="d-block d-md-none">
          </div>
          <!-- /.col-lg-3-->
          <div class="col-lg-3 col-md-6">
            <h4 class="mb-3">Get the news</h4>
            <p class="text-muted">Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.</p>
            <form>
              <div class="input-group">
                <input type="text" class="form-control"><span class="input-group-append">
                  <button type="button" class="btn btn-outline-secondary">Subscribe!</button></span>
              </div>
              <!-- /input-group-->
            </form>
            <hr>
            <h4 class="mb-3">Stay in touch</h4>
            <p class="social"><a href="#" class="facebook external"><i class="fa fa-facebook"></i></a><a href="#" class="twitter external"><i class="fa fa-twitter"></i></a><a href="#" class="instagram external"><i class="fa fa-instagram"></i></a><a href="#" class="gplus external"><i class="fa fa-google-plus"></i></a><a href="#" class="email external"><i class="fa fa-envelope"></i></a></p>
          </div>
          <!-- /.col-lg-3-->
        </div>
        <!-- /.row-->
      </div>
      <!-- /.container-->
    </div>
    <!-- /#footer-->
    <!-- *** FOOTER END ***-->
    
    
    <!--
    *** COPYRIGHT ***
    _________________________________________________________
    -->
    <div id="copyright">
      <div class="container">
        <div class="row">
          <div class="col-lg-6 mb-2 mb-lg-0">
            <p class="text-center text-lg-left">©2019 Your name goes here.</p>
          </div>
          <div class="col-lg-6">
            <p class="text-center text-lg-right">Template design by <a href="https://bootstrapious.com/">Bootstrapious</a>
              <!-- If you want to remove this backlink, pls purchase an Attribution-free License @ https://bootstrapious.com/p/obaju-e-commerce-template. Big thanks!-->
            </p>
          </div>
        </div>
      </div>
    </div>
    <!-- *** COPYRIGHT END ***-->
    <!-- JavaScript files-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="vendor/jquery.cookie/jquery.cookie.js"> </script>
    <script src="vendor/owl.carousel/owl.carousel.min.js"></script>
    <script src="vendor/owl.carousel2.thumbs/owl.carousel2.thumbs.js"></script>
    <script src="js/front.js"></script>
  </body>
</html>