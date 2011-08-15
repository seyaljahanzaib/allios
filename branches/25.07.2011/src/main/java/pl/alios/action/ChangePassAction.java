package pl.alios.action;

import java.util.Map;

import org.apache.log4j.Logger;

import pl.alios.model.Customer;
import pl.alios.model.dao.adapter.DBAdapter;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class ChangePassAction extends ActionSupport{

	private static final long serialVersionUID = 113213123L;
	private Logger logger  = Logger.getLogger(ChangePassAction.class);

	public String execute(){
		Map<String,Object> sessionAttr = ActionContext.getContext().getSession();
		Customer customer = (Customer) sessionAttr.get("customer");
		
		customer.setPassword(password);
		
		try {
			DBAdapter.getInstance().getCustomerDao().merge(customer);
		} catch (Exception e) {
			return "ERROR";
		}
		
		this.message = "Twoje hasło zosta\u0142o zmienione !";
		return "SUCCESS";
	}
	
	public void validate() {
		logger.info("Change password validation");

		Map<String,Object> sessionAttr = ActionContext.getContext().getSession();
		Customer customer = (Customer) sessionAttr.get("customer");
		
		if (oldPassword.length() == 0)
			addFieldError("login", null);
		else{
			if(!customer.getPassword().equals(oldPassword)){
				addFieldError("oldPassword", null);
				setMessageLogin("Wprowadzane has\u0142o jest niepoprawne");
			}
		}
		if (password.length() == 0 || confirmPassword.length() == 0){
			addFieldError("password", null);
			addFieldError("confirmPassword", null);
		}
		else if(password.length() < 6){
			addFieldError("password", null);
			addFieldError("confirmPassword", null);
			setMessagePassword("Has\u0142o musi mie\u0107 przynajmniej 6 znak\u00F3w");
		}
		else{
			if (!password.equals(confirmPassword)){
				addFieldError("password", null);
				addFieldError("confirmPassword", null);
				setMessagePassword("Wprowadzone has\u0142a s\u0105 r\u00F3\u017Cne");
			}
		}
	}

	private String oldPassword;
	private String password;
	private String confirmPassword;
	private String message;
	private String messageLogin;
	private String messagePassword;
	
	public String getMessageLogin() {return messageLogin;}
	public void setMessageLogin(String messageLogin) {this.messageLogin = messageLogin;}
	public String getMessagePassword() {return messagePassword;}
	public void setMessagePassword(String messagePassword) {this.messagePassword = messagePassword;}
	public String getOldPassword() {return oldPassword;}
	public void setOldPassword(String oldPassword) {this.oldPassword = oldPassword;}
	public String getPassword() {return password;}
	public void setPassword(String password) {this.password = password;}
	public String getConfirmPassword() {return confirmPassword;}
	public void setConfirmPassword(String confirmPassword) {this.confirmPassword = confirmPassword;}
	public String getMessage() {return message;}
	public void setMessage(String message) {this.message = message;}
	
	
}