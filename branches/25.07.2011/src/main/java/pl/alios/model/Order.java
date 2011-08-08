package pl.alios.model;

import java.sql.Date;
import java.text.NumberFormat;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Transient;

import pl.alios.utils.Commons;

@Entity(name="zamowienie")
public class Order {
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Long orderId;
	private String number;
	private Double transportCostBrutto = new Double(Commons.TRANSPORT_COST_BRUTTO);
	private Double transportCostNetto = new Double(Commons.TRANSPORT_COST_NETTO);
	private Double totalPriceBrutto;
	private Double totalPriceNetto;
	private Double totalCostBrutto;
	private Double totalCostNetto;
	private String state;
	
	@Column(name="metoda_platnosci")
	private String paymentMethod;
	
	@Column(name="data_dostarczenia")
	private Date deliveryDate;
	
	@Column(name="data_zlozenia")
	private Date orderDate;
	//TODO
	@Column(name="data_wystawienia_faktury")
	private Date issueDate = new Date(new java.util.Date().getTime());
	
	@ManyToOne
	private Customer customer;
	
	@OneToMany(cascade={CascadeType.PERSIST, CascadeType.REMOVE},mappedBy="order_zam")
	private List<OrderItem> listOfProducts;
	
	public void addToCart(OrderItem item){
		
		if(getListOfProducts() == null) listOfProducts = new ArrayList<OrderItem>();
		Long id = item.getProduct().getProduct_id();
		
		item.setOrder(this);
		
		for(OrderItem orderItem : listOfProducts){
			if( orderItem.getProduct().getProduct_id().equals(id)){
				orderItem.setNumberOfItem(orderItem.getNumberOfItem()+item.getNumberOfItem());
				updateCosts();
				return;
			}
		}
		listOfProducts.add(item);
		updateCosts();
	}

	public Long getOrderId() {
		return orderId;
	}
	
	public void updateCosts(){
		//Laczna cena brutto
		totalPriceBrutto = 0.0;
		for(OrderItem item : listOfProducts){
			totalPriceBrutto += item.getTotalPriceBrutto();
		}
		//Laczana cena Netto
		totalPriceNetto = 0.0;
		for(OrderItem item : listOfProducts){
			totalPriceNetto += item.getTotalPriceNetto();
		}
		//Koszt calkowity z transportem
		totalCostBrutto = totalPriceBrutto + transportCostBrutto;
		totalCostNetto = totalPriceNetto + transportCostNetto;
		
	}
	
	/* FORMETERS */
	public String getNumberOfItems(){return Integer.toString(listOfProducts.size());}
	public String getTotalPriceBruttoString(){return format(totalPriceBrutto);}
	public String getTransportBruttoString(){return format(transportCostBrutto);}
	public String getTransportNettoString(){return format(transportCostNetto);}
	public String getTotalPriceNettoString(){return format(totalPriceNetto);}
	public String getTotalCostBrutto(){return format(totalCostBrutto);}
	public Double getTotalCostBruttoDouble(){return totalCostBrutto;}
	public String getTotalCostNetto(){return format(totalCostNetto);}
	public String getAmountVatString() {return format(totalCostBrutto - totalCostNetto);}
	public String getTransportVatString() {return format(transportCostBrutto - transportCostNetto);}
	public String gettransportCostBruttoString () {return format(transportCostBrutto);}
	
	
	/* GETERS AND SETTERS */
	public Double getTransportCostBrutto() {return transportCostBrutto;}
	public void setTransportCostBrutto(Double transportCostBrutto) {this.transportCostBrutto = transportCostBrutto;}
	public Double getTransportCostNetto() {return transportCostNetto;}
	public void setTransportCostNetto(Double transportCostNetto) {this.transportCostNetto = transportCostNetto;}
	public Double getTotalPriceBrutto() {return totalPriceBrutto;}
	public void setTotalPriceBrutto(Double totalPriceBrutto) {this.totalPriceBrutto = totalPriceBrutto;}
	public Double getTotalPriceNetto() {return totalPriceNetto;}
	public void setTotalPriceNetto(Double totalPriceNetto) {this.totalPriceNetto = totalPriceNetto;}
	public String getState() {return state;}
	public void setState(String state) {this.state = state;}
	public void setTotalCostBrutto(Double totalCostBrutto) {this.totalCostBrutto = totalCostBrutto;}
	public void setTotalCostNetto(Double totalCostNetto) {this.totalCostNetto = totalCostNetto;}
	public Date getOrderDate() {return orderDate;}
	public void setOrderDate(Date orderDate) {this.orderDate = orderDate;}
	public Customer getCustomer() {return customer;}
	public void setCustomer(Customer customer) {this.customer = customer;}
	public void setOrderId(Long orderId) {this.orderId = orderId;}
	public String getNumber() {return number;}
	public void setNumber(String number) {this.number = number;}
	public String getPaymentMethod() {return paymentMethod;}
	public void setPaymentMethod(String paymentMethod) {this.paymentMethod = paymentMethod;}
	public Date getDeliveryDate() {return deliveryDate;}
	public void setDeliveryDate(Date deliveryDate) {this.deliveryDate = deliveryDate;}
	public Date getIssueDate() {return issueDate;}
	public void setIssueDate(Date issueDate) {this.issueDate = issueDate;}
	
	public List<OrderItem> getListOfProducts() {return listOfProducts;}
	public void setListOfProducts(List<OrderItem> listOfProducts) {this.listOfProducts = listOfProducts;}
	
	
	@Transient
	private NumberFormat nf  = NumberFormat.getInstance();
	public String format(double value){
		nf.setMaximumFractionDigits(2);
		nf.setMinimumFractionDigits(2);
		return nf.format(value);
	}
}
