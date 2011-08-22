package pl.alios.action.admin;

import java.util.ArrayList;
import java.util.List;

import org.apache.log4j.Logger;

import pl.alios.model.Order;
import pl.alios.model.dao.adapter.DBAdapter;
import pl.alios.utils.Commons;

import com.opensymphony.xwork2.ActionSupport;

public class OrderAdminAction extends ActionSupport {

	private static final long serialVersionUID = 1L;
	private Logger logger  = Logger.getLogger(OrderAdminAction.class);
	
	public OrderAdminAction() throws Exception {
		orders = DBAdapter.getInstance().getOrderDAO().getOrders(Commons.ORDER_STATE_ALL);
	}
	
	public String execute(){
		if(init) return "SHOW";
		if(save) return save(); 
		if(edit) return edit();
		if(cancel) return cancel();
		if(delete) return delete();
		if(back) return "SHOW";
		
		return "SUCCESS";
	}
	
	private String delete() {
		logger.info("Usuwam element zamówienia : " + orderItemId);
		return null;
	}

	private String save() {
		logger.info("Zmiana statusus zamówienia na : " + newStatus + " dla zamowienia : " + orderId);
		Order order = null;
		if(newStatus != null && newStatus.length() > 3){
			try {
				order = DBAdapter.getInstance().getOrderDAO().setStatus(orderId, newStatus);
				orders = DBAdapter.getInstance().getOrderDAO().getOrders(Commons.ORDER_STATE_ALL);
			} catch (Exception e) {
				return "ERROR";
			}
		}
		this.message = "Zam\u00F3wienie nr. " + order.getNumber() + " zmieni\u0142o status na " + order.getState() ;
		return "MESSAGE";
	}

	private String edit() {
		logger.info("Podglad zamowienia : " + orderId);
		try {
			order = DBAdapter.getInstance().getOrderDAO().getOrder(orderId);
		} catch (Exception e) {
			return "ERROR";
		}
		return "VIEW";
	}
	
	
	private String cancel() {
		logger.info("Abulowanie dla zamowienia : " + orderId);
		Order order = null;
		if(newStatus != null && newStatus.length() > 3){
			try {
				newStatus = Commons.ORDER_STATE_ANULOWANE;
				order = DBAdapter.getInstance().getOrderDAO().setStatus(orderId, newStatus);
				orders = DBAdapter.getInstance().getOrderDAO().getOrders(Commons.ORDER_STATE_ALL);
			} catch (Exception e) {
				return "ERROR";
			}
		}
		this.message = "Zam\u00F3wienie nr. " + order.getNumber() + " zmieni\u0142o status na " + order.getState() ;
		return "MESSAGE";
	}




	private boolean init;
	private boolean save;
	private boolean edit;
	private boolean cancel;
	private boolean delete;
	private boolean back;
	
	
	private List<Order> orders;
	private Order order;
	private String orderItemId;
	private String newStatus;
	private String orderId;
	private String message;
//	private ArrayList<E> statusList
	
	
	
	
	
	
	
	
	
	
	
	
	public boolean isInit() {
		return init;
	}

	public void setInit(boolean init) {
		this.init = init;
	}

	public List<Order> getOrders() {
		return orders;
	}

	public void setOrders(List<Order> orders) {
		this.orders = orders;
	}

	public boolean isSave() {
		return save;
	}

	public void setSave(boolean save) {
		this.save = true;
	}

	public boolean isEdit() {
		return edit;
	}

	public void setEdit(boolean edit) {
		this.edit = true;
	}

	public boolean isCancel() {
		return cancel;
	}

	public void setCancel(boolean cancel) {
		this.cancel = cancel;
	}

	public String getNewStatus() {
		return newStatus;
	}

	public void setNewStatus(String newStatus) {
		this.newStatus = newStatus;
	}

	public String getOrderId() {
		return orderId;
	}

	public void setOrderId(String orderId) {
		this.orderId = orderId;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public Order getOrder() {
		return order;
	}

	public void setOrder(Order order) {
		this.order = order;
	}

	public String getOrderItemId() {
		return orderItemId;
	}

	public void setOrderItemId(String orderItemId) {
		this.orderItemId = orderItemId;
	}

	public boolean isDelete() {
		return delete;
	}

	public void setDelete(boolean delete) {
		this.delete = true;
	}

	public boolean isBack() {
		return back;
	}

	public void setBack(boolean back) {
		this.back = back;
	}
	
}
