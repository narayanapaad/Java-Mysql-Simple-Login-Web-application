<% if ((session.getAttribute("userName") == null) || (session.getAttribute("userName") == "")) { %> 
Poo mone dhinesha <%=session.getAttribute("userid")%> <a href='logout.jsp'>Log out</a>
<%} else { %> 
You are not logged in<br/> <a href="index.jsp">Please Login</a> 

<% } %>
