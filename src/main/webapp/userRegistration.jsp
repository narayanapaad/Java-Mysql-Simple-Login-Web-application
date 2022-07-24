<%@ page import="java.sql.*"%>
<%@ page import = "jakarta.servlet.*" %>
  jakarta.servlet.*
<c:set var="db_user" value="${USER}" scope="application" />
<% 
	String userName = request.getParameter("userName"); 
	String password = request.getParameter("password"); 
	String firstName = request.getParameter("firstName"); 
	String lastName = request.getParameter("lastName");  
	String email = request.getParameter("email"); 
	String db_user = System.getenv("USER");
	String db_pass = System.getenv("PASSWORD");
	String db_ip = System.getenv("IP_ADDRESS");

	Class.forName ( "com.mysql.jdbc.Driver"); 
	Connection con = DriverManager.getConnection(db_ip, db_user, db_pass);
	Statement st = con.createStatement(); 
	int i = st.executeUpdate("insert into USER(first_name, last_name, email, username, password, regdate) values ('" + firstName + "','" + lastName + "','" + email + "','" + userName + "','" + password + "', CURDATE())");
	if (i > 0) { 
				response.sendRedirect("welcome.jsp"); 
			} 
	else { 
		response.sendRedirect("index.jsp"); 
		} 
%>
