package com.project.dao;

import java.util.List;

import com.project.model.LoginVO;

public interface ManageLoginDAO {

	List<LoginVO> search();

	LoginVO getByUsername(String user);

}
