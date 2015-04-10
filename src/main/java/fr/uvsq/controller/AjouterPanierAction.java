package fr.uvsq.controller;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.codehaus.jackson.map.ObjectMapper;
import org.springframework.web.struts.ActionSupport;

import fr.uvsq.utils.MapperDetailsProduit;
import fr.uvsq.bean.Client;
import fr.uvsq.bean.DetailsPanier;
import fr.uvsq.bean.Panier;
import fr.uvsq.bean.Produit;
import fr.uvsq.service.IClientService;
import fr.uvsq.service.IPanierService;
import fr.uvsq.service.IProduitService;

public class AjouterPanierAction extends ActionSupport {
	List<MapperDetailsProduit> ListeMapperDetPanier = new LinkedList<MapperDetailsProduit>();
	//@SuppressWarnings("unused")
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {

		IClientService clientBo = (IClientService) getWebApplicationContext().getBean("clientBusiness");
		
		IProduitService produitBo = (IProduitService) getWebApplicationContext().getBean("produitBusiness");
		
		IPanierService panierBo = (IPanierService) getWebApplicationContext().getBean("panierBusiness");
		
		// 1. get received JSON data from request
		BufferedReader br = new BufferedReader(new InputStreamReader(request.getInputStream()));
		String json = "";
		if(br != null){
			json = br.readLine();
		}
		System.out.println("-------" + json.toString());
		//wait();
		
		ObjectMapper mapper = new ObjectMapper();
		MapperDetailsProduit MapperdetPan = mapper.readValue(json, MapperDetailsProduit.class);
		int idC = MapperdetPan.getIdClt();

		Client clt = clientBo.findClientById(idC);

		Produit p = produitBo.findProdByRef(MapperdetPan.getRefProd());

		
		Panier pan = panierBo.haveAPanier(clt.getIdClient());
		
		if(clt.getIdClient() != 0){
			if(pan== null){ //Si ce client n as pas de panier encore et il est bien connecté
				System.out.println("je crée un nv panier");
				Panier panClt = new Panier();
				panClt.setDateMajPanier(MapperdetPan.getDateAjout());
				panClt.setEtatPanier("n");
				panClt.setSommeTotale(0);
				panClt.setClt(clt);
				DetailsPanier detPanClt = new DetailsPanier(); 
				detPanClt.setPanier(panClt);
				detPanClt.setPrixProd(MapperdetPan.getPrixProd());
				detPanClt.setProduit(p);
				detPanClt.setDateAjout(MapperdetPan.getDateAjout());
				detPanClt.setQte(1);
				Set<DetailsPanier> listeDetails = new HashSet<DetailsPanier>();
				listeDetails.add(detPanClt);
				panClt.setListeDetPanier(listeDetails);
				panierBo.ajouterPanier(panClt);
				ListeMapperDetPanier.clear();
				ListeMapperDetPanier.add(MapperdetPan);
			}else{
				System.out.println("------------"+pan.toString());
				// on doit verifier si le même produit a été déja ajouté, si c la cas on increment qte
				List<DetailsPanier> listeDetPanier = new ArrayList<DetailsPanier>();
				DetailsPanier detPanClt = new DetailsPanier();
				
				//System.out.println(" ppppppp "+ listeDetPanier.size());
				
				System.out.println("je met a jour le panier");
				
				detPanClt.setPanier(pan);
				detPanClt.setPrixProd(MapperdetPan.getPrixProd());
				detPanClt.setProduit(p);
				detPanClt.setDateAjout(MapperdetPan.getDateAjout());
				detPanClt.setQte(1);
				Set<DetailsPanier> listeDetails = new HashSet<DetailsPanier>();
				listeDetails.add(detPanClt);
				pan.setListeDetPanier(listeDetails);
				panierBo.ajouterPanier(pan);
				ListeMapperDetPanier.clear();
				listeDetPanier = panierBo.rechercherDetailPanierClient(pan.getIdPanier());
				
				System.out.println("___________"+listeDetPanier.toString());
				for (DetailsPanier detailsPanier : listeDetPanier) {
					MapperdetPan = new MapperDetailsProduit();
					MapperdetPan.setRefProd(detailsPanier.getProduit().getRefProd());
					MapperdetPan.setPrixProd(detailsPanier.getPrixProd());
					MapperdetPan.setDateAjout(detailsPanier.getDateAjout());
					MapperdetPan.setIdClt(idC);

					ListeMapperDetPanier.add(MapperdetPan);
				}
			}
		}
		
		response.setContentType("application/json");
		//System.out.println(detPan.toString());
		
		
		mapper.writeValue(response.getOutputStream(), ListeMapperDetPanier);

		
		//return mapping.findForward("succesLog");
		return null;
	}
}
