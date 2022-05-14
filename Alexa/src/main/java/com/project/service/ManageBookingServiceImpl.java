package com.project.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.dao.ManageBookingDAO;
import com.project.model.BookingVO;

@Service
@Transactional

public class ManageBookingServiceImpl implements ManageBookingService{
@Autowired
private ManageBookingDAO manageBookingDAO;

	@Override
	public List<BookingVO> search() {
		return this.manageBookingDAO.search();
	}

	@Override
	public List searchByLoginId(int loginId) {
		return this.manageBookingDAO.searchByLoginId(loginId);
	}

}
