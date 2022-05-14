package com.project.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.model.ManageAirlineVO;
@Repository
public class ManageAirlineDAOImpl implements ManageAirlineDAO {
	@Autowired
	private SessionFactory sessionFactory;
	@Override
	public void saveAirline(ManageAirlineVO manageAirlineVO) {
		try {
			Session session = sessionFactory.getCurrentSession();
			session.saveOrUpdate(manageAirlineVO);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	@SuppressWarnings("unchecked")
	@Override
	public List<ManageAirlineVO> search() {
			Session session = sessionFactory.getCurrentSession();
			Query query = session.createQuery("from ManageAirlineVO where status = true");
			List<ManageAirlineVO> airlineList = query.list();
			return airlineList;
		
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public List<ManageAirlineVO> findById(int id) {
		List<ManageAirlineVO> airlineList=new ArrayList<ManageAirlineVO>();
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("from ManageAirlineVO where status = true and id="+id);
		airlineList = (List<ManageAirlineVO>) query.list();
		return airlineList;
	}

}
