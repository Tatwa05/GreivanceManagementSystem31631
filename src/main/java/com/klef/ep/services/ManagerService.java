package com.klef.ep.services;

import java.util.List;

import com.klef.ep.models.Grievance;

public interface ManagerService 
{
	public List<Grievance> viewallgrievancesbymanager();
	public String onforward(int gid);
	public String onsolving(int id);
}
