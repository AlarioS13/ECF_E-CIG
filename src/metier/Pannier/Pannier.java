package metier.Pannier;

import java.util.ArrayList;
import java.util.Objects;


import metier.lignCommande.LignCommande;
import produit.metier.Produit;

public class Pannier {
	public String idPanier;
	public double montantPanier;
	public int numeroPanier;
	public int montant;
	private ArrayList<LignCommande> produits;
	
	
	
	//methode pour ajouter un produit au panier
	
	public void ajouterProduit(Produit produit) {
		//control de l'objet
		Objects.requireNonNull(produit);
		
		//l'ajout venant de ListProduit, la quantite ne peut pas etre = 0 ou <0
		
		// si le produit est deja dans le panier, on renvoie le message " Produit deja existant"
		/*for (LignCommande lignCommande : produits) {
			if (produit.equals(lignCommande.getProduit())) 
						throw new CommandeDoublonException("Produit deja existant");
				}
		// tout va bien
				LignCommande lignCommande = new LignCommande(produit);
				produits.add(lignCommande);
				
				montant += lignCommande.calculMontant();
				
	*/			
			
	}
	
	//Getters et setters
	public String getIdPanier() {
		return idPanier;
	}
	public void setIdPanier(String idPanier) {
		this.idPanier = idPanier;
	}
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
	public ArrayList<LignCommande> getProduits() {
		return produits;
	}
	
	//toString
	
	
}
