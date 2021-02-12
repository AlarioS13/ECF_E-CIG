package metier.panier;

import java.util.ArrayList;
import java.util.Objects;

import exception.DoublonException;
import metier.lignCommande.LignCommande;
import produit.metier.Produit;

public class Panier {
	private static int idPanier = 1;
	public double montantPanier;
	
	
	private ArrayList<LignCommande> commande;
	
	
	
	
	
	
	
	
	//methode pour ajouter un produit au panier
	
	public Panier(ArrayList<LignCommande> commande) {
		super();
		this.montantPanier = 0;
		this.commande = commande;
	}

	public void ajouterlignCom(LignCommande lignCommande) throws DoublonException {
		//control de l'objet
		Objects.requireNonNull(lignCommande);
		
		//l'ajout venant de ListProduit, la quantite ne peut pas etre = 0 ou <0
		
		// si le produit est deja dans le panier, on renvoie le message " Produit deja existant"
		
		for (LignCommande lignCom : commande) {
			if (lignCommande.getProduit().equals(lignCom.getProduit())) 
						throw new DoublonException("Produit deja existant");
				
		// tout va bien
			else {
				commande.add(lignCommande);
						
				montantPanier += lignCommande.calculMontant();
				idPanier++;
				
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
		for (LignCommande lignCommande : commande) {
			montantPanier = montantPanier+lignCommande.calculMontant();
		
		}
		return montantPanier;
	}
	//toString
	
	
}
