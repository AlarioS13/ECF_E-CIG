package webApp.identification;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import metier.Abonne;
import metier.Employe;

/**
 * Servlet implementation class Deconnexion
 */
@WebServlet("/deconnexion")
public class Deconnexion extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	Abonne abonne = (Abonne) request.getSession().getAttribute("abonne");
	
	// Enrick - Récuparation des info de l'employé connecté
	Employe employe = (Employe) request.getSession().getAttribute("employe");
	if (abonne != null || employe != null) {
//		request.getSession().setAttribute("abonne", null);
		HttpSession session=request.getSession(false);
		session.invalidate();
	} 
	
	response.sendRedirect("e-cig/");
	
	}

}
