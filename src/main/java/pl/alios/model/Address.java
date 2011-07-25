package pl.alios.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;


@Entity
public class Address {

	
	
	@Id
    @GeneratedValue(strategy = GenerationType.AUTO)
	private Long address_Id;
	
	private String baseAddress;
	
	private String zipCode;
	
	private String city;
	
	private String province;
	
	private String country;

	private boolean primaryAddress;

//    @ManyToOne(optional = false)
//    @JoinColumn(name = "customer_Id")
//    private Customer customer;


	public Long getAddress_Id() {
		return address_Id;
	}

	public void setAddress_Id(Long address_Id) {
		this.address_Id = address_Id;
	}

	public String getBaseAddress() {
		return baseAddress;
	}

	public void setBaseAddress(String baseAddress) {
		this.baseAddress = baseAddress;
	}

	public String getZipCode() {
		return zipCode;
	}

	public void setZipCode(String zipCode) {
		this.zipCode = zipCode;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getProvince() {
		return province;
	}

	public void setProvince(String province) {
		this.province = province;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public boolean isPrimaryAddress() {
		return primaryAddress;
	}

	public void setPrimaryAddress(boolean primaryAddress) {
		this.primaryAddress = primaryAddress;
	}

//	public Customer getCustomer() {
//		return customer;
//	}
//
//	public void setCustomer(Customer customer) {
//		this.customer = customer;
//	}
	
}
