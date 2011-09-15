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
	
	private Boolean external;
	

	private String ordCompanyName;

	private String ordStreet;

	private String ordCity;

	private String ordZipCode;
	
	
	@OneToMany(cascade={CascadeType.PERSIST, CascadeType.REMOVE},mappedBy="order_zam")
	private List<OrderItem> listOfProducts;
	
	public boolean addToCart(OrderItem item){
		item.setOrder(this);
		if(getListOfProducts() == null) listOfProducts = new ArrayList<OrderItem>();
		Long id = item.getProduct().getProduct_id();
		
		
		for(OrderItem orderItem : listOfProducts){
			System.out.println("P-1");
			if( orderItem.getProduct().getProduct_id().equals(id)){
				System.out.println("P-2");
				int allQuantity = orderItem.getNumberOfItem()+item.getNumberOfItem();

				if(allQuantity <= item.getProduct().getNumberOfItems()){
					System.out.println("P-3");
					orderItem.setNumberOfItem(allQuantity);
					updateCosts();
					return true;
				}else{
					System.out.println("P-4");
					orderItem.setNumberOfItem(item.getProduct().getNumberOfItems());
					updateCosts();
					return false;
				}
			}
		}
		
		if(item.getNumberOfItem() <= item.getProduct().getNumberOfItems()){
			System.out.println("P-5");
			listOfProducts.add(item);
			updateCosts();
			return true;
		}else{
			System.out.println("P-6");
			item.setNumberOfItem(item.getProduct().getNumberOfItems());
			listOfProducts.add(item);
			updateCosts();
			return false;
		}

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
	
	public String getNetto23(){
		double razem = 19.25;
		for(OrderItem item : listOfProducts){
			if(item.getVAT().equals(Commons.VAT_23.doubleValue())){
				razem += item.getTotalNetto();
			}
		}
		return format(razem);
	};
	public String getVatAmount23(){
		double razem = 5.75;
		for(OrderItem item : listOfProducts){
			if(item.getVAT().equals(Commons.VAT_23.doubleValue())){
				razem += item.getAmountVat();
			}
		}
		return format(razem);
	};
	public String getBrutto23(){
		double razem = 25;
		for(OrderItem item : listOfProducts){
			System.out.println("item.getVAT()" + item.getVAT());
			System.out.println("Commons.VAT_23" + Commons.VAT_23.doubleValue());
			if(item.getVAT().equals(Commons.VAT_23)){
				razem += item.getTotalPriceBrutto();
			}
		}
		return format(razem);
	};
	
	public String getNetto8(){
		double razem = 0;
		
		for(OrderItem item : listOfProducts){
			System.out.println("item.getVAT()" + item.getVAT());
			System.out.println("Commons.VAT_8" + Commons.VAT_8);
			if(item.getVAT().equals(Commons.VAT_8.doubleValue())){
				razem += item.getTotalNetto();
			}
		}
		return format(razem);
	};
	public String getVatAmount8(){
		double razem = 0;
		for(OrderItem item : listOfProducts){
			if(item.getVAT().equals(Commons.VAT_8.doubleValue())){
				razem += item.getAmountVat();
			}
		}
		return format(razem);
	};
	public String getBrutto8(){
		double razem = 0;
		for(OrderItem item : listOfProducts){
			if(item.getVAT().equals(Commons.VAT_8.doubleValue())){
				razem += item.getTotalPriceBrutto();
			}
		}
		return format(razem);
	};
	
	
	
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
	public String getOrdCompanyName() {return ordCompanyName;}
	public void setOrdCompanyName(String ordCompanyName) {this.ordCompanyName = ordCompanyName;}
	public String getOrdStreet() {return ordStreet;}
	public void setOrdStreet(String ordStreet) {this.ordStreet = ordStreet;}
	public String getOrdCity() {return ordCity;}
	public void setOrdCity(String ordCity) {this.ordCity = ordCity;}
	public String getOrdZipCode() {return ordZipCode;}
	public void setOrdZipCode(String ordZipCode) {this.ordZipCode = ordZipCode;}

	public Boolean getExternal() {
		return external;
	}

	public void setExternal(Boolean external) {
		this.external = external;
	}

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
