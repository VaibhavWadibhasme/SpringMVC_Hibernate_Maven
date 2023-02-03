package com.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dao.EmpDao;
import com.model.Employee;
import com.model.Login;

@Service
public class EmpServicesImpl implements EmpServices {
	
	@Autowired
	private EmpDao empdao;

	@Transactional
	public void addEmp(Employee e) {
		empdao.addEmp(e);

	}

	@Transactional
	public Employee getEmpById(int empid) {
		
		return empdao.getEmpById(empid);
	}

	@Transactional
	public List<Employee> getAllEmps() {
		
		return empdao.getAllEmps();
	}

	@Transactional
	public void updateEmployee(Employee e) {
		empdao.updateEmployee(e);

	}

	@Transactional
	public void deleteEmpById(int empid) {
		empdao.deleteEmpById(empid);

	}

	@Transactional
	public List<Employee> doEmpLogin(Login log) {
		
		return empdao.doEmpLogin(log);
	}

}
