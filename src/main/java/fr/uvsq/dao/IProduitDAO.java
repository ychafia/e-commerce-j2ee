package fr.uvsq.dao;

import java.util.List;

import fr.uvsq.bean.Panier;
import fr.uvsq.bean.Produit;

public interface IProduitDAO {
	public void ajouterProd(Produit p);
	public List<Produit> rechercherTous();
	public void ajouterPanier(Panier pan);
	public Produit findProdByRef(int ref);
}
