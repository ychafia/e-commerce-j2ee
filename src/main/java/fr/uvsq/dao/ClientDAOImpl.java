package fr.uvsq.dao;

import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import fr.uvsq.bean.Client;

public class ClientDAOImpl extends HibernateDaoSupport implements IClientDAO {

	public void ajouter(Client clt) {
		getHibernateTemplate().save(clt);
	}

	public Client connexion(String email) {
		
		List<Client> listeClt = getHibernateTemplate().find("from Client as c where c.emailClient=?", email);
		if (listeClt.size() == 0){
			return new Client();
		}else{
			return listeClt.get(0);
		}
	}

	public String crypteMdp(String str) throws NoSuchAlgorithmException {
		MessageDigest m = MessageDigest.getInstance("MD5");
		m.reset();
		m.update(str.getBytes());
		byte[] digest = m.digest();
		BigInteger bigInt = new BigInteger(1,digest);
		String hashtext = bigInt.toString(16);
		while(hashtext.length() < 32 ){
			  hashtext = "0"+hashtext;
			}
		return hashtext;
	}

	public Boolean VerifEmail(String email) {
		
		List<Client> listeClt = getHibernateTemplate().find("select c from Client as c where c.emailClient=?", email);
		if (listeClt.size() == 0){
			return false;
		}else{
			return true;
		}
		
	}

	public void recupererMdp(String email, String nom, String prenom) {
		// TODO Auto-generated method stub
		
	}

	public Client findClientById(int id) {
		List<Client> listeClt = getHibernateTemplate().find("select c from Client as c where c.idClient=?", id);
		if (listeClt.size() == 0){
			return new Client();
		}else{
			return listeClt.get(0);
		}
	}


}
