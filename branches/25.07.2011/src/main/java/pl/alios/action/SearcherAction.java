package pl.alios.action;

import java.util.ArrayList;

import org.apache.log4j.Logger;

import pl.alios.model.Product;
import pl.alios.model.dao.adapter.DBAdapter;

import com.opensymphony.xwork2.ActionSupport;

public class SearcherAction extends ActionSupport {

	private static final long serialVersionUID = 2L;
	private Logger logger  = Logger.getLogger(SearcherAction.class);
	
	
	public String execute(){
		logger.info("Wyszukiwanie produktu: " + searchString);
		if (searchString == null || searchString.length() < 3){
			message="Brak danych do wy\u015Bwietlenia";
			return "MESSAGE";	
		}
		try {
			setProducts(DBAdapter.getInstance().getProductDAO().searchByName(searchString));
		} catch (Exception e) {
			return "ERROR";
		}
		
		return "SUCCESS";
}
	private String searchString;
	private String message;
	private ArrayList<Product> products;
	
	public ArrayList<Product> getProducts() {return products;}
	public void setProducts(ArrayList<Product> products) {this.products = products;}
	
	public String getMessage() {return message;}
	public void setMessage(String message) {this.message = message;}
	
	public String getSearchString() {return searchString;}
	public void setSearchString(String searchString) {this.searchString = searchString;}

	
}