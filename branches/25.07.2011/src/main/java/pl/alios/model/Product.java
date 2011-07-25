package pl.alios.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Product {

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Long product_id;
	private String name;
//	private String description;
	private String shortDescription;
	private Double priceNetto;
	private Double priceBrutto;
//	private String unit;
//	private Double minCount;
//	private Double maxCount;
//	private Double weight;
	private String producer;
	
//	private Boolean prmotion;
//	private Double prmotionPriceNetto;
//	private Double prmotionPriceBrutto;
//	private Boolean news;
//	private String state;
	private String image;
	private String image120;
	
//	private Integer avaiblable;
	private String category;
	
	
	public Long getProduct_id() {return product_id;}
	public void setProduct_id(Long product_id) {this.product_id = product_id;}
	public String getName() {return name;}
	public void setName(String name) {this.name = name;}
//	public String getDescription() {return description;}
//	public void setDescription(String description) {this.description = description;}
	public String getShortDescription() {return shortDescription;}
	public void setShortDescription(String shortDescription) {this.shortDescription = shortDescription;}
	public Double getPriceNetto() {return priceNetto;}
	public void setPriceNetto(Double priceNetto) {this.priceNetto = priceNetto;}
	public Double getPriceBrutto() {return priceBrutto;}
	public void setPriceBrutto(Double priceBrutto) {this.priceBrutto = priceBrutto;}
//	public String getUnit() {return unit;}
//	public void setUnit(String unit) {this.unit = unit;}
//	public Double getMinCount() {return minCount;}
//	public void setMinCount(Double minCount) {this.minCount = minCount;}
//	public Double getMaxCount() {return maxCount;}
//	public void setMaxCount(Double maxCount) {this.maxCount = maxCount;}
//	public Double getWeight() {return weight;}
//	public void setWeight(Double weight) {this.weight = weight;}
	public String getProducer() {return producer;}
	public void setProducer(String producer) {this.producer = producer;}
//	public Boolean getPrmotion() {return prmotion;}
//	public void setPrmotion(Boolean prmotion) {this.prmotion = prmotion;}
//	public Double getPrmotionPriceNetto() {return prmotionPriceNetto;}
//	public void setPrmotionPriceNetto(Double prmotionPriceNetto) {this.prmotionPriceNetto = prmotionPriceNetto;}
//	public Double getPrmotionPriceBrutto() {return prmotionPriceBrutto;}
//	public void setPrmotionPriceBrutto(Double prmotionPriceBrutto) {this.prmotionPriceBrutto = prmotionPriceBrutto;}
//	public Boolean getNews() {return news;}
//	public void setNews(Boolean news) {this.news = news;}
//	public String getState() {return state;}
//	public void setState(String state) {this.state = state;}
	public String getImage() {return image;}
	public void setImage(String image) {this.image = image;}
	public String getImage120() {return image120;}
	public void setImage120(String image120) {this.image120 = image120;}
//	public Integer getAvaiblable() {return avaiblable;}
//	public void setAvaiblable(Integer avaiblable) {this.avaiblable = avaiblable;}
	public String getCategory() {return category;}
	public void setCategory(String category) {this.category = category;}	
}
