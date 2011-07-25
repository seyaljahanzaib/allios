package pl.alios.action;

import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;

import pl.alios.model.Product;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class ShowProductsAction extends ActionSupport{
	
	private static final long serialVersionUID = 12132131231L;
	
	private Logger logger  = Logger.getLogger(ShowProductsAction.class);
	
	public String execute(){
		logger.info("Wyswietlenie listy produktow dla kategori : " + category);
		Map<String,Object> sessionAttr = ActionContext.getContext().getSession();
		if( sessionAttr.get("cart_category") != null){
			sessionAttr.remove("cart_category");
		}
		if( sessionAttr.get("cart_page") != null){
			sessionAttr.remove("cart_page");
		}
		sessionAttr.put("cart_category", category);
		sessionAttr.put("cart_page", "1");
		return "SUCCESS";
	}
	
	private String category;
	private List<Product> products;

	public String getCategory() { return category;}
	public void setCategory(String category) { this.category = category;}
	public List<Product> getProducts() { return products;}
	public void setProducts(List<Product> products) { this.products = products;}
	
}
