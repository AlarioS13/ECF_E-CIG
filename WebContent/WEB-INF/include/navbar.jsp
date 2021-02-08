<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="metier.Abonne"%>
<%@ page import="metier.Employe" %>

<% 
Abonne abonne = null;
if ((Abonne)request.getSession().getAttribute("abonne") != null) {
	abonne = (Abonne)request.getSession().getAttribute("abonne");
} ;
Employe employeSession = null;
if ((Employe)session.getAttribute("employe") != null) {
	employeSession = (Employe)session.getAttribute("employe");
}; %>
    
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
              <%if (abonne == null && employeSession == null) { %>
                <li class="list-inline-item"><a href="#" data-toggle="modal" data-target="#login-modal">Connexion</a></li>
                <li class="list-inline-item"><a href="<%=request.getContextPath()%>/e-cig/enregistrer">S'enregistrer</a></li>
                
                <% } else  { %>
                <li class="list-inline-item"><a href="<%=request.getContextPath()%>/deconnexion">Se d&eacute;connecter</a></li>
                <% } %>
                <li class="list-inline-item"><a href="<%=request.getContextPath()%>/e-cig/contact">Contact</a></li>
                
<!-- Phrase de connexion pour l'utilisateur connecté de type Bonjour nomUtilisateur -->
                <li class="list-inline-item">
                <% if (abonne != null){ %> 
                	<a href="<%=request.getContextPath()%>/e-cig/profil"> Bonjour <%= abonne.getNom() %> </a>
                	 <% } else if (employeSession != null) {%>
                	 Bonjour <%= employeSession.getNomEmploye() %>  
                	 <% }else { %> Bonjour Utilisateur <% } %></li>
                
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
                <form action="<%=request.getContextPath()%>/gererIdentification" method="post">
                  <div class="form-group">
                    <input id="email" name="email" type="text" placeholder="votre email" class="form-control">
                  </div>
                  <div class="form-group">
                    <input id="pw" name="pw" type="password" placeholder="votre mot de passe" class="form-control">
                  </div>
                  <p class="text-center">
                    <button type ="submit" class="btn btn-primary"><i class="fa fa-sign-in"></i>Connexion</button>
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
<!-- pages personnelles de chaque membre du groupe -->
                        <ul class="list-unstyled mb-3">
                          <!-- SOFIEN --><li class="nav-item"><a href="<%=request.getContextPath()%>/e-cig/avantages" class="nav-link">Les avantages</a></li>
                          <!-- ENRICK --><li class="nav-item"><a href="<%=request.getContextPath()%>/e-cig/pourquoi" class="nav-link">Pourquoi je vapote</a></li>
                          <!-- LAURENT --><li class="nav-item"><a href="<%=request.getContextPath()%>/e-cig/quesaco" class="nav-link">C'est quoi une cigarette &eacute;lctronique?</a></li>
                        </ul>
                      </div>

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
              <% 
              	if (employeSession != null)		 {
              %> 
              <li class="nav-item"><a href="<%=request.getContextPath()%>/e-cig/admin" class="nav-link">Admin</a></li>
             <%} %>      
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