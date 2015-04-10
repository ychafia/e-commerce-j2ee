package fr.uvsq.dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import fr.uvsq.bean.Panier;
import fr.uvsq.bean.Produit;

public class ProduitDAOImpl extends HibernateDaoSupport implements IProduitDAO {

	public void ajouterProd(Produit p) {
		getHibernateTemplate().save(p);
	}

	public List<Produit> rechercherTous() {
		List<Produit> listeProd = null;
		listeProd = getHibernateTemplate().find("select p from Produit as p");
		return listeProd;
	}

	public void ajouterPanier(Panier pan) {
		getHibernateTemplate().save(pan);
	}

	public Produit findProdByRef(int ref) {
		Produit Prod = new Produit();
		List<Produit> listeProd = getHibernateTemplate().find("select p from Produit as p where p.refProd=?", ref);

		if (listeProd.size() == 0){
			return Prod;
		}else{
			return listeProd.get(0);
		}
	}

}
