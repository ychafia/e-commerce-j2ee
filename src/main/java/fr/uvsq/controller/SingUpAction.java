package fr.uvsq.controller;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.springframework.web.struts.ActionSupport;

import fr.uvsq.bean.AdresseClient;
import fr.uvsq.bean.Client;
import fr.uvsq.form.SingUpForm;
import fr.uvsq.service.IClientService;

public class SingUpAction  extends ActionSupport{
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		IClientService clientBo = (IClientService) getWebApplicationContext().getBean("clientBusiness");
		SingUpForm donnees = (SingUpForm) form;
		Client clt = new Client();
		AdresseClient adrC = new AdresseClient();
		//ClientPersistance cltp = new ClientPersistance();
		
		clt.setNomClient(donnees.getNom());
		clt.setPrenomClient(donnees.getPrenom());
		clt.setEmailClient(donnees.getEmail());
		clt.setMdpClient(clientBo.crypterMotDePasse(donnees.getMdp()));
		clt.setCivilite(donnees.getCivilite());
			adrC.setNumDomicil(donnees.getNumDomicile());
			adrC.setRue(donnees.getNomRue());
			adrC.setVille(donnees.getVille());
			adrC.setCodePostal(donnees.getCodePost());
			adrC.setEtage(donnees.getEtage());
		clt.setAdrClient(adrC);
		clt.setTelClient(donnees.getTel());
		clt.setEtatConnexion(false);
		clt.setCatFideliteClient("A-");
		clt.setPointFideliteClient(0);
		clt.setDateInscrpClient(new Date());
		System.out.println("-----"+clt.toString());
		System.out.println("--------"+adrC.toString());
		if(clientBo.VerifEmail(donnees.getEmail()) == false){
			clientBo.ajouterClient(clt);
			System.out.println("Client ajouté avec succés");
			return mapping.findForward("succesLog");
		}else{
			return mapping.findForward("echecLog");
		}
	}
}
