package metier.technique;

import java.util.ArrayList;

import metier.lignCommande.LignCommande;

public class LignCommandes extends ArrayList<LignCommande>{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	
	
	
	public LignCommandes(ArrayList<LignCommande> lignCommande) {
		this.addAll(lignCommande);
	}

}
