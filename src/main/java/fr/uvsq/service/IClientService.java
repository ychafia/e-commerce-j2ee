package fr.uvsq.service;

import java.security.NoSuchAlgorithmException;

import fr.uvsq.bean.Client;

public interface IClientService {
	public void ajouterClient(Client clt);
	public Client connexionClient(String email);
	public String crypterMotDePasse(String dmp)throws NoSuchAlgorithmException;
	public Boolean VerifEmail(String email);
	public Client findClientById(int id);
}
