package com.project.service;

import java.util.List;

import com.project.model.ManageAirlineVO;

public interface ManageAirlineService {

	void saveAirline(ManageAirlineVO manageAirlineVO);

	List<ManageAirlineVO> search();

	List<ManageAirlineVO> findById(int id);

}
