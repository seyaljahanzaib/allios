package pl.alios.action;

import java.util.Map;

import org.apache.log4j.Logger;

import pl.alios.model.Order;
import pl.alios.model.OrderItem;
import pl.alios.model.Product;
import pl.alios.model.dao.adapter.DBAdapter;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class AddToCartAction extends ActionSupport {

	private static final long serialVersionUID = 1L;
	private Logger logger  = Logger.getLogger(AddToCartAction.class);

	public String execute(){
		logger.info("Dodaje do koszyka produkt o id : " + product_id);

		Map<String,Object> sessionAttr = ActionContext.getContext().getSession();
		Order order = (Order) sessionAttr.get("order");
		if (order == null){
			order = new Order();
			sessionAttr.put("order", order);
		}
		OrderItem orderItem = new OrderItem();
		try {
			orderItem.setProduct(DBAdapter.getInstance().getProductDAO().getProduct(product_id));
			orderItem.setPriceBrutto(orderItem.getProduct().getPriceBrutto());
			orderItem.setPriceNetto(orderItem.getProduct().getPriceNetto());
			orderItem.setVAT(orderItem.getProduct().getVat());
		} catch (Exception e1) {
			return "ERROR";
		}
		System.out.println("Quantity : "+quantity);
		try{
			Integer.valueOf(quantity);
			if(Integer.valueOf(quantity) == 0)
				orderItem.setNumberOfItem(1);
			else
				orderItem.setNumberOfItem(Integer.valueOf(quantity));
		}catch(NumberFormatException e){
			orderItem.setNumberOfItem(1);
		}
		
		if(productDescription){
			try {
				product = DBAdapter.getInstance().getProductDAO().getProduct(product_id);
			} catch (Exception e) {
				logger.error("Nie powiodlo sie wyswietlenie szegolow dla produktu id : " + product_id);
				logger.error(e);
			}
		}
		
		if (order.addToCart(orderItem)){
			if(mainPage)
				return "MAINPAGE";
			else if (productDescription)
				return "PRODUCT_DESCRIPTION";
			else
				return "SUCCESS";
		}else{
			setMessage("Nie mo\u017Cesz zam\u00F3wi\u0107 wi\u0119cej ni\u017C "+ orderItem.getProduct().getNumberOfItems().intValue() + " sztuk tego produktu");
			if(mainPage)
				return "MAINPAGE_MESSAGE";
			else if (productDescription)
				return "PRODUCT_DESCRIPTION_MESSAGE";
			else
				return "MESSAGE";
		}
		

	}
	
	private String product_id;
	private String quantity;
	
	public String getProduct_id() {return product_id;}
	public void setProduct_id(String product_id) {this.product_id = product_id;}
	public String getQuantity() {return quantity;}
	public void setQuantity(String quantity) {this.quantity = quantity;}
	
	private String message;
	public String getMessage() {return message;}
	public void setMessage(String message) {this.message = message;}
	
	private boolean mainPage;
	private boolean productDescription;
	public void setMainPage(boolean mainPage) {this.mainPage = true;}
	public void setProductDescription(boolean productDescription) {this.productDescription = true;}
	
	private Product product;
	public Product getProduct() {return product;}
	public void setProduct(Product product) {this.product = product;}
	
}
