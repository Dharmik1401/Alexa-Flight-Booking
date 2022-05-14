package com.project.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.project.model.ManageAirplaneVO;
import com.project.model.ManageAirportVO;
import com.project.model.ManageCityVO;
import com.project.model.ManageScheduleVO;
import com.project.service.ManageAirplaneService;
import com.project.service.ManageAirportService;
import com.project.service.ManageCityService;
import com.project.service.ManageScheduleService;

@Controller
public class ManageScheduleController {
	@Autowired
	private ManageCityService manageCityService;

	@Autowired
	private ManageAirplaneService manageAirplaneService;

	@Autowired
	private ManageAirportService manageAirportService;

	@Autowired
	private ManageScheduleService manageScheduleService;

	@GetMapping("admin/addSchedule")
	public ModelAndView addSchedule() {
		List<ManageAirplaneVO> airplaneList = this.manageAirplaneService.search();
		List<ManageCityVO> cityList = this.manageCityService.search();
		List<ManageAirportVO> airportList = this.manageAirportService.search();
		return new ModelAndView("admin/addSchedule", "manageScheduleVO", new ManageScheduleVO())
				.addObject("airplaneList", airplaneList).addObject("cityList", cityList)
				.addObject("airportList", airportList);
	}

	@PostMapping("admin/saveSchedule")
	public ModelAndView saveSchedule(@ModelAttribute ManageScheduleVO manageScheduleVO, HttpServletRequest request) {
		String[] days = request.getParameterValues("days");
		String day = "";

		for (int i = 0; i < days.length; i++) {
			day = day + " " + days[i];
		}

		manageScheduleVO.setDays(day);

		this.manageScheduleService.saveSchedule(manageScheduleVO);
		return new ModelAndView("redirect:/admin/addSchedule");
	}

	@GetMapping("admin/viewSchedule")
	public ModelAndView viewSchedule() {
		List<ManageScheduleVO> scheduleList = this.manageScheduleService.search();
		return new ModelAndView("admin/viewSchedule", "scheduleList", scheduleList);
	}

	@GetMapping("admin/deleteSchedule")
	public ModelAndView deleteSchedule(@ModelAttribute ManageScheduleVO manageScheduleVO, @RequestParam int id) {

		List<ManageScheduleVO> scheduleList = this.manageScheduleService.findById(id);
		manageScheduleVO = scheduleList.get(0);
		manageScheduleVO.setStatus(false);
		this.manageScheduleService.saveSchedule(manageScheduleVO);
		return new ModelAndView("redirect:/admin/viewSchedule");

	}

	@GetMapping("admin/editSchedule")
	public ModelAndView editSchedule(@ModelAttribute ManageScheduleVO manageScheduleVO,
			@ModelAttribute ManageCityVO manageCityVO, @ModelAttribute ManageAirportVO manageAirportVO,
			@ModelAttribute ManageAirplaneVO manageAirplaneVO, @RequestParam int id) {
		List<ManageAirplaneVO> airplaneList = this.manageAirplaneService.search();
		List<ManageCityVO> cityList = this.manageCityService.search();
		List<ManageAirportVO> airportList = this.manageAirportService.search();

		manageScheduleVO.setId(id);
		List<ManageScheduleVO> scheduleList = this.manageScheduleService.findById(id);
		manageScheduleVO = scheduleList.get(0);

		return new ModelAndView("admin/addSchedule", "manageScheduleVO", manageScheduleVO)
				.addObject("airplaneList", airplaneList).addObject("cityList", cityList)
				.addObject("airportList", airportList);
	}
}
