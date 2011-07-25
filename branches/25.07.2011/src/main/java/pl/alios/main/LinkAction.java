package pl.alios.main;

import com.opensymphony.xwork2.ActionSupport;

public class LinkAction extends ActionSupport {

	private static final long serialVersionUID = -2613425890762568273L;

	
	public String welcome()
	{
		return "welcome";		
	}
	
	public String register()
	{
		return "register";		
	}
	public String logon()
	{
		return "have_to_log_account";		
	}
	
	public String cart()
	{
		return "cart";		
	}
	public String friends()
	{
		return "friends";		
	}
	
	public String office()
	{
		return "office";		
	}
	public String orderReview()
	{
		return "order_review";		
	}
	public String changeData()
	{
		return "changeData";		
	}
	public String changePass()
	{
		return "changePass";		
	}
	
}
