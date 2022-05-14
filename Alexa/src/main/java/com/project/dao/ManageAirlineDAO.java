package com.project.dao;

import java.util.List;

import com.project.model.ManageAirlineVO;

public interface ManageAirlineDAO {

	void saveAirline(ManageAirlineVO manageAirlineVO);

	List<ManageAirlineVO> search();

	List<ManageAirlineVO> findById(int id);

}
