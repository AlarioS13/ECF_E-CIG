package metier.Panier;

import java.util.ArrayList;
import java.util.Objects;

import exception.DoublonException;
import metier.lignPanier.LignPanier;
import produit.metier.Produit;

public class Panier {
	public String idPanier;
	public double montantPanier;
	public int numeroPanier;
	public int montant;
	private ArrayList<LignPanier> produits;
	
	
	
	//methode pour ajouter un produit au panier
	
	public void ajouterProduit(Produit produit) throws DoublonException {
		//control de l'objet
		Objects.requireNonNull(produit);
		
		//l'ajout venant de ListProduit, la quantite ne peut pas etre = 0 ou <0
		
		// si le produit est deja dans le panier, on renvoie le message " Produit deja existant"
		for (LignPanier lignCommande : produits) {
			if (produit.equals(lignCommande.getProduit())) 
						throw new DoublonException("Produit deja existant");
				}
		// tout va bien
				LignPanier lignCommande = new LignPanier(produit);
				produits.add(lignCommande);
				
				montant += lignCommande.calculMontant();
				
				
			
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
	public ArrayList<LignPanier> getProduits() {
		return produits;
	}
	
	//toString
	
	
}
