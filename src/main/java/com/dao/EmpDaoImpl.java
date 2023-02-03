package com.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;

//import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.model.Employee;
import com.model.Login;

@Repository
public class EmpDaoImpl implements EmpDao {
	
	/*@Autowired
	HibernateTemplate hiberneteTemplate;*/
	@Autowired
	SessionFactory sessionFactory;
	
	

	public void addEmp(Employee e) {
		sessionFactory.getCurrentSession().save(e);

	}

	public Employee getEmpById(int empid) {
		return (Employee)sessionFactory.getCurrentSession().get(Employee.class, empid);
	}

	public List<Employee> getAllEmps() {
		
		return sessionFactory.getCurrentSession().createQuery("From Employee").list();
	}

	public void updateEmployee(Employee e) {
		sessionFactory.getCurrentSession().update(e);

	}

	public void deleteEmpById(int empid) {
		Employee e=(Employee)sessionFactory.getCurrentSession().get(Employee.class, empid);
		sessionFactory.getCurrentSession().delete(e);
	}

	public List<Employee> doEmpLogin(Login log) {
		String hql="From Employee E where E.email='"+log.getEmail()+"' and E.password='"+log.getPassword()+"'";
		Query query=sessionFactory.getCurrentSession().createQuery(hql);
		List<Employee> list=query.list();
		List<Employee> list1=list.size()>0?list:null;
		return list1;
	}

}
