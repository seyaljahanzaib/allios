package pl.alios.action;

import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;

import pl.alios.model.Order;
import pl.alios.model.OrderItem;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class ConfirmOrderAction extends ActionSupport {

	private static final long serialVersionUID = 132121321L;
	private Logger logger  = Logger.getLogger(ConfirmOrderAction.class);

	public String execute(){
		if(count)
			return count();
		if(next)
			return next();
		if(delete)
			return delete();
		return "ERROR";
	}
	
	public String next(){
		logger.info("Akcja next. Zmienna to : " + numberOfItem);
		Map<String,Object> sessionAttr = ActionContext.getContext().getSession();
		Order order = (Order) sessionAttr.get("order");
		List<OrderItem> list =order.getListOfProducts();
		
		if(numberOfItem!=null){
			if(list.size() == numberOfItem.size()){
				for(int i=0;i < numberOfItem.size();i++){
					try{
						Integer.valueOf(numberOfItem.get(i));
						if(Integer.valueOf(numberOfItem.get(i)) == 0)
							order.getListOfProducts().get(i).setNumberOfItem(1);
						else
							order.getListOfProducts().get(i).setNumberOfItem(Integer.valueOf(numberOfItem.get(i)));
					}catch(NumberFormatException e){
						order.getListOfProducts().get(i).setNumberOfItem(1);
					}
				}
			}
		}
		if(sessionAttr.get("customer") == null)
			return "HAVE_TO_LOG";
		
		return "NEXT";
	}
	
	public String count(){
		logger.info("Akcja count. Zmienna to : " + numberOfItem);
		Map<String,Object> sessionAttr = ActionContext.getContext().getSession();
		Order order = (Order) sessionAttr.get("order");
		
		if(numberOfItem!=null){
			if(order.getListOfProducts().size() == numberOfItem.size()){
				for(int i=0;i < numberOfItem.size();i++){
					try{
						Integer.valueOf(numberOfItem.get(i));
						if(Integer.valueOf(numberOfItem.get(i)) == 0)
							order.getListOfProducts().get(i).setNumberOfItem(1);
						else
							order.getListOfProducts().get(i).setNumberOfItem(Integer.valueOf(numberOfItem.get(i)));
					}catch(NumberFormatException e){
						order.getListOfProducts().get(i).setNumberOfItem(1);
					}
				}
				order.updateCosts();
			}
		}
		return "COUNT_SUCCESS";
	}
	
	public String delete(){
		logger.info("Akcja delete. ProductIdToDelete : " + productToDelete);
		Map<String,Object> sessionAttr = ActionContext.getContext().getSession();
		Order order = (Order) sessionAttr.get("order");
		OrderItem toDelete = null;
		for(OrderItem item : order.getListOfProducts()){
			if (item.getProduct().getProduct_id().equals(Long.valueOf(productToDelete))){
				toDelete = item;
			}
		}
		order.getListOfProducts().remove(toDelete);
		if(order.getListOfProducts().size() == 0){
			sessionAttr.remove("order");
			this.message = "Koszyk jest pusty !";
			return "EMPTY_CART";
		}
			
			
		return "DELETE_SUCCESS";
	}
	
	
	
	private List<String> numberOfItem;
	private boolean count;
	private boolean next;
	private boolean delete;
	private String productToDelete;
	private String message;
	
	public String getMessage() {return message;}
	public void setMessage(String message) {this.message = message;}
	public List<String>  getNumberOfItem() {return numberOfItem;}
	public void setNumberOfItem(List<String> numberOfItem) {this.numberOfItem = numberOfItem;}
	public boolean isCount() {return count;}
	public void setCount(boolean count) {this.count = true;}
	public boolean isNext() {return next;}
	public void setNext(boolean next) {this.next = true;}
	public boolean isDelete() {return delete;}
	public void setDelete(boolean delete) {this.delete = true;}
	public String getProductToDelete() {return productToDelete;}
	public void setProductToDelete(String productToDelete) {this.productToDelete = productToDelete;}
	
	
}
