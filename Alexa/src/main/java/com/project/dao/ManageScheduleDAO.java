package com.project.dao;

import java.util.List;

import com.project.model.ManageScheduleVO;

public interface ManageScheduleDAO {

	void saveSchedule(ManageScheduleVO manageScheduleVO);

	List<ManageScheduleVO> search();

	List<ManageScheduleVO> findById(int id);

}
