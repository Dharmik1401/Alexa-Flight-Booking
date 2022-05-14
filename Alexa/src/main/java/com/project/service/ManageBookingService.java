package com.project.service;

import java.util.List;

import com.project.model.BookingVO;

public interface ManageBookingService {

	List<BookingVO> search();

	List searchByLoginId(int loginId);
	
}
