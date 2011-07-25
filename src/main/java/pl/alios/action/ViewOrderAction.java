package pl.alios.action;

import org.apache.log4j.Logger;

import com.opensymphony.xwork2.ActionSupport;

public class ViewOrderAction extends ActionSupport{
	
	private static final long serialVersionUID = 121311111231L;
	private Logger logger  = Logger.getLogger(ShowProductsAction.class);
	
	public String execute(){
		return "SUCCESS";
	}

	
	
	
	
}
