package com.project.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.model.ManageAirplaneVO;

@Repository
public class ManageAirplaneDAOImpl implements ManageAirplaneDAO {
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public void saveAirplane(ManageAirplaneVO manageAirplaneVO) {
		Session session=sessionFactory.getCurrentSession();
		session.saveOrUpdate(manageAirplaneVO);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<ManageAirplaneVO> search() {
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("from ManageAirplaneVO where status = true");
		List<ManageAirplaneVO> airplaneList = query.list();

		return airplaneList;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<ManageAirplaneVO> findById(int id) {
		List<ManageAirplaneVO> airplaneList = new ArrayList<ManageAirplaneVO>();
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("from ManageAirplaneVO where status = true and id=" + id);
		airplaneList = (List<ManageAirplaneVO>) query.list();
		return airplaneList;
	}

}
