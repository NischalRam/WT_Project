<html>
    <head>
    <title>my sql Sample</title>
    
    </head>
    <body>
    
    <%@page import="java.sql.*" %>
     
       <%
	System.out.println("injsp");
	Class.forName("com.mysql.jdbc.Driver");
      
      Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306","root","");
//Class.forName("oracle.jdbc.driver.OracleDriver");
//Connection con=DriverManager.getConnection("jdbc:oracle:thin:@192.168.23.144:1521:orcl","userid","pwd");    
System.out.println("connection established");
    PreparedStatement Stmt=con.prepareStatement("SELECT * from job.students");
    out.println("Statement loaded sucessfuly");
    Stmt.executeQuery();
    ResultSet rs=Stmt.getResultSet();
    out.println("query execute loaded sucessfully");
    String name= null;
String College=null;
String graduation=null;
String branch=null;
String emailid=null;
String Skills=null;
String nativeplace=null;
String phno=null;
String link=null;
	%>
<table border='3'>
<%    
while(rs.next())
    { 
name=rs.getString(1);
College=rs.getString(2);
graduation=rs.getString(3);
branch=rs.getString(4);
emailid=rs.getString(5);
Skills=rs.getString(6);
nativeplace=rs.getString(7);
phno=rs.getString(8);
link=rs.getString(9);

%>

<tr>
<td><%=name %></td>
<td><%=College %></td>
<td><%=graduation %></td>
<td><%=branch %></td>
<td><%=emailid %></td>
<td><%=Skills %></td>
<td><%=nativeplace %></td>
<td><%=phno %></td>
<td><%=link %></td>
</tr>


  <%  }
    rs.close();Stmt.close();con.close();
    if(name != null)
    out.println("Welcome to "+name);
     
    %>
</table>

    </body>
    </html>
