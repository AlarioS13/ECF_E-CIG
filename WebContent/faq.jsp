<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<% request.setAttribute("titre", "FAQ"); %>    
<!-- head bootstrap de la page -->
<%@ include file="/WEB-INF/include/head.jsp" %>

 <!-- navbar bootstrap de la page -->
<%@ include file="/WEB-INF/include/navbar.jsp" %>

<!--  Page faq -->

      <div id="content">
        <div class="container">
          <div class="row">
            <div class="col-lg-12">
              <!-- breadcrumb-->
              <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                  <li class="breadcrumb-item"><a href="<%=request.getContextPath()%>/index.jsp">Accueil</a></li>
                  <li aria-current="page" class="breadcrumb-item active">faq</li>
                </ol>
              </nav>
            </div>
            <div class="col-lg-12">
              <div id="contact" class="box">
                <h1>Questions fr&eacute;quentes</h1>
                <p class="lead">Un probl&egrave;me avec une commande? Un produit ne vous convient pas?</p>
                <p>Merci de conctater notre service client, celui-ci est disponible 24/24h et 7/7jrs.</p>
                <hr>
                <div id="accordion">
                  <div class="card border-primary mb-3">
                    <div id="headingOne" class="card-header p-0 border-0">
                      <h4 class="mb-0"><a href="#" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne" class="btn btn-primary d-block text-left rounded-0">1. Que faites-vous en cas de vole de mon produit?</a></h4>
                    </div>
                    <div id="collapseOne" aria-labelledby="headingOne" data-parent="#accordion" class="collapse show">
                      <div class="card-body">
                        <p>Nos produits sont livr&eacute;s par un transporteur ind&eacute;pendant. Tout de fois, vous pouvez suivre ses indications:</p>
                        <ul>
                          <li>Avez-vous donné une adresse de livraison valide?</li>
                          <li>Votre colis est-il toujours en cours de livraison sur le site du transporteur?</li>
                          <li>Le statut de votre commande est-il toujours sur en cours?</li>
                        </ul>
                      </div>
                    </div>
                  </div>
                  <div class="card border-primary mb-3">
                    <div id="headingTwo" class="card-header p-0 border-0">
                      <h4 class="mb-0"><a href="#" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo" class="btn btn-primary d-block text-left rounded-0">2. Quels sont les tarifs postaux?</a></h4>
                    </div>
                    <div id="collapseTwo" aria-labelledby="headingTwo" data-parent="#accordion" class="collapse">
                      <div class="card-body">Les tarifs sont d&eacute;finis selon la politique en vigueur de votre pays. Les taxes appliqu&eacute;es sont en accords avec notre partenaire. Ainsi, les tarifs postaux sont en fonction de votre commande.</div>
                    </div>
                  </div>
                  <div class="card border-primary">
                    <div id="headingThree" class="card-header p-0 border-0">
                      <h4 class="mb-0"><a href="#" data-toggle="collapse" data-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree" class="btn btn-primary d-block text-left rounded-0">3. Livrez-vous &aacute; l'&eacute;tranger?</a></h4>
                    </div>
                    <div id="collapseThree" aria-labelledby="headingThree" data-parent="#accordion" class="collapse">
                      <div class="card-body">Nous livrons uniquement en m&eacute;tropole. Notre partenaire ne propose &aacute; ce jour aucun envoi en dehors de la France m&eacute;trop&ocirc;le n'est pr&eacute;vu. Nous n'h&eacute;siterons pas &aacute; vous tenir informer lorsque nous pourrons effectuer des livraisons &aacute; travers le monde.</div>
                    </div>
                  </div>
                </div>
                <!-- /.accordion-->
              </div>
            </div>
            <!-- /.col-lg-9-->
          </div>
        </div>
      </div>
    
<!--  Footer de la page -->
<%@ include file="/WEB-INF/include/footer.jsp" %>