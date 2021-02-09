package webApp.masterControl;

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
 * Servlet implementation class Master
 */
@WebServlet(
		name = "Master", 
		description = "Master Media Control", 
		urlPatterns = {"/e-cig/*"}
		)
public class Master extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private RequestDispatcher 	disp;
	
	
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String path = request.getPathInfo();

		if (path == null || path.equals("/") || path.equals("/accueil")) goAccueil(request, response);
		else if (path.endsWith("/avantages")) goAvantage(request, response);
		else if (path.endsWith("/pourquoi")) goPourquoi(request, response);
		else if (path.endsWith("/quesaco")) goQuesaco(request, response);
		else if (path.endsWith("/agevapo")) goAgeVapo(request, response);
		else if (path.endsWith("/ouvapo")) goOuVapo(request, response);
		else if (path.endsWith("/nicotine")) goNicotine(request, response);
		else if (path.endsWith("/produits")) goProduit(request, response);
		else if (path.endsWith("/panier")) goPanier(request, response);
		else if (path.endsWith("/enregistrer")) goRegister(request, response);
		else if (path.endsWith("/contact")) goContact(request, response);
		else if (path.endsWith("/faq")) goFaq(request, response);
		else if (path.endsWith("/admin")) goAdmin(request, response);
		else if (path.endsWith("/profil")) goProfil(request, response);
		else if (path.endsWith("/creaEmp")) goCrea(request, response);
		else if (path.endsWith("/listeAbo")) goListeAbo(request, response);

		


		else {
				request.setAttribute("message", "404 PAGE NOT FOUND");
				String pathError = this.getServletContext().getInitParameter("errorPage");
				disp = request.getRequestDispatcher(pathError);
				disp.forward(request, response);
			}
		
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}
	
	private void goAccueil(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("Go accueil");
		disp = request.getRequestDispatcher("/index.jsp");
		disp.forward(request,response);	
	}
	private void goProduit(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("Go produits");
		ArrayList<Produit> liste = Daoprod.produits;
		request.setAttribute("produits", liste);
		disp = request.getRequestDispatcher("/WEB-INF/vue/produit/category-full.jsp");
		disp.forward(request,response);	
	}
	private void goAvantage(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("Go Avantage");
		disp = request.getRequestDispatcher("/WEB-INF/vue/blog/avantages.jsp");
		disp.forward(request,response);	
	}
	private void goPourquoi(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("Go pourquoi");
		disp = request.getRequestDispatcher("/WEB-INF/vue/blog/pourquoi.jsp");
		disp.forward(request,response);	
	}
	private void goAgeVapo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("Go age vapo");
		disp = request.getRequestDispatcher("/WEB-INF/AREMPLACER.jsp");
		disp.forward(request,response);	
	}
	private void goOuVapo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("Go ou vapo");
		disp = request.getRequestDispatcher("/WEB-INF/vue/blog/ouvapoter.jsp");
		disp.forward(request,response);	
	}
	private void goQuesaco(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("Go quesaco");
		disp = request.getRequestDispatcher("/WEB-INF/vue/blog/descriptionecig.jsp");
		disp.forward(request,response);	
	}
	private void goNicotine(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("Go nicotine");
		disp = request.getRequestDispatcher("/WEB-INF/AREMPLACER.jsp");
		disp.forward(request,response);	
	}
	private void goPanier(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("Go Panier");
		disp = request.getRequestDispatcher("/WEB-INF/vue/panier/panier.jsp");
		disp.forward(request,response);	
	}
	private void goRegister(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("Go s'enregistrer");
		disp = request.getRequestDispatcher("/register.jsp");
		disp.forward(request,response);	
	}
	private void goContact(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("Go Contact");
		disp = request.getRequestDispatcher("/contact.jsp");
		disp.forward(request,response);	
	}
	private void goFaq(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("Go Faq");
		disp = request.getRequestDispatcher("/faq.jsp");
		disp.forward(request,response);	
	}
	private void goAdmin(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("Go Admin");
		disp = request.getRequestDispatcher("/WEB-INF/vue/employe/listeEmploye.jsp");
		disp.forward(request,response);	
	}
	private void goListeAbo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("Go sur liste abonné");
		disp = request.getRequestDispatcher("/WEB-INF/vue/abonneListe.jsp");
		disp.forward(request,response);	
	}
	private void goProfil(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("Go Profil");
		disp = request.getRequestDispatcher("/WEB-INF/espaceAbonne.jsp");
		disp.forward(request,response);	
	}
	
	private void goCrea(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("Go creation employ�");
		disp = request.getRequestDispatcher("/WEB-INF/vue/employe/creationEmploye.jsp");
		disp.forward(request,response);
		
	}
	
	
	

}
