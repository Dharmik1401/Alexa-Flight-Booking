package com.project.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.model.LoginVO;

@Repository
public class ManageLoginDAOImpl implements ManageLoginDAO{
@Autowired
private SessionFactory sessionFactory;
	
	@SuppressWarnings("unchecked")
	@Override
	public List<LoginVO> search() {
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("from LoginVO");
		List<LoginVO> loginList = query.list();
		return loginList;	
	}

	@Override
	public LoginVO getByUsername(String user) {
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("from LoginVO where username='"+user+"'");
		List<LoginVO> loginList = query.list();
		return (LoginVO) loginList.get(0);
	}

}
