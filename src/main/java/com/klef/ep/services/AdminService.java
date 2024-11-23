package com.klef.ep.services;

import java.util.List;

import com.klef.ep.models.Admin;
import com.klef.ep.models.Employee;
import com.klef.ep.models.Grievance;

public interface AdminService 
{
	public Admin checkadminlogin(String email,String password);
	public String addemployee(Employee employee);
	public List<Employee> viewallemps();
	public List<Employee> viewallmanagers();
	public String deleteemp(long eid);
	public List<Grievance> viewforwardedgrievances();
	public String solvegrievance(int id);
	public long gettotalemps();
	public long gettotalgrievances();
	public long getgreviancesforwarded();
	public long getgrievanvessolved();
}
