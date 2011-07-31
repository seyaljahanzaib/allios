package pl.alios.action;

import org.apache.log4j.Logger;

import com.opensymphony.xwork2.ActionSupport;

public class ShowMessageAction extends ActionSupport{
	
	private static final long serialVersionUID = 128888831L;
	private Logger logger  = Logger.getLogger(ShowMessageAction.class);
	
	public String execute(){
		return "SUCCESS";
	}

	
	private String message;

	public String getMessage() {return message;}
	public void setMessage(String message) {this.message = message;}
	
}
