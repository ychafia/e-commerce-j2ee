package fr.uvsq.dao;

import java.security.NoSuchAlgorithmException;

import fr.uvsq.bean.Client;


public interface IClientDAO {
	public void ajouter(Client t);
	public Client connexion(String email);
	public String crypteMdp(String mdp)throws NoSuchAlgorithmException;
	public Boolean VerifEmail(String email);
	public void recupererMdp(String email, String nom, String prenom);
	public Client findClientById(int id);
}
