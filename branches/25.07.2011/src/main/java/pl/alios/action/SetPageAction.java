package pl.alios.action;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;

import org.apache.log4j.Logger;
import org.apache.struts2.ServletActionContext;

import pl.alios.model.Product;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class SetPageAction extends ActionSupport{
	
	private static final long serialVersionUID = 121444444421321L;
	private Logger logger  = Logger.getLogger(ShowProductsAction.class);
	
	public String execute(){
		logger.info("Zmieniam strony na  : " + pageNumber);
		Map<String,Object> sessionAttr = ActionContext.getContext().getSession();
		
		if(pageNumber.equals("first")){
			return setPageSessionAttr("1");
		}
		else if(pageNumber.equals("prev")){
			int p = Integer.valueOf((String)sessionAttr.get("cart_page"));
			p = p - 1;
			if( p < 1 ) p=1;
			logger.info("Prev : "+p);
			return setPageSessionAttr(String.valueOf(p));
		}
		else if (pageNumber.equals("next")){
			int p = Integer.valueOf((String)sessionAttr.get("cart_page"));
			
			ServletContext context = ServletActionContext.getServletContext();
			Map<String, ArrayList<Product>> productMap = (Map<String, ArrayList<Product>>)context.getAttribute("products");
			List<Product> allProducts = productMap.get(sessionAttr.get("cart_category"));
			int number=0;
			if (allProducts.size() % 10 > 0)
				number= allProducts.size() / 10 + 1;
			else
				number= allProducts.size() / 10;
			
			p=p+1;
			logger.info("Next : "+p);
			if( p > number) p = number;
			return setPageSessionAttr(String.valueOf(p));
		}
		else if(pageNumber.equals("last")){
			ServletContext context = ServletActionContext.getServletContext();
			Map<String, ArrayList<Product>> productMap = (Map<String, ArrayList<Product>>)context.getAttribute("products");
			List<Product> allProducts = productMap.get(sessionAttr.get("cart_category"));
			int number=0;
			if (allProducts.size() % 10 > 0)
				number= allProducts.size() / 10 + 1;
			else
				number= allProducts.size() / 10;

			logger.info("Last : "+number);
			return setPageSessionAttr(String.valueOf(number));
		}
		else{
			return setPageSessionAttr(pageNumber);
		}
	}
	
	private String setPageSessionAttr(String page){
		Map<String,Object> sessionAttr = ActionContext.getContext().getSession();
		if( sessionAttr.get("cart_page") != null){
			sessionAttr.remove("cart_page");
		}
		sessionAttr.put("cart_page", page);
		return "SUCCESS";
	}
	
	private String pageNumber;

	public String getPageNumber() {return pageNumber;}
	public void setPageNumber(String pageNumber) {this.pageNumber = pageNumber;}
}
