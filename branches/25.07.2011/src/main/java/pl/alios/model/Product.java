package pl.alios.model;

import java.text.NumberFormat;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Transient;

@Entity
public class Product {

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Long product_id;
	@Column(length=1000)
	private String name;
	@Column(length=3000)
	private String description;
	@Column(length=2000)
	private String shortDescription;
	private Double priceNetto;
	private Double priceBrutto;
	private String unit;
//	private Double minCount;
//	private Double maxCount;
	private Double weight;
	private String producer;
	private String producerCode;
	private double vat;
	@Column(name="dostepnych_sztuk")
	private Integer numberOfItems;
	
//	private Boolean prmotion;
//	private Double prmotionPriceNetto;
//	private Double prmotionPriceBrutto;
//	private Boolean news;
	private String image;
	private String image120;
	private String image140;
	private String image250;
	private Integer firstPagePosition;
	private Boolean active;
	private String storage;
	
//	private Integer avaiblable;
	
	@ManyToOne
    @JoinColumn(name="category_id")
	private Category category;
	
	
	public Long getProduct_id() {return product_id;}
	public void setProduct_id(Long product_id) {this.product_id = product_id;}
	public String getName() {return name;}
	public void setName(String name) {this.name = name;}
	public String getDescription() {return description;}
	public void setDescription(String description) {this.description = description;}
	public String getShortDescription() {return shortDescription;}
	public void setShortDescription(String shortDescription) {this.shortDescription = shortDescription;}
	public Double getPriceNetto() {return priceNetto;}
	public void setPriceNetto(Double priceNetto) {this.priceNetto = priceNetto;}
	public Double getPriceBrutto() {return priceBrutto;}
	public void setPriceBrutto(Double priceBrutto) {this.priceBrutto = priceBrutto;}
	public String getUnit() {return unit;}
	public void setUnit(String unit) {this.unit = unit;}
//	public Double getMinCount() {return minCount;}
//	public void setMinCount(Double minCount) {this.minCount = minCount;}
//	public Double getMaxCount() {return maxCount;}
//	public void setMaxCount(Double maxCount) {this.maxCount = maxCount;}
	public Double getWeight() {return weight;}
	public void setWeight(Double weight) {this.weight = weight;}
	public String getProducer() {return producer;}
	public void setProducer(String producer) {this.producer = producer;}
	public String getStorage() {return storage;}
	public void setStorage(String storage) {this.storage = storage;}
	public double getVat() {return vat;}
	public void setVat(double vat) {this.vat = vat;}
	public Integer getNumberOfItems() {return numberOfItems;}
	public void setNumberOfItems(Integer numberOfItems) {this.numberOfItems = numberOfItems;}
	public String getProducerCode() {return producerCode;}
	public void setProducerCode(String producerCode) {this.producerCode = producerCode;}
	
	
	//	public Boolean getPrmotion() {return prmotion;}
//	public void setPrmotion(Boolean prmotion) {this.prmotion = prmotion;}
//	public Double getPrmotionPriceNetto() {return prmotionPriceNetto;}
//	public void setPrmotionPriceNetto(Double prmotionPriceNetto) {this.prmotionPriceNetto = prmotionPriceNetto;}
//	public Double getPrmotionPriceBrutto() {return prmotionPriceBrutto;}
//	public void setPrmotionPriceBrutto(Double prmotionPriceBrutto) {this.prmotionPriceBrutto = prmotionPriceBrutto;}
//	public Boolean getNews() {return news;}
//	public void setNews(Boolean news) {this.news = news;}
	public String getImage() {return image;}
	public void setImage(String image) {this.image = image;}
	public String getImage120() {return image120;}
	public void setImage120(String image120) {this.image120 = image120;}
//	public Integer getAvaiblable() {return avaiblable;}
//	public void setAvaiblable(Integer avaiblable) {this.avaiblable = avaiblable;}
	public Boolean getActive() {return active;}
	public void setActive(boolean active) {this.active = active;}
	public String getImage140() {return image140;}
	public void setImage140(String image140) {this.image140 = image140;}
	public String getImage250() {return image250;}
	public void setImage250(String image250) {this.image250 = image250;}
	
	
	
	
	public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}
	public Integer getFirstPagePosition() {
		return firstPagePosition;
	}
	public void setFirstPagePosition(Integer firstPagePosition) {
		this.firstPagePosition = firstPagePosition;
	}


	
	public String getPriceBruttoString(){return nf.format(priceBrutto);}
	public String getPriceNettoString(){return nf.format(priceNetto);}
	
	@Transient
	private NumberFormat nf = NumberFormat.getInstance();
	public String format(double value) {
		nf.setMaximumFractionDigits(2);
		nf.setMinimumFractionDigits(2);
		return nf.format(value);
	}
}
