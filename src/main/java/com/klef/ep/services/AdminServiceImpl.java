package com.klef.ep.services;

import java.util.List;

import javax.ejb.Stateless;
import javax.ejb.TransactionManagement;
import javax.ejb.TransactionManagementType;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;
import javax.ws.rs.core.Response;

import com.klef.ep.models.Admin;
import com.klef.ep.models.Employee;
import com.klef.ep.models.Grievance;


@Stateless
@TransactionManagement(TransactionManagementType.BEAN)
public  class AdminServiceImpl implements AdminService
{

  @Override
  public Admin checkadminlogin(String email, String password) 
  {
    EntityManagerFactory emf = Persistence.createEntityManagerFactory("jpa");
    EntityManager em = emf.createEntityManager();
    
    
    Query qry = em.createQuery("select a from Admin a where a.email=? and a.password=?  ");
    qry.setParameter(1, email);
    qry.setParameter(2, password);
    
        Admin admin = null;
        
        if(qry.getResultList().size()>0)
        {
          admin = (Admin) qry.getSingleResult();
        }
    em.close();
    emf.close();
    
    return admin;
  }

@Override
public String addemployee(Employee employee) 
{
	EntityManagerFactory emf = Persistence.createEntityManagerFactory("jpa");
	EntityManager em = emf.createEntityManager();
	
	em.getTransaction().begin();
	em.persist(employee); 
	em.getTransaction().commit();
	
	em.close();
	emf.close();
	
	return "Employee Registered Successfully";
	
	
}

@Override
public List<Employee> viewallemps() 
{
	
	EntityManagerFactory emf = Persistence.createEntityManagerFactory("jpa");
	EntityManager em = emf.createEntityManager();
	
	Query qry = em.createQuery("select e from Employee e where e.position='EMPLOYEE'");
	// e is an alias of Employee Class
	List<Employee> employeelist = qry.getResultList();
	
    em.close();
    emf.close();
    
    return employeelist;
	
}

@Override
public List<Employee> viewallmanagers() 
{
	EntityManagerFactory emf = Persistence.createEntityManagerFactory("jpa");
	EntityManager em = emf.createEntityManager();
	
	Query qry = em.createQuery("select e from Employee e where e.position='MANAGER'");
	// e is an alias of Employee Class
	List<Employee> employeelist = qry.getResultList();
	
    em.close();
    emf.close();
    
    return employeelist;
}

@Override
public String deleteemp(long id) 
{
	EntityManagerFactory emf = Persistence.createEntityManagerFactory("jpa");
	EntityManager em = emf.createEntityManager();
	
	em.getTransaction().begin();
	
	Employee e = em.find(Employee.class, id);
	e.setStatus("Inactive");
	
	em.getTransaction().commit();
	em.close();
	emf.close();
	
	return "Employee Deletion Status updated successfully";
}

@Override
public List<Grievance> viewforwardedgrievances() 
{
	EntityManagerFactory emf = Persistence.createEntityManagerFactory("jpa");
	EntityManager em = emf.createEntityManager();
	
	Query qry = em.createQuery("select g from Grievance g where g.grievancestatus = 'FORWARDED'");
	
	List<Grievance> forwardedgrievancelist = qry.getResultList();
	System.out.println("Forwarded grievances: " + forwardedgrievancelist.size());
	
    em.close();
    emf.close();
    
    return forwardedgrievancelist;
	
}

@Override
public String solvegrievance(int id) 
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

@Override
public long gettotalemps() 
{
	EntityManagerFactory emf = Persistence.createEntityManagerFactory("jpa");
	EntityManager em = emf.createEntityManager();
	
	Query qry =   em.createQuery("select count(*) from Employee e where e.status='ACTIVE'  ");
	
	List list = qry.getResultList();
	
	long count = (long) list.get(0);
	
	return count;
	
	
}

@Override
public long gettotalgrievances() 
{
	EntityManagerFactory emf = Persistence.createEntityManagerFactory("jpa");
	EntityManager em = emf.createEntityManager();
	
	Query qry =   em.createQuery("select count(*) from Grievance ");
	
	List list = qry.getResultList();
	
	long count = (long) list.get(0);
	
	return count;
}

@Override
public long getgreviancesforwarded() 
{
	EntityManagerFactory emf = Persistence.createEntityManagerFactory("jpa");
	EntityManager em = emf.createEntityManager();
	
	Query qry =   em.createQuery("select count(*) from Grievance g where g.grievancestatus = 'FORWARDED' ");
	
	List list = qry.getResultList();
	
	long count = (long) list.get(0);
	
	return count;
}

@Override
public long getgrievanvessolved() 
{
	EntityManagerFactory emf = Persistence.createEntityManagerFactory("jpa");
	EntityManager em = emf.createEntityManager();
	
	Query qry =   em.createQuery("select count(*) from Grievance g where g.grievancestatus = 'SOLVED' ");
	
	List list = qry.getResultList();
	
	long count = (long) list.get(0);
	
	return count;
}

 
}