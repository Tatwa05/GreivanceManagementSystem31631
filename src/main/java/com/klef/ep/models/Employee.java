package com.klef.ep.models;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "employee_table")
public class Employee implements Serializable
{
	@Id
	@Column(name = "emp_id")
	private long id;
	
	@Column(name = "emp_name")
	private String name;
	
	@Column(name = "emp_gender")
	private String gender;
	
	@Column(name = "emp_position")
	private String position;
	
	@Column(name = "emp_email")
	private String email;
	
	@Column(name = "emp_password")
	private String password;
	
	@Column(name = "emp_contact")
	private String contact;
	
	@Column(name = "emp_status")
	private String status;
	
	
	
	//getters and setters

	public String getStatus() 
	{
		return status;
	}

	public void setStatus(String status) 
	{
		this.status = status;
	}

	public long getId() 
	{
		return id;
	}

	public void setId(long id) 
	{
		this.id = id;
	}

	public String getName() 
	{
		return name;
	}

	public void setName(String name) 
	{
		this.name = name;
	}

	public String getGender() 
	{
		return gender;
	}

	public void setGender(String gender) 
	{
		this.gender = gender;
	}

	public String getPosition() 
	{
		return position;
	}

	public void setPosition(String position) 
	{
		this.position = position;
	}

	public String getEmail() 
	{
		return email;
	}

	public void setEmail(String email) 
	{
		this.email = email;
	}

	public String getPassword() 
	{
		return password;
	}

	public void setPassword(String password) 
	{
		this.password = password;
	}

	public String getContact() 
	{
		return contact;
	}

	public void setContact(String contact) 
	{
		this.contact = contact;
	}
	
	
}
