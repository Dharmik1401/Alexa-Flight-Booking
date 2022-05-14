package com.project.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.model.ManageScheduleVO;

@Repository
public class ManageScheduleDAOImpl implements ManageScheduleDAO {
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public void saveSchedule(ManageScheduleVO manageScheduleVO) {
		Session session = sessionFactory.getCurrentSession();
		session.saveOrUpdate(manageScheduleVO);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<ManageScheduleVO> search() {
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("from ManageScheduleVO where status = true");
		List<ManageScheduleVO> scheduleList = query.list();

		return scheduleList;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<ManageScheduleVO> findById(int id) {
		List<ManageScheduleVO> scheduleList = new ArrayList<ManageScheduleVO>();
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("from ManageScheduleVO where status = true and id=" + id);
		scheduleList = (List<ManageScheduleVO>) query.list();
		return scheduleList;
	}

}
