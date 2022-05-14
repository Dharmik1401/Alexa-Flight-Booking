package com.project.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.dao.ManageLoginDAO;
import com.project.model.LoginVO;


@Service
@Transactional
public class ManageLoginServiceImpl implements ManageLoginService {
@Autowired
private ManageLoginDAO manageLoginDAO;

	@Override
	public List<LoginVO> search() {
		return this.manageLoginDAO.search();
	}

	@Override
	public LoginVO getByUsername(String user) {
		return this.manageLoginDAO.getByUsername(user);
	}

	
}
