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
@Table(name="manageschedule_table")
public class ManageScheduleVO {
	
	@Id
	@Column(name="id")
	@GeneratedValue(strategy= GenerationType.AUTO)
	private int id;
	
	@Column(name="route_name")
	private String routeName;
	
	@ManyToOne
	@JoinColumn(name="manageAirplaneNumber_id")
	private ManageAirplaneVO manageAirplaneVO;
	
	@Column(name="route_type")
	private String routeType;
	
	@Column(name="pricing")
	private String pricing;
	
	@ManyToOne
	@JoinColumn(name="manageFromCityVO_id")
	private ManageCityVO manageFromCityVO;
	
	@ManyToOne
	@JoinColumn(name="manageToCityVO_id")
	private ManageCityVO manageToCityVO;
	
	@ManyToOne
	@JoinColumn(name="manageFromAirportVO_id")
	private ManageAirportVO manageFromAirportVO;
	
	@ManyToOne
	@JoinColumn(name="manageToAirportVO_id")
	private ManageAirportVO manageToAirportVO;
	
	@Column(name="status")
	private boolean status=true;
	
	@Column(name="days")
	private String days;

	@Column(name="departureTime")
	private String departureTime;
	
	@Column(name="arrivalTime")
	private String arrivalTime;
	
	@ManyToOne
	@JoinColumn(name="manageReturnFromCityVO_id")
	private ManageCityVO manageReturnFromCityVO;
	
	@ManyToOne
	@JoinColumn(name="manageReturnToCityVO_id")
	private ManageCityVO manageReturnToCityVO;
	
	@ManyToOne
	@JoinColumn(name="manageReturnFromAirportVO_id")
	private ManageAirportVO manageReturnFromAirportVO;
	
	@ManyToOne
	@JoinColumn(name="manageReturnToAirportVO_id")
	private ManageAirportVO manageReturnToAirportVO;
	
	@Column(name="returnDepartureTime")
	private String returnDepartureTime;
	
	@Column(name="returnArrivalTime")
	private String returnArrivalTime;
	
	
	public ManageCityVO getManageReturnFromCityVO() {
		return manageReturnFromCityVO;
	}

	public void setManageReturnFromCityVO(ManageCityVO manageReturnFromCityVO) {
		this.manageReturnFromCityVO = manageReturnFromCityVO;
	}

	public ManageCityVO getManageReturnToCityVO() {
		return manageReturnToCityVO;
	}

	public void setManageReturnToCityVO(ManageCityVO manageReturnToCityVO) {
		this.manageReturnToCityVO = manageReturnToCityVO;
	}

	public ManageAirportVO getManageReturnFromAirportVO() {
		return manageReturnFromAirportVO;
	}

	public void setManageReturnFromAirportVO(ManageAirportVO manageReturnFromAirportVO) {
		this.manageReturnFromAirportVO = manageReturnFromAirportVO;
	}

	public ManageAirportVO getManageReturnToAirportVO() {
		return manageReturnToAirportVO;
	}

	public void setManageReturnToAirportVO(ManageAirportVO manageReturnToAirportVO) {
		this.manageReturnToAirportVO = manageReturnToAirportVO;
	}

	public String getReturnDepartureTime() {
		return returnDepartureTime;
	}

	public void setReturnDepartureTime(String returnDepartureTime) {
		this.returnDepartureTime = returnDepartureTime;
	}

	public String getReturnArrivalTime() {
		return returnArrivalTime;
	}

	public void setReturnArrivalTime(String returnArrivalTime) {
		this.returnArrivalTime = returnArrivalTime;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getRouteName() {
		return routeName;
	}

	public void setRouteName(String routeName) {
		this.routeName = routeName;
	}

	public ManageAirplaneVO getManageAirplaneVO() {
		return manageAirplaneVO;
	}

	public void setManageAirplaneVO(ManageAirplaneVO manageAirplaneVO) {
		this.manageAirplaneVO = manageAirplaneVO;
	}

	public ManageCityVO getManageFromCityVO() {
		return manageFromCityVO;
	}

	public void setManageFromCityVO(ManageCityVO manageFromCityVO) {
		this.manageFromCityVO = manageFromCityVO;
	}

	public ManageCityVO getManageToCityVO() {
		return manageToCityVO;
	}

	public void setManageToCityVO(ManageCityVO manageToCityVO) {
		this.manageToCityVO = manageToCityVO;
	}

	public ManageAirportVO getManageFromAirportVO() {
		return manageFromAirportVO;
	}

	public void setManageFromAirportVO(ManageAirportVO manageFromAirportVO) {
		this.manageFromAirportVO = manageFromAirportVO;
	}

	public ManageAirportVO getManageToAirportVO() {
		return manageToAirportVO;
	}

	public void setManageToAirportVO(ManageAirportVO manageToAirportVO) {
		this.manageToAirportVO = manageToAirportVO;
	}

	public boolean isStatus() {
		return status;
	}

	public void setStatus(boolean status) {
		this.status = status;
	}

	public String getDays() {
		return days;
	}

	public void setDays(String days) {
		this.days = days;
	}

	public String getDepartureTime() {
		return departureTime;
	}

	public void setDepartureTime(String departureTime) {
		this.departureTime = departureTime;
	}

	public String getArrivalTime() {
		return arrivalTime;
	}

	public void setArrivalTime(String arrivalTime) {
		this.arrivalTime = arrivalTime;
	}

	public String getRouteType() {
		return routeType;
	}

	public void setRouteType(String routeType) {
		this.routeType = routeType;
	}

	public String getPricing() {
		return pricing;
	}

	public void setPricing(String pricing) {
		this.pricing = pricing;
	}
	
}