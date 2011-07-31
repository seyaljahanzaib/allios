package pl.alios.model;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity(name="property")
public class Property {

	@Id
	private String name;
	private String value;
	
	public String getName() {return name;}
	public void setName(String name) {this.name = name;}
	public String getValue() {return value;}
	public void setValue(String value) {this.value = value;}
}
