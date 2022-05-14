package com.project.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.dao.ManageAirplaneTypeDAO;
import com.project.model.ManageAirplaneTypeVO;

@Service
@Transactional

public class ManageAirplaneTypeServiceImpl implements ManageAirplaneTypeService {
	@Autowired
	private ManageAirplaneTypeDAO manageAirplaneTypeDAO;

	@Override
	public void save(ManageAirplaneTypeVO manageAirplaneTypeVO) {
		this.manageAirplaneTypeDAO.save(manageAirplaneTypeVO);
	}

	@Override
	public List<ManageAirplaneTypeVO> search() {
		return this.manageAirplaneTypeDAO.search();
	}

	@Override
	public List<ManageAirplaneTypeVO> findById(int id) {
		return this.manageAirplaneTypeDAO.findById(id);
	}

}
