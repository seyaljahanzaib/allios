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
		System.out.println("Count : " + count);
		System.out.println("deleteBt : " + deleteBt);
		
		if(count)
			return count();
		if(next)
			return next();
		if(deleteBt)
			return delete();
		if(back)
			return "BACK";
		return "ERROR";
	}

	public String next(){
		logger.info("Akcja next. Zmienna to : " + numberOfItem);
		Map<String,Object> sessionAttr = ActionContext.getContext().getSession();
		Order order = (Order) sessionAttr.get("order");
		List<OrderItem> list =order.getListOfProducts();
		
		boolean mess = false;
		
		if(numberOfItem!=null){
			if(list.size() == numberOfItem.size()){
				for(int i=0;i < numberOfItem.size();i++){
					int numberOfItems = 0;
					try{
						numberOfItems = Integer.valueOf(numberOfItem.get(i)).intValue();
					}catch(NumberFormatException e){
						setMessage("Wprowadzono niepoprawn\u0105 warto\u015B\u0107");
						return "MESSAGE";
					}
					if(numberOfItems < 1){
						setMessage("Wprowadzono niepoprawn\u0105 warto\u015B\u0107");
						return "MESSAGE";
					}
					
					int productItemNumber  = order.getListOfProducts().get(i).getProduct().getNumberOfItems();
					if (numberOfItems <= productItemNumber){
						order.getListOfProducts().get(i).setNumberOfItem(numberOfItems);
					}else{
						order.getListOfProducts().get(i).setNumberOfItem(productItemNumber);
						setMessage("Brak wystarczaj\u0105cej ilo\u015Bci towaru");
						mess = true;
					}
				}
			}
		}
		
		if(mess) return "MESSAGE";
		
		if(sessionAttr.get("customer") == null)
			return "HAVE_TO_LOG";
		
		return "NEXT";
	}
	
	public String count(){
		logger.info("Akcja count. Zmienna to : " + numberOfItem);
		Map<String,Object> sessionAttr = ActionContext.getContext().getSession();
		Order order = (Order) sessionAttr.get("order");
		List<OrderItem> list =order.getListOfProducts();
		
		boolean mess = false;
		
		if(numberOfItem!=null){
			if(list.size() == numberOfItem.size()){
				for(int i=0;i < numberOfItem.size();i++){
					int numberOfItems = 0;
					try{
						numberOfItems = Integer.valueOf(numberOfItem.get(i)).intValue();
					}catch(NumberFormatException e){
						setMessage("Wprowadzono niepoprawn\u0105 warto\u015B\u0107");
						order.updateCosts();
						return "MESSAGE";
					}
					if(numberOfItems < 1){
						setMessage("Wprowadzono niepoprawn\u0105 warto\u015B\u0107");
						order.updateCosts();
						return "MESSAGE";
					}
					
					int productItemNumber  = order.getListOfProducts().get(i).getProduct().getNumberOfItems();
					if (numberOfItems <= productItemNumber){
						order.getListOfProducts().get(i).setNumberOfItem(numberOfItems);
					}else{
						order.getListOfProducts().get(i).setNumberOfItem(productItemNumber);
						setMessage("Brak wystarczaj\u0105cej ilo\u015Bci towaru");
						mess = true;
					}
				}
			}
		}
		order.updateCosts();
		if(mess) return "MESSAGE";
		
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
			order.updateCosts();
			return "EMPTY_CART";
		}
			
		order.updateCosts();
		return "DELETE_SUCCESS";
	}
	
	
	
	private List<String> numberOfItem;
	private boolean count;
	private boolean next;
	private boolean deleteBt;
	private boolean back;
	
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

	
public boolean isDeleteBt() {
		return deleteBt;
	}

	public void setDeleteBt(boolean deleteBt) {
		this.deleteBt = true;
	}

	//	public boolean isDelete() {return delete;}
//	public void setDelete(boolean delete) {this.delete = true;}
	public String getProductToDelete() {return productToDelete;}
	public void setProductToDelete(String productToDelete) {this.productToDelete = productToDelete;}
	public boolean isBack() {return back;}
	public void setBack(boolean back) {this.back = true;}
	
	
	
	
}
