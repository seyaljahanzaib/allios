package pl.alios.action.admin;

import java.sql.Date;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;

import pl.alios.model.Category;
import pl.alios.model.Order;
import pl.alios.model.OrderItem;
import pl.alios.model.Product;
import pl.alios.model.dao.adapter.DBAdapter;
import pl.alios.utils.Commons;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class ExternalOrderAdminAction extends ActionSupport {

	private static final long serialVersionUID = 1L;
	private Logger logger  = Logger.getLogger(ExternalOrderAdminAction.class);
	
	public ExternalOrderAdminAction() throws Exception {
		products = DBAdapter.getInstance().getProductDAO().getAllProducts(true, "name");
		Map<String,Object> sessionAttr = ActionContext.getContext().getSession();
		order = (Order) sessionAttr.get("order_AddAdmin");
		data = new Date(new java.util.Date().getTime());
	}
	
	public String execute(){
		if (init) return init();
		if (create) return create();
		if (add) return add();
		if (delete) return delete();
		return "ERROR";
	}

	
	private String delete() {
		return null;
	}

	private String add() {
		logger.info("Dodanie itema zamowienia zewnetrznego");
		int nubmerOfItem = 0;
		try{
			nubmerOfItem = Integer.valueOf(quantity);
			quantity = null;
		}catch(NumberFormatException e){
			quantity = null;
			setMessage("Wprowadzono zla wartosc");
			return "MESSAGE";
		}
		OrderItem newOrderItem = new OrderItem();
		if(order.getListOfProducts() == null) order.setListOfProducts(new ArrayList<OrderItem>());
		try {
			newOrderItem.setProduct(DBAdapter.getInstance().getProductDAO().getProduct(productID));
			newOrderItem.setPriceBrutto(newOrderItem.getProduct().getPriceBrutto());
			newOrderItem.setPriceNetto(newOrderItem.getProduct().getPriceNetto());
			newOrderItem.setVAT(newOrderItem.getProduct().getVat());
		} catch (Exception e1) {
			logger.error("Nie udało sie pobrac produktu z bazy" + e1);
			return "ERROR";
		}
		

		if (nubmerOfItem < 1) {
			setMessage("Wprowadzono zla wartosc");
			return "MESSAGE";
		}
		newOrderItem.setNumberOfItem(nubmerOfItem);

		if (order.addToCart(newOrderItem)) {
			return "SUCCESS";
		} else {
			setMessage("Nie mozesz przekroczyc aktualnego stanu tego produktu");
			return "MESSAGE";
		}

	}

	private String create() {
		logger.info("Dodanie zamowienia zewnetrznego");
		order.setOrderDate(new Date(new java.util.Date().getTime()));
		order.setState(Commons.ORDER_STATE_OCZEKUJE);
		order.setExternal(Boolean.TRUE);
		try {
			DBAdapter.getInstance().getOrderDAO().addOrder(order);
		} catch (Exception e) {
			setMessage("NIE UDAŁO SIE. Upewnij sie ze wypelniles wszystkie pola");
			logger.error("NIE UDAŁO SIE. Upewnij sie ze wypelniles wszystkie pola" + e);
			return "MESSAGE";
		}
		return "END";
	}

	private String init() {
		// Zrób nowego ordera w sesji
		logger.info("Incjacja faromularza zamowienia zewnetrznego");
		Map<String,Object> sessionAttr = ActionContext.getContext().getSession();
		sessionAttr.remove("order_AddAdmin");
		order = new Order();
		sessionAttr.put("order_AddAdmin", order);
		return "SUCCESS";
	}






	private boolean init;
	private boolean create;
	private boolean add;
	private boolean delete;
	
	private String message;
	
	
	
	private ArrayList<Category> categories;
	private List<Product> products;
	
	private Order order;
	private String productID;
	private Integer itemID;
	private String quantity;
	private Date data;
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	public boolean isInit() {
		return init;
	}

	public void setInit(boolean init) {
		this.init = true;
	}

	public boolean isCreate() {
		return create;
	}

	public void setCreate(boolean create) {
		this.create = true;
	}

	public boolean isAdd() {
		return add;
	}

	public void setAdd(boolean add) {
		this.add = true;
	}

	public boolean isDelete() {
		return delete;
	}

	public void setDelete(boolean delete) {
		this.delete = true;
	}

	public ArrayList<Category> getCategories() {
		return categories;
	}

	public void setCategories(ArrayList<Category> categories) {
		this.categories = categories;
	}

	public List<Product> getProducts() {
		return products;
	}

	public void setProducts(List<Product> products) {
		this.products = products;
	}

	public Order getOrder() {
		return order;
	}

	public void setOrder(Order order) {
		this.order = order;
	}

	public String getProductID() {
		return productID;
	}

	public void setProductID(String productID) {
		this.productID = productID;
	}

	public Integer getItemID() {
		return itemID;
	}

	public void setItemID(Integer itemID) {
		this.itemID = itemID;
	}

	public String getQuantity() {
		return quantity;
	}

	public void setQuantity(String quantity) {
		this.quantity = quantity;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public Date getData() {
		return data;
	}

	public void setData(Date data) {
		this.data = data;
	}
	
	
	
	
	
	
	
}
