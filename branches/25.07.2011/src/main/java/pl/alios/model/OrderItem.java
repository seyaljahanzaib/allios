package pl.alios.model;

import java.text.NumberFormat;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Transient;

@Entity(name="element_zamowienia")
public class OrderItem {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long orderItemId;
	@ManyToOne
    @JoinColumn(name="product_id")
	private Product product;
	private Double priceNetto;
	private Double priceBrutto;
	private Integer numberOfItem;
	
	@ManyToOne
	@JoinColumn(name="order_id_order_zam")
	private Order order_zam;

	public Product getProduct() {return product;}
	public void setProduct(Product product) {this.product = product;}
	public Integer getNumberOfItem() {return numberOfItem;}
	public void setNumberOfItem(Integer numberOfItem) {this.numberOfItem = numberOfItem;}
	public Double getPriceNetto() {return priceNetto;}
	public void setPriceNetto(Double priceNetto) {this.priceNetto = priceNetto;}
	public Double getPriceBrutto() {return priceBrutto;}
	public void setPriceBrutto(Double priceBrutto) {this.priceBrutto = priceBrutto;}
	public Long getOrderItemId() {return orderItemId;}
	public void setOrderItemId(Long orderItemId) {this.orderItemId = orderItemId;}
	public Order getOrder() {return order_zam;}
	public void setOrder(Order order) {this.order_zam = order;}
	
	
	public String getPriceBruttoString(){
		return format(priceBrutto);
	}
	
	public String getPriceNettoString(){
		return format(priceNetto);
	}
	
	public Double getTotalPriceBrutto() {
		return priceBrutto * numberOfItem;
	}

	public Double getTotalPriceNetto() {
		return priceNetto * numberOfItem;
	}

	public String getTotalPriceBruttoString() {
		return format(getTotalPriceBrutto());
	}

	public String getTotalPriceNettoString() {
		return format(getTotalPriceNetto());
	}
	@Transient
	private NumberFormat nf = NumberFormat.getInstance();

	public String format(double value) {
		nf.setMaximumFractionDigits(2);
		nf.setMinimumFractionDigits(2);
		return nf.format(value);
	}

}
