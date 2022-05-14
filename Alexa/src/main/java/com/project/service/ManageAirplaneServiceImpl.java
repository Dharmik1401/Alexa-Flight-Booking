package com.project.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.dao.ManageAirplaneDAO;
import com.project.model.ManageAirplaneVO;

@Service
@Transactional

public class ManageAirplaneServiceImpl implements ManageAirplaneService {

	@Autowired
	private ManageAirplaneDAO manageAirplaneDAO;
	
	@Override
	public void saveAirplane(ManageAirplaneVO manageAirplaneVO) {
		this.manageAirplaneDAO.saveAirplane(manageAirplaneVO);
	}

	@Override
	public List<ManageAirplaneVO> search() {
		return this.manageAirplaneDAO.search();
	}

	@Override
	public List<ManageAirplaneVO> findById(int id) {
		return this.manageAirplaneDAO.findById(id);
	}

}
