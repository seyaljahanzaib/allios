package pl.alios.action;

import org.apache.log4j.Logger;

import pl.alios.model.Customer;
import pl.alios.model.dao.adapter.DBAdapter;

import com.opensymphony.xwork2.ActionSupport;

public class RegisterAction extends ActionSupport{

	private static final long serialVersionUID = 113213123L;
	private Logger logger  = Logger.getLogger(RegisterAction.class);

	public String execute(){
		System.out.println("customer.getCompanyName() : "+customer.getCompanyName());
		logger.info("customer.getCompanyName() : "+customer.getCompanyName());
		DBAdapter.getInstance().getCustomerDao().register(customer);
		this.message = "Dzi\u0119kujemy za zarejestrowanie si\u0119 w Allios.pl. Zosta\u0142e\u015b automatycznie zalogowany. Zapraszamy do z\u0142o\u017cenia pierwszego zam\u00f3wienia !";
		return "SUCCESS";
	}
	
	public void validate() {
		logger.info("Register validation");
		System.out.println("customer.getCompanyName() : "+customer.getCompanyName());
		logger.info("customer.getCompanyName() : "+customer.getCompanyName());
		
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
				addFieldError("person_email", null);;
		if (customer.getLogin().length() == 0) 
			addFieldError("login", null);
		else{
			if(DBAdapter.getInstance().getCustomerDao().checklogin(customer.getLogin())){
				addFieldError("login", null);
				setMessageLogin("Wprowadzanoy login jest ju\u017C zarezerwowany");
			}
		}
		if (customer.getPassword().length() == 0 || customer.getConfirmPassword().length() == 0){
			addFieldError("password", null);
			addFieldError("confirmPassword", null);
		}
		else if(customer.getPassword().length() < 6){
			addFieldError("password", null);
			addFieldError("confirmPassword", null);
			setMessagePassword("Has\u0142o musi mie\u0107 przynajmniej 6 znak\u00F3w");
		}
		else{
			if (!customer.getPassword().equals(customer.getConfirmPassword())){
				addFieldError("password", null);
				addFieldError("confirmPassword", null);
				setMessagePassword("Wprowadzone has\u0142a s\u0105 r\u00F3\u017Cne");
			}
		}
		if (acceptance == null || acceptance.equals("false")){
			addFieldError("acceptance", null);
		}
	}

	private Customer customer;
	private String acceptance;
	private String message;
	private String messageLogin;
	private String messagePassword;
	
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
}