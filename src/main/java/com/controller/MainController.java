package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.model.Employee;
import com.model.Login;
import com.services.EmpServices;

@Controller
public class MainController {
	
	@Autowired
	EmpServices empservices;

	@RequestMapping("/registration")
	public String getRegForm(){
		return "Reg_form";
	}
	
	@RequestMapping("/login")
	public String getLoginForm(){
		return "Login";
	}
	
	@RequestMapping(value="/register",method=RequestMethod.POST)
	public String saveReg(@ModelAttribute("emp") Employee emp){
		empservices.addEmp(emp);
		return "Login";
	}
	@RequestMapping(value="/dologin",method=RequestMethod.POST)
	public String oLogin(@ModelAttribute("lm") Login lm){
		List<Employee> list=empservices.doEmpLogin(lm);
		if(list!=null){
			return "redirect:/view";
		}
		return "Login";
	}
	
	@RequestMapping("/view")
	public String getView(Model model){
		List<Employee> list=empservices.getAllEmps();
		model.addAttribute("list", list);
		return "home";
	}
	
	@RequestMapping("/delete/{empid}")
	public String deleteEmpById(@PathVariable int empid){
		empservices.deleteEmpById(empid);
		return "redirect:/view";
	}
	@RequestMapping("/edit/{empid}")
	public String getEmpById(@PathVariable int empid,Model model){
		Employee emp=empservices.getEmpById(empid);
		model.addAttribute("emp", emp);
		return "editemp";
	}
	@RequestMapping(value="/update",method=RequestMethod.POST)
	public String updateEmp(@ModelAttribute("emp") Employee emp){
		empservices.updateEmployee(emp);
		return "redirect:/view";
	}
}
