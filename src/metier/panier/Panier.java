package metier.panier;

import java.util.ArrayList;
import java.util.Objects;

import exception.DoublonException;
import metier.Abonne;
import metier.lignCommande.LignCommande;

public class Panier {
	private  int idPanier ;
	public double montantPanier;
	private Abonne abonne;
	private ArrayList<LignCommande> lignPanier;
	
	public Panier(Abonne abonne, ArrayList<LignCommande> lignCommandes) {
		super();
		this.abonne = abonne;
		this.lignPanier = lignPanier;
	}

	public ArrayList<LignCommande> getLignPanier() {
		return lignPanier;
	}





	public void setLignPanier(ArrayList<LignCommande> lignPanier) {
		this.lignPanier = lignPanier;
	}

	private ArrayList<LignCommande> commande;
	
	
	public Panier(Abonne abonne) {
		super();
		this.abonne = abonne;
		this.montantPanier = calculMontantPanier();
		this.lignPanier = lignPanier;
		
	}
	
	
	
	
	
	//methode pour ajouter un produit au panier
	
	
	public void ajouterlignCom(LignCommande lignCommande) throws DoublonException {
		//control de l'objet
		Objects.requireNonNull(lignCommande);
		
		//l'ajout venant de ListProduit, la quantite ne peut pas etre = 0 ou <0
		
		// si le produit est deja dans le panier, on renvoie le message " Produit deja existant"
		
		for (LignCommande lignCom : lignPanier) {
			if (lignCom.getProduit().equals(lignCommande.getProduit())) {
				lignCommande.setQuantite(lignCommande.getQuantite()+1);	
				montantPanier += lignCommande.calculMontant();
			}	
				
		// tout va bien
			else {
				
				lignPanier.add(lignCommande);
						
				montantPanier += lignCommande.calculMontant();
				
				
			}	
			
		}
	}
	
	//Getters et setters
	
	public double getMontantPanier() {
		
		return montantPanier;
	}
	public void setMontantPanier(double montantPanier) {
		this.montantPanier = montantPanier;
	}
	@Override
	public String toString() {
		return "Pannier [idPanier=" + idPanier + ", montantPanier=" + montantPanier + "]";
	}
	
	public double calculMontantPanier() {
		double montantPanier = 0;
		for (LignCommande lignCommande : lignPanier) {
			montantPanier = montantPanier+lignCommande.calculMontant();
		
		}
		return montantPanier;
	}
	//toString
	
	
}
