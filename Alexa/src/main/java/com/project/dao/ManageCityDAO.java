package com.project.dao;

import java.util.List;

import com.project.model.ManageCityVO;

public interface ManageCityDAO {

	void saveCity(ManageCityVO manageCityVO);

	List<ManageCityVO> search();

	List<ManageCityVO> findById(int id);
}
