package com.klef.ep.services;

import java.util.List;

import com.klef.ep.models.Employee;
import com.klef.ep.models.Grievance;

public interface EmployeeService 
{
	public Employee checkemplogin(long id, String password);
	public String addgrievance(Grievance grievance);
	public List<Grievance> viewempgrievancelistbyid(long id);
	public long gettotalticketsraised(long id);
	public long gettotalticketssolved(long id);
	public String changepassword(long id, String pwd);
	public String updateprofile(long id, String name, String email, String contact);
	public Employee viewempbyid(long eid);
	
}
