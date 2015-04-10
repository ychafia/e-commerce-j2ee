package fr.uvsq.service;

import java.util.List;

import fr.uvsq.bean.DetailsPanier;
import fr.uvsq.bean.Panier;
import fr.uvsq.dao.IPanierDAO;

public class PanierServiceImpl implements IPanierService {

	IPanierDAO daoPanier;
	
	public final void setDaoPanier(IPanierDAO daoPanier) {
		this.daoPanier = daoPanier;
	}

	public Panier haveAPanier(int idClt) {
		return daoPanier.haveAPanier(idClt);
	}

	public void ajouterPanier(Panier pan) {
		daoPanier.ajouterPanier(pan);
	}

	public List<DetailsPanier> rechercherDetailPanierClient(int idPan) {
		return daoPanier.rechercherDetailPanierClient(idPan);
	}

}
