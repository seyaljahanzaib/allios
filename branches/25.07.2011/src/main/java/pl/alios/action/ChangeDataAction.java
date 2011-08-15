package pl.alios.action;

import java.util.Map;

import org.apache.log4j.Logger;

import pl.alios.model.Customer;
import pl.alios.model.dao.adapter.DBAdapter;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class ChangeDataAction extends ActionSupport{

	private static final long serialVersionUID = 113213124413L;
	private Logger logger  = Logger.getLogger(ChangeDataAction.class);

	public ChangeDataAction() {
		Map<String,Object> sessionAttr = ActionContext.getContext().getSession();
		Customer customer = (Customer) sessionAttr.get("customer");
		setCustomer(customer);
	}
	
	public String execute(){
		// Myk z initem : zeby juz za pierwszym razem wyswietlil dane w polach
		if(!init){	
			System.out.println("customer.getCompanyName() : "+customer.getCompanyName());
			logger.info("customer.getCompanyName() : "+customer.getCompanyName());
			
			try {
				DBAdapter.getInstance().getCustomerDao().merge(customer);
			} catch (Exception e) {
				return "ERROR";
			}
			this.message = "Twoje dane zosta\u0142y zmienione !";
			return "SUCCESS";
		}else{
			return "SHOW";
		}
	}
	
	public void validate() {
		logger.info("Change password validation");
		// Myk z initem : zeby juz za pierwszym razem wyswietlil dane w polach
		if(!init){			
			if (customer.getNip().length() ==0)
				addFieldError("nip", null);
			else
				if(!(customer.getNip().length() == 13 && customer.getNip().matches("[0-9]{3}-[0-9]{3}-[0-9]{2}-[0-9]{2}")))
					addFieldError("nip", null);
			if (customer.getCompanyName().length() ==0)
				addFieldError("companyName", null);
			if (customer.getStreet().length() ==0)
				addFieldError("street", null);
			if (customer.getHouseNumber().length() ==0)
				addFieldError("houseNumber", null);
			if (customer.getCity().length() ==0)
				addFieldError("city", null);
			if (customer.getZipCode().length() < 6)
				addFieldError("zipCode", null);
			else
				if(!(customer.getZipCode().length() == 6 && customer.getZipCode().matches("[0-9]{2}-[0-9]{3}")))
					addFieldError("zipCode", null);
			if (customer.getProvince().length() ==0)
				addFieldError("province", null);
			if (customer.getPhone().length() ==0)
				addFieldError("phone", null);
			if (customer.getPerson_name().length() ==0)
				addFieldError("person_name", null);
			if (customer.getPerson_surname().length() ==0)
				addFieldError("person_surname", null);
			if (customer.getPerson_phone().length() ==0)
				addFieldError("person_phone", null);
			if (customer.getPerson_email().length() ==0)
				addFieldError("person_email", null);
			else
				if (!(customer.getPerson_email().contains("@") && customer.getPerson_email().contains(".")))
					addFieldError("person_email", null);
		}

	}

	private Customer customer;
	private String acceptance;
	private String message;
	private String messageLogin;
	private String messagePassword;
	private boolean init;
	
	public Customer getCustomer() {return customer;}
	public void setCustomer(Customer customer) {this.customer = customer;}
	public String getAcceptance() {return acceptance;}
	public void setAcceptance(String acceptance) {this.acceptance = acceptance;}
	public String getMessageLogin() {return messageLogin;}
	public void setMessageLogin(String messageLogin) {this.messageLogin = messageLogin;}
	public String getMessagePassword() {return messagePassword;}
	public void setMessagePassword(String messagePassword) {this.messagePassword = messagePassword;}
	public String getMessage() {return message;}
	public void setMessage(String message) {this.message = message;}

	public boolean isInit() {return init;}
	public void setInit(boolean init) {this.init = true;}
	
}