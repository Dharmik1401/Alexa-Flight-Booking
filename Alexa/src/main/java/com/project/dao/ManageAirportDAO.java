package com.project.dao;

import java.util.List;

import com.project.model.ManageAirportVO;

public interface ManageAirportDAO {

	void saveAirport(ManageAirportVO manageAirportVO);

	List<ManageAirportVO> search();

	List<ManageAirportVO> findById(int id);

}
