package com.project.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.model.ManageAirplaneTypeVO;

@Repository
public class ManageAirplaneTypeDAOImpl implements ManageAirplaneTypeDAO{

	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public void save(ManageAirplaneTypeVO manageAirplaneTypeVO) {
			Session session = sessionFactory.getCurrentSession();
			session.saveOrUpdate(manageAirplaneTypeVO);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<ManageAirplaneTypeVO> search() {

		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("from ManageAirplaneTypeVO where status = true");
		List<ManageAirplaneTypeVO> airplaneTypeList = query.list();

		return airplaneTypeList;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<ManageAirplaneTypeVO> findById(int id) {
		List<ManageAirplaneTypeVO> airplaneTypeList = new ArrayList<ManageAirplaneTypeVO>();
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("from ManageAirplaneTypeVO where status = true and id=" + id);
		airplaneTypeList = (List<ManageAirplaneTypeVO>) query.list();
		return airplaneTypeList;
	}

}
