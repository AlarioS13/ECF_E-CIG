<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="metier.Employe"%>
<%@ page import="metier.EmployeCoordonnees"%>
<%@ page import="metier.Responsable"%>
<%@ page import="metier.Salarie"%>
<%@ page import="dao.Dao"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.time.LocalDate"%>
<%@ page errorPage="/WEB-INF/vue/erreur/errorPage.jsp"%>
<jsp:useBean id="employe" class="metier.Employe" scope="session" />
<jsp:useBean id="msgEmploye" class="java.lang.String" scope="request" />
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
				<!-- *** Encadré du responsable *** -->

				<div class="card sidebar-menu mb-4">
					<div class="card-header">
						<h3 class="h4 card-title">Responsable</h3>
					</div>
					<div class="card-body">
						<ul class="nav nav-pills flex-column">
							<li><p class="text-info fw-bold"><%=employe.getNomEmploye().toUpperCase()%></p></li>
							<li><p class="text-info fw-bold"><%=employe.getPrenomEmploye()%></p></li>
						</ul>
					</div>
					<div class="card-boy">
						<ul class="nav nav-pills flex-column">
							<li><a href="<%=request.getContextPath()%>/admin/list">
									<button type="button"
										class="btn btn-outline-primary navbar-toggler btn-lg">Voir
										la liste des employ&eacute;s</button>
							</a></li>
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
					<form role="creation"
						action="<%=request.getContextPath()%>/creaEmp" method="post">
						<div class="form-group">
							<div class="row">
								<div class="col-md-4">
									<label for="idEmploye">Identifiant de l'employ&eacute;</label>
									<input id="idEmploye" class="form-control" type="text"
										name="idEmploye" placeholder="ex: 07" value="07">
								</div>
								<div class="col-md-4 text-center d-flex align-items-md-center">
									<div class="custom-control custom-control-inline custom-radio">
										<input type="radio" class="custom-control-input"
											id="civRadioMonsieur" value="Mr" name="radioBtnEmploye"
											checked> <label class="custom-control-label"
											for="civRadioMonsieur">Monsieur</label>
									</div>
									<div class="custom-control custom-control-inline custom-radio">
										<input type="radio" class="custom-control-input"
											id="civRadioMadame" value="Mme" name="radioBtnEmploye">
										<label class="custom-control-label" for="civRadioMadame">Madame</label>
									</div>
								</div>
							</div>

						</div>
						<div class="form-group">
							<div class="row">
								<div class="col-md-4">
									<label for="nomEmploye">Nom</label> <input id="nomEmploye"
										class="form-control" type="text" name="nomEmploye"
										placeholder="nom du salarié" value="Doe" size="50"
										title="Indiquez le nom de l'employé" required>
								</div>
								<div class="col-md-4">
									<label for="prenomEmploye">Pr&eacute;nom usuel</label> <input
										id="prenomEmploye" class="form-control" type="text"
										name="prenomEmploye" value="Mike"
										placeholder="prénom du salarié"
										title="Indiquez le prénom de l'employé" size="50" required>
								</div>
								<div class="col-md-3">
									<label for="ageEmploye">Date de naissance</label> <input
										id="ageEmploye" class="form-control" type="date"
										name="ageEmploye"
										value="<%=LocalDate.now().minusYears(18).minusMonths(6)%> "
										placeholder="date de naissance"
										min="<%=LocalDate.now().minusYears(40)%>"
										max="<%=LocalDate.now().minusYears(21)%>"
										title="Indiquez la date de naissance de l'employé" required>
								</div>
							</div>
						</div>
						<div class="form-group">
							<div class="row">
								<div class="col-md-4">
									<label for="mailEmploye">Mail</label> <input id="mailEmploye"
										class="form-control" type="email" name="mailEmploye"
										placeholder="email_du_salarie@email.com"
										value="doe_joe@mail.com"
										title="Indiquez l'adresse mail de l'employé" size="60"
										required>
								</div>
								<div class="col-md-4">
									<label for="mailEmploye">Mot de passe</label> <input
										id="password" class="form-control" type="password"
										name="mdpEmploye" placeholder="ex : nom+prénom+dateNaissance"
										value="dojo56" title="Indiquez le mot de passe de l'employé"
										size="60" required>
								</div>
								<div class="col-md-4">
									<label for="portableEmploye">T&eacute;l&eacute;phone
										portable </label> <input id="portableEmploye" class="form-control"
										type="tel" name="portableEmploye" placeholder="06.12.23.34.45"
										value="06.12.23.34.45"
										pattern="[0-9]{2}.[0-9]{2}.[0-9]{2}.[0-9]{2}.[0-9]{2}"
										title="format requis 12.12.12.12.12" required>
								</div>
							</div>
						</div>
						<div class="form-group">
							<div class="row">
								<div class="col-md-6">
									<label for="adrEmploye">Adresse</label> <input id="adrEmploye"
										class="form-control" type="text" name="adrEmploye"
										placeholder="Adresse du salarié" size="80"
										value="23, rue le grand cheval bleu"
										title="Indiquez l'adresse de l'employé" required>
								</div>
								<div class="col-md-2">
									<label for="cdpEmploye">Code postal</label> <input
										id="cdpEmploye" class="form-control" type="number"
										name="cdpEmploye" placeholder="13006" size="5" min="01000"
										max="99000"" value="13006" title="Indiquez le code postal"
										required>
								</div>
								<div class="col-md-4">
									<label for="villeEmploye">Ville</label> <input
										id="villeEmploye" class="form-control" type="text"
										name="villeEmploye" value="Marseille"
										placeholder="Ville du salarié" size="60"
										title="Indiquez la ville" required>
								</div>

							</div>
						</div>
						<button onclick="myMessEmploye()" type="submit" data-toggle="tooltip" data-placement="top"
						title="Créer un employé"
							formaction="<%=request.getContextPath()%>/admin/crea"
							class="btn btn-primary">Cr&eacute;er</button>
					</form>
				</div>

			</div>
			<!-- /.col-lg-9-->
		</div>
	</div>
	<!--  Message de confirmation -->
<div id="snackbar"><%= msgEmploye %></div>

	<!-- Fin du message de confirmation -->
</div>

<!--  Footer de la page -->
<%@ include file="/WEB-INF/include/footer.jsp"%>