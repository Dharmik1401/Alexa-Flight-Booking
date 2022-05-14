package com.project.dao;

import java.util.List;

import com.project.model.ManageAirplaneVO;

public interface ManageAirplaneDAO {

	void saveAirplane(ManageAirplaneVO manageAirplaneVO);

	List<ManageAirplaneVO> search();

	List<ManageAirplaneVO> findById(int id);

}
