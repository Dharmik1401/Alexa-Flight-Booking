package com.project.service;

import java.util.List;

import com.project.model.ManageScheduleVO;

public interface ManageScheduleService {

	void saveSchedule(ManageScheduleVO manageScheduleVO);

	List<ManageScheduleVO> search();

	List<ManageScheduleVO> findById(int id);

}
