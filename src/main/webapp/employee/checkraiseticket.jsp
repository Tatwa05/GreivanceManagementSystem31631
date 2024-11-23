<%@page import="com.klef.ep.services.EmployeeServiceImpl"%>
<%@page import="com.klef.ep.services.EmployeeService"%>
<%@page import="com.klef.ep.models.Grievance"%>
<%@page import="java.util.Random"%>
<%@page import="com.klef.ep.models.Employee"%>

<%!
public static String generateRandomId() 
{
    Random random = new Random();
    
    int number = random.nextInt(10000); // Generate a number between 0 and 9999
    return String.format("G%04d", number); // Format it as 'G' followed by 4 digits
}

public static String generateRandomNumid() 
{
    Random random = new Random();
    
    int number = random.nextInt(10000); // Generate a number between 0 and 9999
    return String.format("%04d", number); // Format it as 'G' followed by 4 digits
}

%>
<% 

Employee e = (Employee) session.getAttribute("employee");

if(e.getPosition().equals("MANAGER"))
{

	long id = e.getId();
	String gid = generateRandomId();
	int numid = Integer.parseInt(generateRandomNumid());
	String type = request.getParameter("types");
	String subject = request.getParameter("subject");
	String description = request.getParameter("description");
	String grstatus = "FORWARDED";
	int fstatus = 2;


	Grievance g = new Grievance();

	g.setEmpid(id);
	g.setGrievanceid(gid);
	g.setIndentityid(numid);
	g.setType(type);
	g.setSubject(subject);
	g.setDescription(description);
	g.setGrievancestatus(grstatus);
	g.setForwardstatus(fstatus);

	EmployeeService service = new EmployeeServiceImpl();

	try
	{
		service.addgrievance(g);
		response.sendRedirect("raiseticket.jsp");
	}
catch(Exception ex)
{
	System.out.println(ex);
}

}
else
{
	long id = e.getId();
	String gid = generateRandomId();
	int numid = Integer.parseInt(generateRandomNumid());
	String type = request.getParameter("types");
	String subject = request.getParameter("subject");
	String description = request.getParameter("description");
	String grstatus = "SUBMITTED";
	int fstatus = 1;


	Grievance g = new Grievance();

	g.setEmpid(id);
	g.setGrievanceid(gid);
	g.setIndentityid(numid);
	g.setType(type);
	g.setSubject(subject);
	g.setDescription(description);
	g.setGrievancestatus(grstatus);
	g.setForwardstatus(fstatus);

	EmployeeService service = new EmployeeServiceImpl();

	try
	{
		service.addgrievance(g);
		response.sendRedirect("raiseticket.jsp");
	}
	catch(Exception ex)
	{
		System.out.println(ex);
	}

}
%>