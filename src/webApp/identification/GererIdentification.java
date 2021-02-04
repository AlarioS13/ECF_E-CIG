package webApp.identification;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.Dao;
import metier.Abonne;
import metier.Employe;

/**
 * Servlet implementation class GererIdentification
 */
@WebServlet("/gererIdentification")
public class GererIdentification extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// ENRICK - Vérification de ne pas être en GET sinon message erreur
		System.out.println("Je suis dans creer Get");
		request.setAttribute("message", "Url invalide !!");
		RequestDispatcher disp = request.getRequestDispatcher(this.getServletContext().getInitParameter("pageError"));
		disp.forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		// Je créé un objet session
		HttpSession session = request.getSession();	

		// Je récupère les valeurs entrées dans le formulaire
		String mail=null;
		if (!request.getParameter("email").isBlank()) mail = request.getParameter("email").strip() ;
		String pw=null;
		if (!request.getParameter("pw").isBlank()) pw = request.getParameter("pw").strip() ;		

		// Je vérifie s'il existe dans la dao et s'il existe je le recup
		Abonne a = null;
		// Vérification de l'existence dans la liste des employés de la dao
		Employe employe = Dao.getEmploye(mail, pw);
		
		if (Dao.getAbonne(mail, pw) != null) {
			a = Dao.getAbonne(mail, pw);
			// Je fais un abonné qui n'a pas le password dans son contenu
			Abonne abosess= new Abonne(a.getMail());
			abosess.setNom(a.getNom());
			// Je l'envoie en session
			session.setAttribute("abonne", abosess);
			response.sendRedirect("e-cig/");
			
			// ENRICK - Mise en session du nom  de l'employé et du prénom de l'employé
		} else if (employe != null) {

				Employe employeSession = new Employe(employe.getIdEmploye());
				employeSession.setNomEmploye(employe.getNomEmploye());
				employeSession.setPrenomEmploye(employe.getPrenomEmploye());
				employeSession.setDateNaissEmploye(employe.getDateNaissEmploye());

				session.setAttribute("employe", employeSession);
				response.sendRedirect(request.getContextPath());
				
		// Sinon j'affiche une page d'erreur
		} else {
			request.setAttribute("message", "Cet utilisateur et mot de passe n'existent pas");
			String chemin = this.getServletContext().getInitParameter("errorPage");
			getServletContext().getRequestDispatcher( chemin ).forward( request, response );

		}

	}
}