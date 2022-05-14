package com.project.service;

import java.util.List;

import com.project.model.ManageAirplaneTypeVO;

public interface ManageAirplaneTypeService {

	void save(ManageAirplaneTypeVO manageAirplaneTypeVO);

	List<ManageAirplaneTypeVO> search();

	List<ManageAirplaneTypeVO> findById(int id);

}
