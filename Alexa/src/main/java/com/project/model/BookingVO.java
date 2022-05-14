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
@Table(name = "booking_table")
public class BookingVO {

	@Id
	@Column(name="id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
/*	
	@Column
	private String bookingTime;*/
	
	@Column
	private String flightBookingDate;
	
	@ManyToOne
	@JoinColumn(name="login_id")
	private LoginVO loginVO;

	@ManyToOne
	@JoinColumn(name="airplane_id")
	private ManageAirplaneVO manageAirplaneVO;
	
	@Column
	private boolean status=true;
 
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

/*	public String getBookingTime() {
		return bookingTime;
	}

	public void setBookingTime(String bookingTime) {
		this.bookingTime = bookingTime;
	}*/

	public String getFlightBookingDate() {
		return flightBookingDate;
	}

	public void setFlightBookingDate(String flightBookingDate) {
		this.flightBookingDate = flightBookingDate;
	}

	public LoginVO getLoginVO() {
		return loginVO;
	}

	public void setLoginVO(LoginVO loginVO) {
		this.loginVO = loginVO;
	}

	public ManageAirplaneVO getManageAirplaneVO() {
		return manageAirplaneVO;
	}

	public void setManageAirplaneVO(ManageAirplaneVO manageAirplaneVO) {
		this.manageAirplaneVO = manageAirplaneVO;
	}

	public boolean isStatus() {
		return status;
	}

	public void setStatus(boolean status) {
		this.status = status;
	}
	
}
