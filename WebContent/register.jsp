<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<% request.setAttribute("titre", "S'enregistrer/Se connecter"); %>    
<!-- head bootstrap de la page -->
<%@ include file="/WEB-INF/include/head.jsp" %>

 <!-- navbar bootstrap de la page -->
<%@ include file="/WEB-INF/include/navbar.jsp" %>

<!--  Page s'enregistrer -->

      <div id="content">
        <div class="container">
          <div class="row">
            <div class="col-lg-12">
              <!-- breadcrumb-->
              <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                  <li class="breadcrumb-item"><a href="<%=request.getContextPath()%>/e-cig/accueil">Accueil</a></li>
                  <li aria-current="page" class="breadcrumb-item active">S'enregistrer / Se connecter</li>
                </ol>
              </nav>
            </div>
            <div class="col-lg-6">
              <div class="box">
                <h1>Nouveau compte</h1>
                <p class="lead">pas encore de compte?</p>
                <p>Avec un compte, b&eacute;n&eacute;ficiez de tarifs pr&eacute;f&eacute;renciels, et d'offres exceptionelles!</p>
                <p class="text-muted">Une question? Contactez notre service client <a href="<%=request.getContextPath()%>/contact.jsp">Contactez-nous</a>, notre service client&egrave;le est ouvert 24/24h et 7/7jrs.</p>
                <hr>
                <form action="<%=request.getContextPath()%>/creerAbo" method="post">
                  <div class="form-group">
                    <label for="name">Votre Nom</label>
                    <input id="name" name="name" type="text" class="form-control">
                  </div>
                  <div class="form-group">
                    <label for="email">Votre email</label>
                    <input id="email" name ="email" type="text" class="form-control">
                  </div>
                  <div class="form-group">
                    <label for="pw">Votre mot de passe</label>
                    <input id="pw" name="pw" type="password" class="form-control">
                  </div>
                  <div class="text-center">
                    <button type="submit" class="btn btn-primary"><i class="fa fa-user-md"></i>S'enregistrer</button>
                  </div>
                </form>
              </div>
            </div>
            
            <div class="col-lg-6">
              <div class="box">
                <h1>Connexion</h1>
                <p class="lead">Vous &ecirc;tes d&eacute;j&aacute; client?</p>
                <p class="text-muted">Connectez-vous afin de valider votre commande, et profitez de nos offres exclusives</p>
                <hr>
                <form action="<%=request.getContextPath()%>/gererIdentification" method="post">
                  <div class="form-group">
                    <label for="email">Votre email</label>
                    <input id="email" name="email" type="text" class="form-control">
                  </div>
                  <div class="form-group">
                    <label for="pw">Votre mot de passe</label>
                    <input id="pw" name="pw" type="password" class="form-control">
                  </div>
                  <div class="text-center">
                    <button type="submit" class="btn btn-primary"><i class="fa fa-sign-in"></i>Connexion</button>
                  </div>
                </form>
              </div>
            </div>
          </div>
        </div>
      </div>
    
<!--  Footer de la page -->
<%@ include file="/WEB-INF/include/footer.jsp" %>