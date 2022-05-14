package com.project.service;

import java.util.List;

import com.project.model.ManageAirportVO;

public interface ManageAirportService {

	void saveAirport(ManageAirportVO manageAirportVO);

	List<ManageAirportVO> search();

	List<ManageAirportVO> findById(int id);

}
