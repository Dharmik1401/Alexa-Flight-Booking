package com.project.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.model.ManageAirportVO;

@Repository
public class ManageAirportDAOImpl implements ManageAirportDAO {
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public void saveAirport(ManageAirportVO manageAirportVO) {
		try {
			Session session = sessionFactory.getCurrentSession();
			session.saveOrUpdate(manageAirportVO);

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<ManageAirportVO> search() {

		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("from ManageAirportVO where status = true");
		List<ManageAirportVO> airportList = query.list();

		return airportList;

	}

	@SuppressWarnings("unchecked")
	@Override
	public List<ManageAirportVO> findById(int id) {
		List<ManageAirportVO> airportList = new ArrayList<ManageAirportVO>();
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("from ManageAirportVO where status = true and id=" + id);
		airportList = (List<ManageAirportVO>) query.list();
		return airportList;
	}
}
