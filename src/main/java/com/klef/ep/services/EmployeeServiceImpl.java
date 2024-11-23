package com.klef.ep.services;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import com.klef.ep.models.Employee;
import com.klef.ep.models.Grievance;

import javax.persistence.Query;

public class EmployeeServiceImpl implements EmployeeService
{

	@Override
	public Employee checkemplogin(long id, String password) 
	{
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("jpa");
	    EntityManager em = emf.createEntityManager();
	    
	    
	    Query qry = em.createQuery("select e from Employee e  where e.id=? and e.password=? ");
	    qry.setParameter(1, id);
	    qry.setParameter(2, password);
	    
	        Employee emp = null;
	        
	        if(qry.getResultList().size()>0)
	        {
	          emp = (Employee) qry.getSingleResult();
	        }
	    em.close();
	    emf.close();
	    
	    return emp;
	}

	@Override
	public String addgrievance(Grievance grievance) 
	{
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("jpa");
		EntityManager em = emf.createEntityManager();
		
		em.getTransaction().begin();
		em.persist(grievance); 
		em.getTransaction().commit();
		
		em.close();
		emf.close();
		
		return "grievance added Successfully";
	}

	


	

	@Override
	public List<Grievance> viewempgrievancelistbyid(long id) 
	{
		
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("jpa");
		EntityManager em = emf.createEntityManager();
		
		Query qry = em.createQuery("select g from Grievance g where g.empid = :empid ");
		qry.setParameter("empid", id);
		// e is an alias of Employee Class
		List<Grievance> empgrievancelist = qry.getResultList();
		
	    em.close();
	    emf.close();
	    
	    return empgrievancelist;
	}

	@Override
	public long gettotalticketsraised(long id) 
	{
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("jpa");
		EntityManager em = emf.createEntityManager();
		
		Query qry =   em.createQuery("select count(*) from Grievance g where g.empid= :empid ");
		qry.setParameter("empid", id);
		
		List list = qry.getResultList();
		
		long count = (long) list.get(0);
		
		return count;
	}

	@Override
	public long gettotalticketssolved(long id) 
	{
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("jpa");
		EntityManager em = emf.createEntityManager();
		
		Query qry =   em.createQuery("select count(*) from Grievance g where g.empid= :empid and g.grievancestatus='SOLVED'");
		qry.setParameter("empid", id);
		
		List list = qry.getResultList();
		
		long count = (long) list.get(0);
		
		return count;
	}

	@Override
	public String changepassword(long id, String pwd) 
	{
		
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("jpa");
		EntityManager em = emf.createEntityManager();
		
		em.getTransaction().begin();
		
		Employee e = em.find(Employee.class, id);
		e.setPassword(pwd);
		
		em.getTransaction().commit();
		em.close();
		emf.close();
		
		return "Forwarded to Admin Successfully";
	}

	@Override
	public String updateprofile(long id, String name, String email, String contact) 
	{
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("jpa");
		EntityManager em = emf.createEntityManager();
	
		em.getTransaction().begin();
	
		Employee e = em.find(Employee.class, id);
		e.setName(name);
		e.setEmail(email);
		e.setContact(contact);
	
	
		em.getTransaction().commit();
		em.close();
		emf.close();
	
		return "Profile Updated Successfully";
	}

	@Override
	public Employee viewempbyid(long eid) 
	{
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("jpa");
		EntityManager em = emf.createEntityManager();
		
		Employee e = em.find(Employee.class, eid);
		
		
		if(e ==  null)
		{
			em.close();
			emf.close();
			System.out.println("Employee not found");
			return null;
		}
		
		em.close();
		emf.close();
		
		return e;
	}

}
