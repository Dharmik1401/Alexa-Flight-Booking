package com.project.controller;

import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.project.model.ManageAirlineVO;
import com.project.model.ManageAirplaneTypeVO;
import com.project.model.ManageAirplaneVO;
import com.project.service.ManageAirlineService;
import com.project.service.ManageAirplaneService;
import com.project.service.ManageAirplaneTypeService;
@Controller
public class ManageAirplaneController {
	@Autowired
	private ManageAirplaneTypeService manageAirplaneTypeService;
	
	@Autowired
	private ManageAirlineService manageAirlineService;

	@Autowired
	private ManageAirplaneService manageAirplaneService;
	
	@GetMapping("admin/addAirplane")
	public ModelAndView addAirplane() {
		List<ManageAirlineVO> airlineList=this.manageAirlineService.search();
		List<ManageAirplaneTypeVO> airplaneTypeList=this.manageAirplaneTypeService.search();
		
		return new ModelAndView("admin/addAirplane","manageAirplaneVO", new ManageAirplaneVO()).addObject("airlineList",airlineList).addObject("airplaneTypeList",airplaneTypeList);
	}
	
	@PostMapping("admin/saveAirplane")
	public ModelAndView saveAirplane(@ModelAttribute ManageAirplaneVO manageAirplaneVO,@RequestParam("file") MultipartFile file,HttpSession session){
		
		String path = session.getServletContext().getRealPath("/");

		String fileName = file.getOriginalFilename();

		String filePath = path + "document\\airplane\\";


		try {
			byte barr[] = file.getBytes();

			BufferedOutputStream bout = new BufferedOutputStream(new FileOutputStream(filePath + "/" + fileName));

			bout.write(barr);
			bout.flush();
			bout.close();

		} catch (Exception e) {
			e.printStackTrace();
		}

		manageAirplaneVO.setAirplaneFileName(fileName);
		manageAirplaneVO.setAirplaneFilePath(filePath);
		this.manageAirplaneService.saveAirplane(manageAirplaneVO);
		return new ModelAndView("redirect:/admin/addAirplane");
	}
	
	@GetMapping("admin/viewAirplane")
	public ModelAndView viewAirplane() {
		List<ManageAirplaneVO> airplaneList=this.manageAirplaneService.search();
		return new ModelAndView("admin/viewAirplane","airplaneList",airplaneList);
	}

	@GetMapping(value = "admin/deleteAirplane")
	public ModelAndView deleteAirplane(@ModelAttribute ManageAirplaneVO manageAirplaneVO,@RequestParam int id){
		List<ManageAirplaneVO> airplaneList = this.manageAirplaneService.findById(id);
		manageAirplaneVO =airplaneList.get(0);
		manageAirplaneVO.setStatus(false);
		this.manageAirplaneService.saveAirplane(manageAirplaneVO);
		return new ModelAndView("redirect:/admin/viewAirplane");
	}
	
	@GetMapping(value = "admin/editAirplane")
	public ModelAndView editAirplane(@ModelAttribute ManageAirplaneVO manageAirplaneVO,@RequestParam int id,@ModelAttribute ManageAirlineVO manageAirlineVO,@ModelAttribute ManageAirplaneTypeVO manageAirplaneTypeVO){
		List<ManageAirlineVO> airlineList=this.manageAirlineService.search();
		List<ManageAirplaneTypeVO> airplaneTypeList=this.manageAirplaneTypeService.search();
		manageAirplaneVO.setId(id);
		List<ManageAirplaneVO> airplaneList = this.manageAirplaneService.findById(id);
		manageAirplaneVO=airplaneList.get(0);
		return new ModelAndView("admin/addAirplane","manageAirplaneVO",manageAirplaneVO).addObject("airlineList",airlineList).addObject("airplaneTypeList",airplaneTypeList);
		
	}
	
}

