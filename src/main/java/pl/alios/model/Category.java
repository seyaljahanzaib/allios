package pl.alios.model;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

import org.apache.log4j.Logger;

@Entity(name="kategoria")
public class Category {
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Long id;
	
	private String name;
	private String displayableName;
	
	private Boolean active;
	
	@ManyToOne
	private Category mainCategory;
	
    @OneToMany(mappedBy="mainCategory")
    private List<Category> subCategories;

	public Long getId() {return id;}
	public void setId(Long id) {this.id = id;}
	public String getName() {return name;}
	public void setName(String name) {this.name = name;}
	public String getDisplayableName() {return displayableName;}
	public void setDisplayableName(String displayableName) {this.displayableName = displayableName;}
	public Category getMainCategory() {return mainCategory;}
	public void setMainCategory(Category mainCategory) {this.mainCategory = mainCategory;}
	public List<Category> getSubCategories() {return subCategories;}
	public void setSubCategories(List<Category> subCategories) {this.subCategories = subCategories;}

//	public boolean getActive() {
//		return active;
//	}
	
	public Boolean getActive() {
		return active;
	}
	
	
	public void setActive(boolean active) {
		Logger logger  = Logger.getLogger(Category.class);
		logger.info("Zmieniam YEAH : " + active);
		
		System.out.println("Zmieniam YEAH");
		this.active = active;
	}

	public void setActive(Boolean active) {
		Logger logger  = Logger.getLogger(Category.class);
		logger.info("Zmieniam YEAH : " + active);
		
		System.out.println("Zmieniam YEAH");
		this.active = active;
	}
	
	
}