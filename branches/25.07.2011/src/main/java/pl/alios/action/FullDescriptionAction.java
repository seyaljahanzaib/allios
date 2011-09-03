package pl.alios.action;

import org.apache.log4j.Logger;
import pl.alios.model.Product;
import pl.alios.model.dao.adapter.DBAdapter;
import com.opensymphony.xwork2.ActionSupport;

public class FullDescriptionAction extends ActionSupport {

	private static final long serialVersionUID = 1L;
	private Logger logger  = Logger.getLogger(FullDescriptionAction.class);

	public String execute(){
		logger.info("Wyswietlanie szczegolow produktu o ID : " + productID);
		try {
			product = DBAdapter.getInstance().getProductDAO().getProduct(productID);
		} catch (Exception e) {
			logger.error("Nie powiodlo sie wyswietlenie szegolow dla produktu id : " + productID);
			logger.error(e);
		}
		return "SUCCESS";
	}
	
	
	private Product product;
	private String productID;

	
	public Product getProduct() {return product;}
	public void setProduct(Product product) {this.product = product;}
	public String getProductID() {return productID;}
	public void setProductID(String productID) {this.productID = productID;}
}
