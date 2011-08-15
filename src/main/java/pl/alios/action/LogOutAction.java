package pl.alios.action;

import org.apache.struts2.dispatcher.SessionMap;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class LogOutAction extends ActionSupport{
	
	private static final long serialVersionUID = 2L;

	public String execute(){
		SessionMap session = (SessionMap) ActionContext.getContext().getSession();
		session.invalidate();
		return "SUCCESS";
	}

}
