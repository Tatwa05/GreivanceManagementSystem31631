package com.klef.ep.beans;

import java.io.IOException;
import java.util.List;

import javax.ejb.EJB;
import javax.faces.bean.ManagedBean;
import javax.faces.context.ExternalContext;
import javax.faces.context.FacesContext;
import javax.persistence.Column;
import javax.persistence.Id;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.klef.ep.models.Employee;
import com.klef.ep.models.Grievance;
import com.klef.ep.services.AdminService;
import com.klef.ep.services.EmployeeService;

@ManagedBean(name = "grievancebean", eager = true)
public class GrievanceBean 
{
  @EJB(lookup = "java:global/EPPROJECT/AdminServiceImpl!com.klef.ep.services.AdminService")
  AdminService adminService;
  	
    private int id;
	private long empid;
	private String grievanceid;
	private String type;
	private String subject;
	private String description;
	private String solution;
	private String grievancestatus;
	private int forwardstatus;
	
	private List<Grievance> forwardedgrievancelist;
	
	
	public List<Grievance> getForwardedgrievancelist() {
		forwardedgrievancelist = adminService.viewforwardedgrievances();
	    System.out.println("Grievances fetched: " + forwardedgrievancelist.size());
	    return forwardedgrievancelist;
	}
	public void setForwardedgrievancelist(List<Grievance> forwardedgrievancelist) {
		this.forwardedgrievancelist = forwardedgrievancelist;
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}

	public long getEmpid() {
		return empid;
	}
	public void setEmpid(long empid) {
		this.empid = empid;
	}
	public String getGrievanceid() {
		return grievanceid;
	}
	public void setGrievanceid(String grievanceid) {
		this.grievanceid = grievanceid;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getSolution() {
		return solution;
	}
	public void setSolution(String solution) {
		this.solution = solution;
	}
	public String getGrievancestatus() {
		return grievancestatus;
	}
	public void setGrievancestatus(String grievancestatus) {
		this.grievancestatus = grievancestatus;
	}
	public int getForwardstatus() {
		return forwardstatus;
	}
	public void setForwardstatus(int forwardstatus) {
		this.forwardstatus = forwardstatus;
	}
	
	public String addgr()
	{
		FacesContext facesContext = FacesContext.getCurrentInstance();
		ExternalContext externalContext = facesContext.getExternalContext();
		
		HttpServletRequest request = (HttpServletRequest)   externalContext.getRequest();
		HttpServletResponse respone = (HttpServletResponse) externalContext.getResponse();
		
		HttpSession session = request.getSession();
		
		Employee emp = (Employee)session.getAttribute("employee");
		
		return emp.getName();
	}
	
	public String onsolving(int id) throws IOException
	{
		FacesContext facesContext = FacesContext.getCurrentInstance();
	    ExternalContext externalContext = facesContext.getExternalContext();
	  
	    HttpServletRequest request = (HttpServletRequest) externalContext.getRequest();
	    HttpServletResponse response = (HttpServletResponse) externalContext.getResponse();
	   
		adminService.solvegrievance(id);
		
		response.sendRedirect("http://localhost:2014/EPPROJECT/admin/viewforwardedgrievances.jsf");
		
		return "Grievance solved Successfully";
		
	}
	
	
}
