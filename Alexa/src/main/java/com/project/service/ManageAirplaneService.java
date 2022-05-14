package com.project.service;

import java.util.List;

import com.project.model.ManageAirplaneVO;

public interface ManageAirplaneService {

	void saveAirplane(ManageAirplaneVO manageAirplaneVO);

	List<ManageAirplaneVO> search();

	List<ManageAirplaneVO> findById(int id);

}
