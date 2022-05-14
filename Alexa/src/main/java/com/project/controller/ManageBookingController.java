package com.project.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.servlet.ModelAndView;

import com.project.model.LoginVO;
import com.project.model.ManageAirplaneVO;
import com.project.service.ManageAirplaneService;
import com.project.service.ManageBookingService;
import com.project.service.ManageLoginService;
import com.project.utils.Basemethods;

@Controller

public class ManageBookingController {
	@Autowired
	private ManageBookingService manageBookingService;
	
	@Autowired
	private Basemethods Basemethods;
	
	@Autowired
	private ManageLoginService loginService;

	@SuppressWarnings("rawtypes")
	@GetMapping("admin/viewBooking")
	public ModelAndView viewBooking(@ModelAttribute LoginVO loginVO,
			@ModelAttribute ManageAirplaneVO manageAirplaneVO) {
		List bookingList = this.manageBookingService.search();
		return new ModelAndView("admin/viewBooking", "bookingList", bookingList);
	}

	@SuppressWarnings("rawtypes")
	@GetMapping("user/userViewBooking")
	public ModelAndView userViewBooking(ManageAirplaneVO manageAirplaneVO) {
		LoginVO loginVO =this.loginService.getByUsername(Basemethods.getUser());
		
		List bookingList = this.manageBookingService.searchByLoginId(loginVO.getLoginId());
		System.out.println(bookingList.size());
		return new ModelAndView("user/userViewBooking", "bookingList", bookingList);
	}
}
