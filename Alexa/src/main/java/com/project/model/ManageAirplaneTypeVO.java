package com.project.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "manageairplanetype_table")

public class ManageAirplaneTypeVO {

	@Id
	@Column(name = "id")
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;

	@Column(name = "airplane_type")
	private String airplaneType;

	@Column(name = "economy_class")
	private String economyClass;

	@Column(name = "business_class")
	private String businessClass;

	@Column(name = "first_class")
	private String firstClass;

	@Column(name = "total")
	private String total;

	@Column(name = "status")
	private boolean status = true;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getAirplaneType() {
		return airplaneType;
	}

	public void setAirplaneType(String airplaneType) {
		this.airplaneType = airplaneType;
	}

	public String getEconomyClass() {
		return economyClass;
	}

	public void setEconomyClass(String economyClass) {
		this.economyClass = economyClass;
	}

	public String getBusinessClass() {
		return businessClass;
	}

	public void setBusinessClass(String businessClass) {
		this.businessClass = businessClass;
	}

	public String getFirstClass() {
		return firstClass;
	}

	public void setFirstClass(String firstClass) {
		this.firstClass = firstClass;
	}

	public String getTotal() {
		return total;
	}

	public void setTotal(String total) {
		this.total = total;
	}

	public boolean isStatus() {
		return status;
	}

	public void setStatus(boolean status) {
		this.status = status;
	}

}