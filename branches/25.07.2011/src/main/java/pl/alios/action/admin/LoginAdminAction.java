package pl.alios.action.admin;

import java.util.Map;

import org.apache.log4j.Logger;

import pl.alios.action.AddToCartAction;
import pl.alios.utils.Commons;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class LoginAdminAction extends ActionSupport {

	private static final long serialVersionUID = 1L;
	private Logger logger  = Logger.getLogger(AddToCartAction.class);
	
	public String execute(){
		logger.info("Logowanie admina");
		Map<String,Object> sessionAttr = ActionContext.getContext().getSession();
		
		if("jmallios_jola".equals(login) && "adminjola".equals(password)){
			logger.info("Zalogowany admin JOLA");
			sessionAttr.put("Admin", Commons.ADMIN_JOLA);
			
			return "SUCCESS";
			
		}else if("ddd".equals(login) && "ddd".equals(password)){
			logger.info("Zalogowany admin PAWEL");
			sessionAttr.put("Admin", Commons.ADMIN_PAWEL);
			return "SUCCESS";
		}
		
		return "FAILED";
	}
	
	private String login;
	private String password;

	public String getLogin() {return login;}
	public void setLogin(String login) {this.login = login;}
	public String getPassword() {return password;}
	public void setPassword(String password) {this.password = password;}
	

}