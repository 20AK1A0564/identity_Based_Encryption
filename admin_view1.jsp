<%@ page import="java.sql.*"%>
<html>
<% 
	Connection con = null;
	Statement st = null;
   
	String a=request.getParameter("uid");
	String b=request.getParameter("pass");
	session.setAttribute("a",a);
 ResultSet rs=null;
	try{
		Class.forName("com.mysql.jdbc.Driver"); 
		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/service","root","root");
		st = con.createStatement();
		String qry="select * from admin where userid='"+a+"' && pass='"+b+"'";
		rs=st.executeQuery(qry);
		if(rs.next())
		{
		//name2=rs.getString("name");		
		response.sendRedirect("admin_view2.jsp");
		//session.setAttribute("name2",name2);
		//out.print(name2);
		}
		else
		{
		out.println("enter correct user mane and password");
		}
		

	}
	catch(Exception e2){
		out.println(e2.getMessage());
	}
%>
</html>