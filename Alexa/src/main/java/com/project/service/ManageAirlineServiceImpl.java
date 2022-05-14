package com.project.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.dao.ManageAirlineDAO;
import com.project.model.ManageAirlineVO;

@Service
@Transactional
public class ManageAirlineServiceImpl implements ManageAirlineService{

	@Autowired
	private ManageAirlineDAO manageAirlineDAO;
	
	@Override
	public void saveAirline(ManageAirlineVO manageAirlineVO) {
		this.manageAirlineDAO.saveAirline(manageAirlineVO);
	}

	@Override
	public List<ManageAirlineVO> search() {
		return this.manageAirlineDAO.search();
	}

	@Override
	public List<ManageAirlineVO> findById(int id) {
		return this.manageAirlineDAO.findById(id);
	}

}
