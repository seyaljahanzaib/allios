package pl.alios.action;

import java.util.Date;
import java.util.Map;

import org.apache.log4j.Logger;

import pl.alios.model.Customer;
import pl.alios.model.Order;
import pl.alios.model.dao.adapter.DBAdapter;

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
		
		customer.addOrder(order);
		order.setCustomer(customer);
		order.setOrderDate(new java.sql.Date(new Date().getTime()));
		order.setState("Oczekuje");
		DBAdapter.getInstance().getOrderDAO().addOrder(order);
		
		sessionAttr.remove("order");
		
		return "SUCCESS";
	}
	
	
	private boolean next;
	private boolean back;

	public boolean isNext() {return next;}
	public void setNext(boolean next) {this.next = true;}
	public boolean isBack() {return back;}
	public void setBack(boolean back) {this.back = true;}

}