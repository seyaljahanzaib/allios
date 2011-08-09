package pl.alios.action;

import org.apache.log4j.Logger;
import org.apache.struts2.dispatcher.SessionMap;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class SearcherAction extends ActionSupport {

	private static final long serialVersionUID = 2L;
	private Logger logger  = Logger.getLogger(SearcherAction.class);
	
	public String execute(){
			logger.info("Wyszukiwanie produktów");
		return "SUCCESS";
}
}