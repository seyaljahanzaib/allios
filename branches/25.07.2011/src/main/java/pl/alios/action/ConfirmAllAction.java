package pl.alios.action;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;

import org.apache.log4j.Logger;
import org.apache.struts2.ServletActionContext;

import pl.alios.model.Customer;
import pl.alios.model.Order;
import pl.alios.model.OrderItem;
import pl.alios.model.Product;
import pl.alios.model.dao.adapter.DBAdapter;
import pl.alios.utils.Commons;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class ConfirmAllAction extends ActionSupport {

	private static final long serialVersionUID = 132121321L;
	private Logger logger  = Logger.getLogger(ConfirmAllAction.class);

	public String execute(){
		if(back)
			return "BACK";
		if(next)
			return next();
		return "ERROR";
	}
	
	
	public String next(){
		Map<String,Object> sessionAttr = ActionContext.getContext().getSession();
		Order order = (Order) sessionAttr.get("order");
		Customer customer = (Customer) sessionAttr.get("customer");
		
		try {
			String s = DBAdapter.getInstance().getProductDAO().setProductAbundance(getProductQuantityMap(order));
			if (s.equals("BLAD")){
				ArrayList<OrderItem> todelete = new ArrayList<OrderItem>();
				for(OrderItem item : order.getListOfProducts()){
					Product p = DBAdapter.getInstance().getProductDAO().getProduct(String.valueOf(item.getProduct().getProduct_id()));
					item.setProduct(p);
					if(p.getNumberOfItems() < item.getNumberOfItem()){
						item.setNumberOfItem(p.getNumberOfItems());
						if (p.getNumberOfItems() == 0) todelete.add(item);
					}
				}
				order.getListOfProducts().removeAll(todelete);
				setMessage("Twoje zam\u00F3wienie nie mo\u017Ce by\u0107 zrealizowane. Liczba wybranych produkt\u00F3w jest wi\u0119ksza od aktualnej dost\u0119pnej w magazynie.");
				return "INCAPABILITY";
			}
		} catch (Exception e1) {
			return "ERROR";
		}
		
		
		logger.info("ConfirmAllActions dla klienta : " + customer.getLogin());
		
		customer.addOrder(order);
		order.setCustomer(customer);
		order.setOrderDate(new java.sql.Date(new Date().getTime()));
		order.setState(Commons.ORDER_STATE_OCZEKUJE);
		order.setExternal(Boolean.FALSE);
		try {
			DBAdapter.getInstance().getOrderDAO().addOrder(order);
			orderNumber = DBAdapter.getInstance().getOrderDAO().getOrder(order.getOrderId().toString()).getNumber();
		} catch (Exception e) {
			return "ERROR";
		}
		
		sessionAttr.remove("order");
		
		updateProducts();
		
		return "SUCCESS";
	}
	
	
	
	private void updateProducts() {
		List<Product> products = null;
		try {
			products = DBAdapter.getInstance().getProductDAO().getAllProducts(true , null);
		} catch (Exception e) {
			Logger logger  = Logger.getLogger(this.getClass());
			logger.error("Moja wina : " + e);
		}
		
		Map<String, ArrayList<Product>> productMap = new HashMap<String, ArrayList<Product>>();
		for(Product product: products){
			if(productMap.get(product.getCategory().getId().toString()) != null){
				productMap.get(product.getCategory().getId().toString()).add(product);
				
			}else{
				ArrayList<Product> newList = new ArrayList<Product>();
				newList.add(product);
				productMap.put(product.getCategory().getId().toString(), newList);
			}
			if(product.getCategory() != null && product.getCategory().getMainCategory() != null){
				if(productMap.get(product.getCategory().getMainCategory().getId().toString()) != null){
					productMap.get(product.getCategory().getMainCategory().getId().toString()).add(product);
				}else{
					ArrayList<Product> newList2 = new ArrayList<Product>();
					newList2.add(product);
					productMap.put(product.getCategory().getMainCategory().getId().toString(), newList2);
				}
			}
		}
		ServletContext context = ServletActionContext.getServletContext();
		context.setAttribute("products", productMap);
	}


	private HashMap<String, String> getProductQuantityMap(Order order){
		HashMap<String, String> map = new HashMap<String, String>();
		for(OrderItem item : order.getListOfProducts()){
			map.put(String.valueOf(item.getProduct().getProduct_id()), String.valueOf(item.getNumberOfItem()));
		}
		return map;
	}
	
	
	
	
	private boolean next;
	private boolean back;
	
	private String orderNumber;

	public boolean isNext() {return next;}
	public void setNext(boolean next) {this.next = true;}
	public boolean isBack() {return back;}
	public void setBack(boolean back) {this.back = true;}

	public String getOrderNumber() {return orderNumber;}
	public void setOrderNumber(String orderNumber) {this.orderNumber = orderNumber;}
	
	private String message;
	public String getMessage() {return message;}
	public void setMessage(String message) {this.message = message;}

}