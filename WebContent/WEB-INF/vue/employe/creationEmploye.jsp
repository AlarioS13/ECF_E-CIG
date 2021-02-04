<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="metier.Employe" %>
<%@ page import="java.util.ArrayList" %>
<jsp:useBean id="employe" class="metier.Employe" scope="session" />
<%
	request.setAttribute("titre", "création d'un employé");
%>

<!-- head bootstrap de la page -->
<%@ include file="/WEB-INF/include/head.jsp"%>

<!-- navbar bootstrap de la page -->
<%@ include file="/WEB-INF/include/navbar.jsp"%>

<!--  Page Création d'un employé -->

<div id="content">
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<!-- breadcrumb-->
				<nav aria-label="breadcrumb">
					<ol class="breadcrumb">
						<li class="breadcrumb-item"><a
							href="<%=request.getContextPath()%>/index.jsp">Accueil</a></li>
						<li class="breadcrumb-item"><a
							href="<%=request.getContextPath()%>/e-cig/admin">Gestion des
								Employ&eacute;s</a></li>
						<li aria-current="page" class="breadcrumb-item active">Création
							d'un employ&eacute;</li>
					</ol>
				</nav>
			</div>
			<div class="col-lg-2">
				<!--
              *** Encadré du responsable ***
              _________________________________________________________
              -->
				<div class="card sidebar-menu mb-4">
					<div class="card-header">
						<h3 class="h4 card-title">Responsable</h3>
					</div>
					<div class="card-body">
						<ul class="nav nav-pills flex-column">
							<li><p class="text-info fw-bold text-uppercase"><%=employe.getNomEmploye() %></p></li>
							<li><p class="text-info fw-bold"><%=employe.getPrenomEmploye() %></p></li>
							<li><p class="text-info fw-bold"><%=employe.getDateNaissEmploye() %></p></li>
						</ul>
					</div>
				</div>
				<!-- *** Fin encadré du responsable ***-->
			</div>
			<div class="col-lg-10">
				<div id="creatEmploye" class="box">
					<h1>CR&Eacute;ATION D'UN EMPLOY&Eacute;</h1>
				</div>
				
							<div class="box">
								<form role="modif" action="" method="post">
									<div class="form-group">
										<div class="row">
											<div class="col-md-4">
												<label for="idEmploye">Identifiant de
													l'employ&eacute;</label> <input id="idEmploye" class="form-control"
													type="text" name="idEmploye" placeholder="RE00" required>
											</div>
											<div class="col-md-4 text-center d-flex align-items-md-center">
												<div
													class="custom-control custom-control-inline custom-radio">
													<input type="radio" class="custom-control-input"
														id="civRadioMonsieur" name="radioBtnEmploye"> <label
														class="custom-control-label" for="civRadioMonsieur">Monsieur</label>
												</div>
												<div
													class="custom-control custom-control-inline custom-radio">
													<input type="radio" class="custom-control-input"
														id="civRadioMadame" name="radioBtnEmploye"> <label
														class="custom-control-label" for="civRadioMadame" >Madame</label>
												</div>
											</div>
										</div>

									</div>
									<div class="form-group">
										<div class="row">
											<div class="col-md-4">
												<label for="nomEmploye">Nom</label> <input id="nomEmploye"
													class="form-control" type="text" name="nomEmploye"
													placeholder="nom du salarié" size="50" required>
											</div>
											<div class="col-md-4">
												<label for="prenomEmploye">Pr&eacute;nom usuel</label> <input
													id="prenomEmploye" class="form-control" type="text"
													name="prenomEmploye" placeholder="prénom du salarié" size="50" required>
											</div>
											<div class="col-md-3">
												<label for="ageEmploye">Date de naissance</label> <input
													id="ageEmploye" class="form-control" type="date" 
													name="ageEmploye" placeholder="date de naissance"
       												min="01/01/1970" max="31/12/2000" pattern="[0-9]{2}/[0-9]{2}/[0-9]{4}" required>
											</div>
										</div>
									</div>
									<div class="form-group">
										<div class="row">
											<div class="col-md-6">
												<label for="mailEmploye">Mail</label> <input id="mailEmploye"
													class="form-control" type="text" name="mailEmploye"
													placeholder="email_du_salarie@email.com" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" 
													size="60" required>
											</div>
											<div class="col-md-3">
												<label for="portableEmploye">T&eacute;l&eacute;phone portable
												</label> <input id="portableEmploye" class="form-control" type="tel"
													name="portableEmploye" placeholder="06.12.23.34.45"
													pattern="[0-9]{2}.[0-9]{2}.[0-9]{2}.[0-9]{2}.[0-9]{2}" required>
											</div>
										</div>
									</div>
									<div class="form-group">
										<div class="row">
											<div class="col-md-6">
												<label for="adrEmploye">Adresse</label> <input
													id="adrEmploye" class="form-control" type="text"
													name="adrEmploye" placeholder="Adresse du salarié"
													size="70" required>
											</div>
											<div class="col-md-2">
												<label for="cdpEmploye">Code postal</label> <input
													id="cdpEmploye" class="form-control" type="number"
													name="cdpEmploye" placeholder="13006" size="5" min="01000" max="97400" required>
											</div>
											<div class="col-md-4">
												<label for="villeEmploye">Ville</label> <input
													id="villeEmploye" class="form-control" type="text"
													name="villeEmploye" placeholder="Ville du salarié" size="60" required>
											</div>

										</div>
									</div>
									<button data-bs-toggle="popover"
										title="Création effectuée!"
										data-bs-content="La création du salarié a bien été prise en compte. Merci."
										type="button"
										class="btn btn-primary">Creer</button>
								</form>
							</div>
						
				</div>
			<!-- /.col-lg-9-->
		</div>
	</div>
</div>

<!--  Footer de la page -->
<%@ include file="/WEB-INF/include/footer.jsp"%>