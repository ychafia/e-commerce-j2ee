package fr.uvsq.service;

import java.util.List;

import fr.uvsq.bean.Panier;
import fr.uvsq.bean.Produit;
import fr.uvsq.dao.IProduitDAO;

public class ProduitServiceImpl implements IProduitService {

	IProduitDAO daoProduit;
	
	public final void setDaoProduit(IProduitDAO daoProduit) {
		this.daoProduit = daoProduit;
	}

	public void ajouterProd(Produit p) {
		daoProduit.ajouterProd(p);
	}

	public List<Produit> rechercherTous() {
		return daoProduit.rechercherTous();
	}

	public void ajouterPanier(Panier pan) {
		daoProduit.ajouterPanier(pan);
	}

	public Produit findProdByRef(int ref) {
		return daoProduit.findProdByRef(ref);
	}

}
