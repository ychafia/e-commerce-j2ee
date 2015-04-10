package fr.uvsq.dao;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import fr.uvsq.bean.DetailsPanier;
import fr.uvsq.bean.Panier;

public class PanierDAOImpl extends HibernateDaoSupport implements IPanierDAO {

	public Panier haveAPanier(int idClt) {
		
		List<Panier> listePanier = getHibernateTemplate().find("select p from Panier as p where p.clt.idClient=?", idClt);
		System.out.println("haveAPanier");
		if (listePanier.size() == 0){
			return null;
		}else{
			System.out.println(listePanier.get(0).toString());
			return listePanier.get(0);
		}
		
	}

	public void ajouterPanier(Panier pan) {
		//getHibernateTemplate().save(pan);
		getHibernateTemplate().saveOrUpdate(pan);
	}

	public List<DetailsPanier> rechercherDetailPanierClient(int idPan) {
		List<DetailsPanier> listeDetPanier = getHibernateTemplate().find("select detp from DetailsPanier as detp where detp.panier.idPanier= ?", idPan);
		if (listeDetPanier.size() == 0){
			return null;
		}else{
			return listeDetPanier;
		}
	}
}
