package com.klef.ep.models;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "grievance_table")
public class Grievance implements Serializable
{
	@Id
	private int indentityid;
	
	@Column(name = "emp_id",nullable = false)
	private long empid;
	
	
	@Column(name = "grievance_id")
	private String grievanceid;
	
	@Column(name = "grievance_type",nullable=false)
	private String type;
	
	@Column(name = "grievance_subject",nullable = false)
	private String subject;
	
	@Column(name = "grievance_description", nullable = false)
	private String description;
	
	@Column(name = "grievance_solution", nullable = true)
	private String solution;
	
	@Column(name = "grievance_status", nullable = false)
	private String grievancestatus;
	
	@Column(name = "forward_status", nullable = false)
	private int forwardstatus;
	

	public int getIndentityid() {
		return indentityid;
	}

	public void setIndentityid(int indentityid) {
		this.indentityid = indentityid;
	}

	public long getEmpid() 
	{
		return empid;
	}

	public void setEmpid(long empid) 
	{
		this.empid = empid;
	}

	public String getGrievanceid() 
	{
		return grievanceid;
	}

	public void setGrievanceid(String grievanceid) 
	{
		this.grievanceid = grievanceid;
	}

	public String getType() 
	{
		return type;
	}

	public void setType(String type) 
	{
		this.type = type;
	}

	public String getSubject() 
	{
		return subject;
	}

	public void setSubject(String subject) 
	{
		this.subject = subject;
	}

	public String getDescription() 
	{
		return description;
	}

	public void setDescription(String description) 
	{
		this.description = description;
	}

	public String getSolution() 
	{
		return solution;
	}

	public void setSolution(String solution) 
	{
		this.solution = solution;
	}

	public String getGrievancestatus() 
	{
		return grievancestatus;
	}

	public void setGrievancestatus(String grievancestatus) 
	{
		this.grievancestatus = grievancestatus;
	}

	public int getForwardstatus() 
	{
		return forwardstatus;
	}

	public void setForwardstatus(int forwardstatus) 
	{
		this.forwardstatus = forwardstatus;
	}
}
