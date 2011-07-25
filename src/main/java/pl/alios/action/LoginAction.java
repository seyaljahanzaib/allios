package pl.alios.action;

import java.util.Map;

import org.apache.log4j.Logger;

import pl.alios.model.Customer;
import pl.alios.model.dao.adapter.DBAdapter;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class LoginAction extends ActionSupport {

	private static final long serialVersionUID = 1L;
	private Logger logger  = Logger.getLogger(LoginAction.class);

	public String execute(){

		logger.info("LoginAction.execute()");
		System.out.println("inBasket : " + inBasket);
		System.out.println("inaccount : " + inaccount);
		
		if(login_tb == null || login_tb.equals("") || password_tb == null || password_tb.equals(""))
			return "FAILURE";
		
		Customer customer = DBAdapter.getInstance().getCustomerDao().login(login_tb, password_tb);
		
		if (customer == null){
			if (isInBasket()){
				return "FAILURE_CART";
			}
			if (isInaccount()){
				return "FAILURE_ACCOUNT";
			}
			return "FAILURE";
		}else{
			Map<String,Object> sessionAttr = ActionContext.getContext().getSession();
			sessionAttr.put("customer", customer);
			if (isInBasket()){
				return "SUCCESS_CART";
			}
			if (isInaccount()){
				return "SUCCESS_ACCOUNT";
			}
			
			return "SUCCESS";
		}
		
	}


	private String password_tb;
	private String login_tb;
	private boolean inBasket;
	private boolean inaccount;
	
	
	public String getPassword_tb() {return password_tb;}
	public void setPassword_tb(String password_tb) {this.password_tb = password_tb;}
	public String getLogin_tb() {return login_tb;}
	public void setLogin_tb(String login_tb) {this.login_tb = login_tb;}
	public boolean isInBasket() {return inBasket;}
	public void setInBasket(boolean inBasket) {this.inBasket = true;}
	public boolean isInaccount() {return inaccount;}
	public void setInaccount(boolean inaccount) {this.inaccount = true;}
	
}