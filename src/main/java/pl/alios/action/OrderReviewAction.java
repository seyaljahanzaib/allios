package pl.alios.action;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;

import pl.alios.model.Customer;
import pl.alios.model.Order;
import pl.alios.model.dao.adapter.DBAdapter;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class OrderReviewAction extends ActionSupport {

	private static final long serialVersionUID = 132121321L;
	private Logger logger  = Logger.getLogger(ConfirmAllAction.class);

	public String execute(){
		Map<String,Object> sessionAttr = ActionContext.getContext().getSession();
		Customer customer  = (Customer) sessionAttr.get("customer");

		if(view) return view(customer);
		
		if(delete) delete(customer);
		
		orderList = new ArrayList<Order>();
		if(current || (current != true && history !=true)){
			
			
			//TODO jezeli 
			for(Order order : customer.getOrders()){
				System.out.println("Jazda dla ordera : " + order.getOrderId() + " stat : " +order.getState());
				if ("Oczekuje".equals(order.getState()) ||  
					"Potwierdzone".equals(order.getState()) || 
					"W przygotowaniu".equals(order.getState()) ||
					"Wysłane".equals(order.getState())){
					System.out.println("Znalaz");
					orderList.add(order);
				}
			}
		}else{
			for(Order order : customer.getOrders()){
				if ("Dostarczone".equals(order.getState()) ||  "Anulowane".equals(order.getState())){
						orderList.add(order);
				}
			}
		}
		return "SUCCESS";
	}
	
	public String view(Customer customer){
		for(Order order : customer.getOrders()){
			if(order.getOrderId().equals(orderId)){
				setOrder(order);
				return "VIEW";
			}
		}
		return "VIEW";
	}
	
	
	public String delete(Customer customer){
		for(Order order : customer.getOrders()){
			if(order.getOrderId().equals(orderId)){
				order.setState("Anulowane");
				DBAdapter.getInstance().getOrderDAO().merge(order);
				return "SUCCESS";
			}
		}
		return "SUCCESS";
	}
	
	private List<Order> orderList;
	private boolean history;
	private boolean current;
	
	private boolean delete;
	private boolean view;
	private boolean inovice;

	private Long orderId;
	private Order order;
	
	public boolean isHistory() {return history;}
	public void setHistory(boolean history) {this.history = true;}
	public boolean isCurrent() {return current;}
	public void setCurrent(boolean current) {this.current = true;}
	public List<Order> getOrderList() {return orderList;}
	public void setOrderList(List<Order> orderList) {this.orderList = orderList;}

	public Long getOrderId() {return orderId;}
	public void setOrderId(Long orderId) {this.orderId = orderId;}

	public boolean isDelete() {return delete;}
	public void setDelete(boolean delete) {this.delete = true;}

	public boolean isView() {return view;}
	public void setView(boolean view) {this.view = true;}

	public Order getOrder() {return order;}
	public void setOrder(Order order) {this.order = order;}
	
	
}