package com.project.dao;

import java.util.*;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.model.ManageCityVO;

@Repository
public class ManageCityDAOImpl implements ManageCityDAO {

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public void saveCity(ManageCityVO manageCityVO) {
		try {
			Session session = sessionFactory.getCurrentSession();
			session.saveOrUpdate(manageCityVO);

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<ManageCityVO> search() {

		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("from ManageCityVO where status = true");
		List<ManageCityVO> manageCityList = query.list();
		return manageCityList;

	}

	@SuppressWarnings("unchecked")
	@Override
	public List<ManageCityVO> findById(int id) {
		List<ManageCityVO> manageCityList=new ArrayList<ManageCityVO>();
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("from ManageCityVO where status = true and id="+id);
		manageCityList = (List<ManageCityVO>) query.list();
		return manageCityList;
	}

}
