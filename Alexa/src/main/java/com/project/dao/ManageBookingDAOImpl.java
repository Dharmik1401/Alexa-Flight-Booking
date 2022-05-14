package com.project.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.model.BookingVO;

@Repository
public class ManageBookingDAOImpl implements ManageBookingDAO {
	@Autowired
	private SessionFactory sessionFactory;

	@SuppressWarnings("unchecked")
	@Override
	public List<BookingVO> search() {

		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("from BookingVO where status = 'true'");
		List<BookingVO> bookingList = query.list();
		return bookingList;
	}

	@Override
	public List searchByLoginId(int loginId) {
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("from BookingVO where status = 'true' and loginVO="+loginId);
		List<BookingVO> bookingList = query.list();
		return bookingList;
	}

}
