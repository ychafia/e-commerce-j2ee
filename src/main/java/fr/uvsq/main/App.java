package fr.uvsq.main;

import java.security.NoSuchAlgorithmException;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import fr.uvsq.bean.AdresseClient;
import fr.uvsq.bean.Client;
import fr.uvsq.bean.CoordonneesBank;
import fr.uvsq.bean.DetailsPanier;
import fr.uvsq.bean.Panier;
import fr.uvsq.bean.Produit;
import fr.uvsq.service.IClientService;
import fr.uvsq.service.IProduitService;

public class App {

	public static void main(String[] args) {
		ApplicationContext appContext = new ClassPathXmlApplicationContext("config/BeanLocations.xml");
		 
    	IClientService clientBo = (IClientService)appContext.getBean("clientBusiness");
 
		Set<CoordonneesBank> listC = new HashSet<CoordonneesBank>();
		CoordonneesBank crdB = new CoordonneesBank();
		CoordonneesBank crdB2 = new CoordonneesBank();
		AdresseClient adr = new AdresseClient();
		Client clt = new Client();
 
		crdB2.setNomBank("BNP");
		crdB2.setNumCompteBank(1123698);
		crdB2.setDateValidite(new Date());
		listC.add(crdB2);
		
		crdB.setNomBank("CREDIT AG");
		crdB.setNumCompteBank(356445);
		crdB.setDateValidite(new Date());
		listC.add(crdB);
		clt.setListe_CoordBank(listC);
		
		clt.setNomClient("CHAFIA");
		clt.setPrenomClient("Youness");
		clt.setTelClient(100000000);
		clt.setEtatConnexion(false);
		clt.setEmailClient("chafiayouness2@gmail.com");
		try {
			clt.setMdpClient(clientBo.crypterMotDePasse("123456"));
		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
		}
		clt.setPointFideliteClient(10);
		clt.setCatFideliteClient("A+");
		clt.setDateInscrpClient(new Date());
		
		
		adr.setNumDomicil(11);
		adr.setRue("Place du Sancerrois");
		adr.setEtage("111");
		adr.setVille("Maurepas");
		adr.setCodePostal(78310);
		clt.setAdrClient(adr);
		clientBo.ajouterClient(clt);
    	
		IProduitService produitBo = (IProduitService)appContext.getBean("produitBusiness");
		
    	Produit p = new Produit();
		p.setLibelleProd("Chemise");
		p.setMarqueProd("ZARA");
		p.setCouleurProd("Grise");
		p.setPrixAchatProd(5.5);
		p.setPrixVenteProd(10.6);
		p.setPublicationProd(false);
		p.setTailleProd("L");
		p.setTypeProd("normal");

												produitBo.ajouterProd(p);
											
		Produit p2 = new Produit();
		p2.setLibelleProd("Chemise");
		p2.setMarqueProd("Lacoste");
		p2.setCouleurProd("bleu/grise");
		p2.setPrixAchatProd(8.5);
		p2.setPrixVenteProd(11.6);
		p2.setPublicationProd(false);
		p2.setTailleProd("38");
		p2.setTypeProd("Slim");
												produitBo.ajouterProd(p2);
    	
		
		Panier pan = new Panier();
		pan.setDateMajPanier(new Date());
		pan.setEtatPanier("n");
//		pan.getListeDetPanier().add(detP);
//		pan.getListeDetPanier().add(detP2);
		pan.setSommeTotale(50.65);
		pan.setClt(clt);
		
		
		DetailsPanier detP = new DetailsPanier();
		detP.setPrixProd(11.5);
		detP.setDateAjout(new Date());
		detP.setQte(2);
		detP.setProduit(p);
		detP.setPanier(pan);
		
		DetailsPanier detP2 = new DetailsPanier();
		detP2.setPrixProd(6.5);
		detP2.setDateAjout(new Date());
		detP2.setQte(9);
		detP2.setProduit(p2);
		detP2.setPanier(pan);
		
		Set<DetailsPanier> listeDetails = new HashSet<DetailsPanier>();
		
		listeDetails.add(detP);
		listeDetails.add(detP2);
		
		pan.setListeDetPanier(listeDetails);
							produitBo.ajouterPanier(pan);												
//		System.out.println(pan.toString());
//		System.out.println("#################################");
//		System.out.println(detP.toString());
//		System.out.println(detP2.toString());	
//		
//		persistProd.ajouterPanier(pan);
    	
    	System.out.println("Done");

	}

}
