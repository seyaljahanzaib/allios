package pl.alios.main;

import java.util.Map;

import pl.alios.model.Order;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class LinkAction extends ActionSupport {

	private static final long serialVersionUID = -2613425890762568273L;

	
	public String welcome(){return "welcome";}
	
	public String register(){return "register";}
	
	public String logon(){return "have_to_log_account";}
	
	public String friends(){return "friends";}
	
	public String office(){return "office";}
	
	public String orderReview(){return "order_review";}
	
	public String changeData(){return "changeData";}
	
	public String changePass(){return "changePass";}
	
	public String mainPage(){return "mainPage";}	
	
	public String statute(){return "statute";}		
	
	public String aboutUs(){return "aboutUs";}		
	
	public String contact(){return "contact";}		
		
	public String news(){return "news";}		
	
	public String cart()
	{
		Map<String,Object> sessionAttr = ActionContext.getContext().getSession();
		if(((Order) sessionAttr.get("order")) == null){
			this.message = "Koszyk jest pusty !";
			return "message";
		}
		return "cart";		
	}

	
	
	
	
	
	private String message;
	public String getMessage() {return message;}
	public void setMessage(String message) {this.message = message;}
}
