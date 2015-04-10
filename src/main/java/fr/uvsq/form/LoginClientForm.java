package fr.uvsq.form;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;

public class LoginClientForm extends ActionForm {
	private String email;
	private String mdp;
	public final String getEmail() {
		return email;
	}
	public final void setEmail(String email) {
		this.email = email;
	}
	public final String getMdp() {
		return mdp;
	}
	public final void setMdp(String mdp) {
		this.mdp = mdp;
	}
	@Override
	public ActionErrors validate(ActionMapping mapping,
			HttpServletRequest request) {
		ActionErrors errors = new ActionErrors();
		if(getEmail() == null || getEmail().length() < 3){
			errors.add("email", new ActionMessage("error.email.required"));
		}
		if(getMdp() == null || getMdp().length() < 3){
			errors.add("mdp", new ActionMessage("error.mdp.required"));
		}
		return errors;
		
	}
}
