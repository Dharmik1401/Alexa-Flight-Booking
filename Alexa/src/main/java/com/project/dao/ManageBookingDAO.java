package com.project.dao;

import java.util.List;

import com.project.model.BookingVO;

public interface ManageBookingDAO {

	List<BookingVO> search();

	List searchByLoginId(int loginId);

}
   