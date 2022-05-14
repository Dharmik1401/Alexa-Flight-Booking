package com.project.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.project.model.ManageAirlineVO;
import com.project.service.ManageAirlineService;

@Controller
public class ManageAirlineController {
	@Autowired
	private ManageAirlineService manageAirlineService;

	@GetMapping("admin/addAirline")
	public ModelAndView addAirline() {
		return new ModelAndView("admin/addAirline", "manageAirlineVO", new ManageAirlineVO());
	}

	@PostMapping("admin/saveAirline")
	public ModelAndView saveAirline(@ModelAttribute ManageAirlineVO manageAirlineVO) {
		this.manageAirlineService.saveAirline(manageAirlineVO);
		return new ModelAndView("redirect:/admin/addAirline");
	}

	@GetMapping("admin/viewAirline")
	public ModelAndView viewAirline() {
		List<ManageAirlineVO> airlineList = this.manageAirlineService.search();
		return new ModelAndView("admin/viewAirline", "airlineList", airlineList);
	}

	@GetMapping(value = "admin/deleteAirline")
	public ModelAndView deleteAirline(@ModelAttribute ManageAirlineVO manageAirlineVO, @RequestParam int id) {
		List<ManageAirlineVO> airlineList = this.manageAirlineService.findById(id);
		manageAirlineVO = airlineList.get(0);
		manageAirlineVO.setStatus(false);
		this.manageAirlineService.saveAirline(manageAirlineVO);
		return new ModelAndView("redirect:/admin/viewAirline");
	}

	@GetMapping(value = "admin/editAirline")
	public ModelAndView editAirline(@ModelAttribute ManageAirlineVO manageAirlineVO, @RequestParam int id) {
		List<ManageAirlineVO> airlineList = this.manageAirlineService.findById(id);
		manageAirlineVO = airlineList.get(0);
		return new ModelAndView("admin/addAirline", "manageAirlineVO", manageAirlineVO).addObject("airlineList",
				airlineList);

	}
}
