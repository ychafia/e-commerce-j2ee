package fr.uvsq.service;

import java.security.NoSuchAlgorithmException;

import fr.uvsq.bean.Client;
import fr.uvsq.dao.IClientDAO;

public class ClientServiceImpl implements IClientService {
	
	IClientDAO daoClient;
	
	public final void setDaoClient(IClientDAO daoClient) {
		this.daoClient = daoClient;
	}

	public void ajouterClient(Client clt) {
		daoClient.ajouter(clt);
	}
	
	public String crypterMotDePasse(String str) throws NoSuchAlgorithmException{
		return daoClient.crypteMdp(str);
	}
	
	public Client connexionClient(String email) {
		return daoClient.connexion(email);
	}
	public Client findClientById(int id) {
		return daoClient.findClientById(id);
	}
	public Boolean VerifEmail(String email) {
		return daoClient.VerifEmail(email);
	}
}
