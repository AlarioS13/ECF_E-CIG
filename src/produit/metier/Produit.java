package produit.metier;

/**
 * 
 * @author D.Muller
 *
 */
public class Produit {
	
	private int ref;
	private String nom;
	private double prix;
	private String image;
	
	public Produit(int ref, String nom, double prix, String image) {
		this.ref = ref;
		this.nom = nom;
		this.prix = prix;
		this.image = image;
	}
	
	public Produit(int ref) {
		this.ref = ref;
		nom = "A renseigner";
	}

	public int getRef() {
		return ref;
	}
	public void setRef(int ref) {
		this.ref = ref;
	}
	public String getNom() {
		return nom;
	}
	public void setNom(String nom) {
		this.nom = nom;
	}
	public double getPrix() {
		return prix;
	}
	public void setPrix(double prix) {
		this.prix = prix;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}
	
	@Override
	public boolean equals(Object obj) {
		boolean retour = false;
		if (obj != null && obj instanceof Produit) {
			Produit produit = (Produit)obj;
			retour = (produit.getRef() == this.ref) ;
		}
		return retour;
	}

	@Override
	public String toString() {
		return "Produit [ref=" + ref + ", nom=" + nom + ", prix=" + prix + "]";
	}


}
