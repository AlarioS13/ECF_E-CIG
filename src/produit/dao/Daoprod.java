package produit.dao;

import java.util.ArrayList;

import produit.metier.Produit;

public class Daoprod {
	public static ArrayList<Produit>  produits  = initProduits();
	
	public static Produit getProduit(int ref) {
		Produit produit = new Produit(ref);
		return getProduit(produit);
	}
	public static Produit getProduit(Produit produit) {
		Produit trouve = null;
		if (produits.contains(produit)) trouve = produits.get(produits.indexOf(produit));
		return trouve;
	}
	
	private static ArrayList<Produit> initProduits() {
		ArrayList<Produit> liste 	= new ArrayList<Produit>();
		liste.add(new Produit(1, "KIT AEGIS X ZEUS SUBOHM GEEKVAPE", 79.90,"aegis.png"));
		liste.add(new Produit(2, "BOX REULEAUX RX 300 CUIR WISMEC", 68.90,"aegis.png"));
		liste.add(new Produit(3, "E-liquide POURED FERRUM CITY 100 ML", 9.90,"eliquid.png"));
		liste.add(new Produit(4, "E-liquide CEREAL 11 FERRUM CITY 100 ML", 9.90,"eliquid.png"));
		liste.add(new Produit(5, "E-liquide GREEN KELLY T-JUICE 50 ML", 9.90,"eliquid.png"));
		liste.add(new Produit(6, "E-liquide LIZZY RASCAL HALCYON HAZE T-JUICE 50 ML", 11.90,"eliquid.png"));
		liste.add(new Produit(7, "E-liquide TEXAN NICOVIP PROMO 3 MG/ML", 1.00,"eliquid.png"));
		liste.add(new Produit(8, "E-liquide DROGO FURIOSA SKINZ 80 ML VAPE47", 27.50,"eliquid.png"));
		liste.add(new Produit(9, "5 RÉSISTANCES PNP VOOPOO", 15.90,"resistance.png"));
		liste.add(new Produit(10, "3 RÉSISTANCES GT CORE VAPORESSO", 12.90,"resistance.png"));
		return liste;
	}
}
