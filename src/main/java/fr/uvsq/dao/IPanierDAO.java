package fr.uvsq.dao;

import java.util.List;

import fr.uvsq.bean.DetailsPanier;
import fr.uvsq.bean.Panier;

public interface IPanierDAO {
	public Panier haveAPanier(int idClt);
	public void ajouterPanier(Panier pan);
	public List<DetailsPanier> rechercherDetailPanierClient(int idPan);
}
