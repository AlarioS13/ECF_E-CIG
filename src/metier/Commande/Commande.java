package metier.Commande;

import java.time.LocalDate;

public class Commande {
	public String idCommande;
	public LocalDate Date;
	
	
	

	//getters et setters
	
	public String getIdCommande() {
		return idCommande;
	}
	public void setIdCommande(String idCommande) {
		this.idCommande = idCommande;
	}
	public LocalDate getDate() {
		return Date;
	}
	public void setDate(LocalDate date) {
		Date = date;
	}
	
	
}
