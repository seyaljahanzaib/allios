package pl.alios.main;

import org.apache.struts2.ServletActionContext;
import org.springframework.context.ApplicationContext;
import org.springframework.web.context.ContextLoader;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

import pl.alios.utils.fop.FopPrinter;


import com.opensymphony.xwork2.ActionSupport;

public class LinkAction extends ActionSupport {

	private static final long serialVersionUID = -2613425890762568273L;

	
	public String welcome()
	{

		WebApplicationContext context = WebApplicationContextUtils.getRequiredWebApplicationContext(
                                        ServletActionContext.getServletContext());

		FopPrinter fop = (FopPrinter)context.getBean("fop");

		return "welcome";		
	}
	
	public String register()
	{
		WebApplicationContext context = WebApplicationContextUtils.getRequiredWebApplicationContext(
                ServletActionContext.getServletContext());

		FopPrinter fop = (FopPrinter)context.getBean("fop");
		
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
