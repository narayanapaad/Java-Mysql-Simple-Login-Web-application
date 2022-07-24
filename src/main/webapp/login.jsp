<%@ page import="java.sql.*"%>
<%@ page import = "jakarta.servlet.*" %>

<%
 String userName = request.getParameter("userName"); 
 
 String password = request.getParameter("password"); 
 
 String db_user = System.getenv("USER");
 String db_pass = System.getenv("PASSWORD");
 
 Class.forName ("com.mysql.jdbc.Driver"); 
 Connection con = DriverManager.getConnection("jdbc:mysql://172.17.0.2:3306/mysql", db_user, db_pass);
 Statement st = con.createStatement(); 
 ResultSet rs; 
 rs = st.executeQuery("select * from USER where username='" + userName + "' and password='" + password + "'");
	if (rs.next()) 
		{ 
			session.setAttribute("userid", userName); 
			response.sendRedirect("success.jsp"); 
		} 
	else 
		{ 
			out.println("Invalid password <a href='index.jsp'>try again</a>"); 
} 
%>
