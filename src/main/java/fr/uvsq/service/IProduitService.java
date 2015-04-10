package fr.uvsq.service;

import java.util.List;

import fr.uvsq.bean.Panier;
import fr.uvsq.bean.Produit;

public interface IProduitService {
	public void ajouterProd(Produit p);
	public List<Produit> rechercherTous();
	public void ajouterPanier(Panier pan);
	public Produit findProdByRef(int ref);
}
