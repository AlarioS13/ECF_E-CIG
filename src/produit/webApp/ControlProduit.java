package produit.webApp;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import produit.dao.Daoprod;
import produit.metier.Produit;

/**
 * Servlet implementation class ControlCatalogue
 * 
 * Controleur pour gestion des produits
 */
@WebServlet(
		name = "ControlProduit", 
		description = "Controleur Produit", 
		urlPatterns = {"/action/produit/*"}
		)
public class ControlProduit extends HttpServlet {
	
	private static final long 	serialVersionUID = 1L;
	private RequestDispatcher 	disp;
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		// recuperation du choix
		String path = request.getPathInfo();
		System.out.println("1================  dans ControleurProduit path=" + path );
		
		if (path == null || path.equals("/")) 	doAccueil(request, response);
		else if (path.equals("/liste")) 		doListe(request, response);
		else {
			request.setAttribute("msgErreur", "Catalogue : Vous avez tripatouill&eacute; l'url!!! ");
			disp = request.getRequestDispatcher("/"); 
			disp.forward(request,response);
		}
	}

	private void doAccueil(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {		
		disp = request.getRequestDispatcher("/"); 
		disp.forward(request,response);
	}
	private void doListe(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {		
		ArrayList<Produit> liste = Daoprod.produits;
		request.setAttribute("produits", liste);
		disp = request.getRequestDispatcher("/WEB-INF/vue/produit/category-full.jsp"); 
		disp.forward(request,response);
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doAccueil(request, response);
	}

}
