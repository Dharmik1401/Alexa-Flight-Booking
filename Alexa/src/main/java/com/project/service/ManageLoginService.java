package com.project.service;

import java.util.List;

import com.project.model.LoginVO;

public interface ManageLoginService {
 List<LoginVO> search();

LoginVO getByUsername(String user);	
}
