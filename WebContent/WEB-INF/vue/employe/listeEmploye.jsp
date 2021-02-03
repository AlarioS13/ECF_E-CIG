<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    
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
                  <li aria-current="page" class="breadcrumb-item active">Gestion des Employé</li>
                </ol>
              </nav>
            </div>
            <div class="col-lg-3">
              <!--
              *** PAGES MENU ***
              _________________________________________________________
              -->
              <div class="card sidebar-menu mb-4">
                <div class="card-header">
                  <h3 class="h4 card-title">Employé</h3>
                </div>
                <div class="card-body">
                  <ul class="nav nav-pills flex-column">
                  	<li><p>Nom</p></li>
                    <li><p>Pr&eacute;nom</p></li>
                    <li><p>Date de naissance</p></li>
                    <li><p>Statut</p></li>
                  </ul>
                </div>
              </div>
              <!-- *** PAGES MENU END ***-->
              </div>
            <div class="col-lg-9">
              <div id="contact" class="box">
                <h1>Gestion des employés</h1>
              </div>
            </div>
            <!-- /.col-lg-9-->
          </div>
        </div>
      </div>
    
<!--  Footer de la page -->
<%@ include file="/WEB-INF/include/footer.jsp" %>