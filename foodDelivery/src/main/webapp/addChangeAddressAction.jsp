<%@page import="foodDelivery.connectionProvider" %>
<%@page import="java.sql.*" %>


<%
String email=session.getAttribute("email").toString();
String address=request.getParameter("address");
String city=request.getParameter("city");
String state=request.getParameter("state");
String country=request.getParameter("country");

try
{
      Connection con=connectionProvider.getCon();
      PreparedStatement ps=con.prepareStatement("update users set address=?,city=?,state=?,country=? where email=?");
      ps.setString(1,address);
      ps.setString(2,city);
      ps.setString(3,state);
      ps.setString(4,country);
      ps.setString(5,email);
      ps.executeUpdate();
      response.sendRedirect("addChangeAddress.jsp?msg=valid");
 }
catch( Exception e)
{
	System.out.println(e); 
	response.sendRedirect("addChangeAddress.jsp?msg=valid");
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

</body>
</html>