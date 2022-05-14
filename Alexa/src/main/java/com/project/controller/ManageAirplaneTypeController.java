package com.project.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.project.model.ManageAirplaneTypeVO;
import com.project.service.ManageAirplaneTypeService;

@Controller
public class ManageAirplaneTypeController {

	@Autowired
	private HttpServletRequest request;

	@Autowired
	private ManageAirplaneTypeService manageAirplaneTypeService;

	@GetMapping("admin/addAirplaneType")
	public ModelAndView addAirplaneType() {

		return new ModelAndView("admin/addAirplaneType", "manageAirplaneTypeVO", new ManageAirplaneTypeVO());
	}

	@PostMapping(value = "admin/saveAirplaneType")
	public ModelAndView saveAirplaneType(@ModelAttribute ManageAirplaneTypeVO manageAirplaneTypeVO) {
		String economy = request.getParameter("economy");
		String first = request.getParameter("first");
		String business = request.getParameter("business");
		manageAirplaneTypeVO.setEconomyClass(economy);
		manageAirplaneTypeVO.setFirstClass(first);
		manageAirplaneTypeVO.setBusinessClass(business);

		this.manageAirplaneTypeService.save(manageAirplaneTypeVO);
		return new ModelAndView("redirect:/admin/addAirplaneType");
	}

	@GetMapping("admin/viewAirplaneType")
	public ModelAndView viewAirplaneType() {
		List<ManageAirplaneTypeVO> airplaneTypeList = this.manageAirplaneTypeService.search();
		return new ModelAndView("admin/viewAirplaneType", "airplaneTypeList", airplaneTypeList);
	}

	@GetMapping("admin/deleteAirplaneType")
	public ModelAndView deleteAirplaneType(@ModelAttribute ManageAirplaneTypeVO manageAirplaneTypeVO,
			@RequestParam int id) {

		List<ManageAirplaneTypeVO> airplaneTypeList = this.manageAirplaneTypeService.findById(id);
		manageAirplaneTypeVO = airplaneTypeList.get(0);
		manageAirplaneTypeVO.setStatus(false);
		this.manageAirplaneTypeService.save(manageAirplaneTypeVO);
		return new ModelAndView("redirect:/admin/viewAirplaneType");

	}

	@GetMapping("admin/editAirplaneType")
	public ModelAndView editAirplaneType(@ModelAttribute ManageAirplaneTypeVO manageAirplaneTypeVO,
			@RequestParam int id) {

		List<ManageAirplaneTypeVO> airplaneTypeList = this.manageAirplaneTypeService.findById(id);

		manageAirplaneTypeVO = airplaneTypeList.get(0);

		return new ModelAndView("admin/addAirplaneType", "manageAirplaneTypeVO", manageAirplaneTypeVO)
				.addObject("airplaneTypeList", airplaneTypeList);

	}

	@GetMapping("admin/getCapacity")
	public ResponseEntity<ManageAirplaneTypeVO> getCapacity(@RequestParam int id) {
		List<ManageAirplaneTypeVO> airplaneTypeList = this.manageAirplaneTypeService.findById(id);
		return new ResponseEntity<ManageAirplaneTypeVO>(airplaneTypeList.get(0), HttpStatus.OK);

	}
}