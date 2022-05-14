package com.project.dao;

import java.util.List;

import com.project.model.ManageAirplaneTypeVO;

public interface ManageAirplaneTypeDAO {

	void save(ManageAirplaneTypeVO manageAirplaneTypeVO);

	List<ManageAirplaneTypeVO> search();

	List<ManageAirplaneTypeVO> findById(int id);

}
