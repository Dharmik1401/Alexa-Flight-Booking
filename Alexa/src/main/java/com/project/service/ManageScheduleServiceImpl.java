package com.project.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.dao.ManageScheduleDAO;
import com.project.model.ManageScheduleVO;


@Service
@Transactional
public class ManageScheduleServiceImpl implements ManageScheduleService{

	@Autowired
	private ManageScheduleDAO manageScheduleDAO;
	
	@Override
	public void saveSchedule(ManageScheduleVO manageScheduleVO) {
		this.manageScheduleDAO.saveSchedule(manageScheduleVO);
	}

	@Override
	public List<ManageScheduleVO> search() {
		return this.manageScheduleDAO.search();
	}

	@Override
	public List<ManageScheduleVO> findById(int id) {
		return this.manageScheduleDAO.findById(id);
	}

}
