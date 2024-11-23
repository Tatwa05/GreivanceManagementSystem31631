package com.klef.ep.services;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;

import com.klef.ep.models.Grievance;

public class ManagerServiceImpl implements ManagerService
{
	@Override
	public List<Grievance> viewallgrievancesbymanager() 
	{
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("jpa");
		EntityManager em = emf.createEntityManager();
		
		Query qry = em.createQuery("select g from Grievance g where g.grievancestatus = 'SUBMITTED'");
		// e is an alias of Employee Class
		List<Grievance> grievancelist = qry.getResultList();
		
	    em.close();
	    emf.close();
	    
	    return grievancelist;
		
	}
	
	@Override
	public String onforward(int gid) 
	{
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("jpa");
		EntityManager em = emf.createEntityManager();
		
		em.getTransaction().begin();
		
		Grievance gr = em.find(Grievance.class, gid);
		gr.setGrievancestatus("FORWARDED");
		
		em.getTransaction().commit();
		em.close();
		emf.close();
		
		return "Forwarded to Admin Successfully";
	}

	@Override
	public String onsolving(int id) 
	{
		
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("jpa");
		EntityManager em = emf.createEntityManager();
		
		em.getTransaction().begin();
		
		Grievance g = em.find(Grievance.class, id);
		g.setGrievancestatus("SOLVED");
		
		em.getTransaction().commit();
		em.close();
		emf.close();
		
		return "Employee Grievance solved successfully";
	}
}
