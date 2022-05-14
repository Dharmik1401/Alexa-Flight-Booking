package com.project.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.dao.ManageAirportDAO;
import com.project.model.ManageAirportVO;

@Service
@Transactional
public class ManageAirportServiceImpl implements ManageAirportService{
	@Autowired
	private ManageAirportDAO manageAirportDAO;

	@Override
	public void saveAirport(ManageAirportVO manageAirportVO) {
		this.manageAirportDAO.saveAirport(manageAirportVO);
	}

	@Override
	public List<ManageAirportVO> search() {
		return this.manageAirportDAO.search();
	}

	@Override
	public List<ManageAirportVO> findById(int id) {
		return this.manageAirportDAO.findById(id);
	}
}
