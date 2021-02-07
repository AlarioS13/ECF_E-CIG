package metier.technique;

import java.util.ArrayList;

import metier.lignCommande.LignCommande;

public class LignCommandes extends ArrayList<LignCommande>{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	
	public LignCommandes() {
	}
	
	public LignCommandes(ArrayList<LignCommande> lignCommandes) {
		this.addAll(lignCommandes);
	}

}
