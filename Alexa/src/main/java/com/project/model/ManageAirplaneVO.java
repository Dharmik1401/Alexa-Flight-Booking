package com.project.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="manageairplane_table")
public class ManageAirplaneVO {
	
	@Id
	@Column(name="id")
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	
	@ManyToOne
	@JoinColumn(name="manageAirline_id")
	private ManageAirlineVO manageAirlineVO;
	
	@ManyToOne
	@JoinColumn(name="manageAirplaneType_id")
	private ManageAirplaneTypeVO manageAirplaneTypeVO;

	@Column(name = "airplane_number")
	private String airplaneNumber;
	
	@Column(name = "airplane_description")
	private String airplaneDescription;
	
	@Column(name="status")
	private boolean status=true;
	
	@Column(name = "airplane_filename")
	private String airplaneFileName;
	
	@Column(name = "airplane_filepath")
	private String airplaneFilePath;
	
	public boolean isStatus() {
		return status;
	}

	public void setStatus(boolean status) {
		this.status = status;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public ManageAirlineVO getManageAirlineVO() {
		return manageAirlineVO;
	}

	public void setManageAirlineVO(ManageAirlineVO manageAirlineVO) {
		this.manageAirlineVO = manageAirlineVO;
	}

	public ManageAirplaneTypeVO getManageAirplaneTypeVO() {
		return manageAirplaneTypeVO;
	}

	public void setManageAirplaneTypeVO(ManageAirplaneTypeVO manageAirplaneTypeVO) {
		this.manageAirplaneTypeVO = manageAirplaneTypeVO;
	}

	public String getAirplaneNumber() {
		return airplaneNumber;
	}

	public void setAirplaneNumber(String airplaneNumber) {
		this.airplaneNumber = airplaneNumber;
	}

	public String getAirplaneDescription() {
		return airplaneDescription;
	}

	public void setAirplaneDescription(String airplaneDescription) {
		this.airplaneDescription = airplaneDescription;
	}

	public String getAirplaneFileName() {
		return airplaneFileName;
	}

	public void setAirplaneFileName(String airplaneFileName) {
		this.airplaneFileName = airplaneFileName;
	}

	public String getAirplaneFilePath() {
		return airplaneFilePath;
	}

	public void setAirplaneFilePath(String airplaneFilePath) {
		this.airplaneFilePath = airplaneFilePath;
	}
	
}
