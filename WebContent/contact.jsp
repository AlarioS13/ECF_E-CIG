<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<% request.setAttribute("titre", "Contactez-nous"); %>
<!-- head bootstrap de la page -->
<%@ include file="/WEB-INF/include/head.jsp" %>

 <!-- navbar bootstrap de la page -->
<%@ include file="/WEB-INF/include/navbar.jsp" %>

<!--  Page contact -->
    <div id="all">
      <div id="content">
        <div class="container">
          <div class="row">
            <div class="col-lg-12">
              <!-- breadcrumb-->
              <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                  <li class="breadcrumb-item"><a href="<%=request.getContextPath()%>/index.jsp">Accueil</a></li>
                  <li aria-current="page" class="breadcrumb-item active">Contact</li>
                </ol>
              </nav>
            </div>
            <div class="col-lg-12">
              <div id="contact" class="box">
                <h1>Contactez nous</h1>
                <p class="lead">Vous souhaitez en savoir plus sur nos produits? Vous avez un probl&egrave;me avec l'un de nos produits?</p>
                <p>Merci de nous laisser un message, notre service client vous r&eacute;pondra dans les meilleurs d&eacute;lais!</p>
                <hr>
                <div class="row">
                  <div class="col-md-4">
                    <h3><i class="fa fa-map-marker"></i>Adresse</h3>
                    <p>1 Rue Saint S&eacute;bastien<br>13006<br>Marseille<br>France<br></p>
                  </div>
                  <!-- /.col-sm-4-->
                  <div class="col-md-4">
                    <h3><i class="fa fa-phone"></i>Service Client</h3>
                    <p class="text-muted">Gr&acirc;ce &aacute; notre numéro vert, n'h&eacute;sitez pas &aacute; nous contacter</p>
                    <p><strong>+33 4 12 23 34 45</strong></p>
                  </div>
                  <!-- /.col-sm-4-->
                  <div class="col-md-4">
                    <h3><i class="fa fa-envelope"></i>Service Technique</h3>
                    <p class="text-muted">Pour tout problème de livraison, &eacute;vrivez-nous!</p>
                    <ul>
                      <li><strong><a href="mailto:">info@fakeemail.com</a></strong></li>
                      <li><strong><a href="#">Ticket</a></strong> - pour suivre votre num&eacute;ro ticket</li>
                    </ul>
                  </div>
                  <!-- /.col-sm-4-->
                </div>
                <!-- /.row-->
                <hr>
                <div id="map"></div>
                <hr>
                <h2>Formulaire de contact</h2>
                <form>
                  <div class="row">
                    <div class="col-md-6">
                      <div class="form-group">
                        <label for="firstname">Nom de famille</label>
                        <input id="firstname" type="text" class="form-control">
                      </div>
                    </div>
                    <div class="col-md-6">
                      <div class="form-group">
                        <label for="lastname">Prénom usuel</label>
                        <input id="lastname" type="text" class="form-control">
                      </div>
                    </div>
                    <div class="col-md-6">
                      <div class="form-group">
                        <label for="email">Email</label>
                        <input id="email" type="text" class="form-control">
                      </div>
                    </div>
                    <div class="col-md-6">
                      <div class="form-group">
                        <label for="subject">Dites-nous tout</label>
                        <input id="subject" type="text" class="form-control">
                      </div>
                    </div>
                    <div class="col-md-12">
                      <div class="form-group">
                        <label for="message">Message</label>
                        <textarea id="message" class="form-control"></textarea>
                      </div>
                    </div>
                    <div class="col-md-12 text-center">
                      <button type="submit" class="btn btn-primary"><i class="fa fa-envelope-o"></i>Envoyer</button>
                    </div>
                  </div>
                  <!-- /.row-->
                </form>
              </div>
            </div>
            <!-- /.col-md-9-->
            
          </div>
        </div>
      </div>
    </div>
    
<!--  Footer de la page -->
<%@ include file="/WEB-INF/include/footer.jsp" %>