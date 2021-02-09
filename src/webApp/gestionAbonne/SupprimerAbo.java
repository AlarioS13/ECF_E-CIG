package webApp.gestionAbonne;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.Dao;
/**
 * Servlet implementation class SupprimerAbo
 */
@WebServlet("/supprimerAbo")
public class SupprimerAbo extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String idAbonne = request.getParameter("id");
		Dao.abonnes.remove(Dao.abonnes.indexOf(Dao.getAbonneById(idAbonne)));
		response.sendRedirect("/e-cig/listeAbo");
		
	}

}
