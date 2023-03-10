package com.services;

import java.util.List;

import com.model.Employee;
import com.model.Login;

public interface EmpServices {

	public void addEmp(Employee e);
	public Employee getEmpById(int empid);
	public List<Employee> getAllEmps();
	public void updateEmployee(Employee e);
	public void deleteEmpById(int empid);
	public List<Employee> doEmpLogin(Login log);
}
