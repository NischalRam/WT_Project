<!doctype html>
<html lang="en">
  <head>
  	<title>Table 07</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<link href='https://fonts.googleapis.com/css?family=Roboto:400,100,300,700' rel='stylesheet' type='text/css'>

	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	
	<link rel="stylesheet" href="css/style.css">
	

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
    //out.println("Statement loaded sucessfuly");
    Stmt.executeQuery();
    ResultSet rs=Stmt.getResultSet();
    //out.println("query execute loaded sucessfully");
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
	
	<section class="ftco-section">
		<div class="container">
			<button onclick="window.location.href='../../index.html'" style="margin: 20px  1050px; padding: 5px 10pxpx; border-radius: 5px;" > back </button>

			<h1 style="color: aliceblue; text-align: center;" >Candidate's List</h1>
			<div class="row">
				<div class="col-md-12">
					<div class="table-wrap">
						<table class="table table-bordered table-dark table-hover">
						  <thead>
						    <tr>
						      <th>Name</th>
						      <th>College</th>
						      <th>Graduation</th>
						      <th>Branch</th>
						      <th>Email</th>
						      <th>Skills</th>
						      <th>Native Place</th>
						      <th>Mobile Number</th>
						      <th>Linkidin</th>
						    </tr>
						  </thead>

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
						  <tbody>
						    <tr>
							  <td><%=name %></td>
							  <td><%=College %></td>
							  <td><%=graduation %></td>
							  <td><%=branch %></td>
							  <td><%=emailid %></td>
							  <!-- <a class="nav-link scrollto" href="mailto:+91-63-63294498" >6363294498</a> -->
							  <td><%=Skills %></td>
							  <td><%=nativeplace %></td>
							  <td><%=phno %></td>
							  <td><%=link %></td>
						    </tr>
							<%  }
							rs.close();Stmt.close();con.close();
				
				 
							%>
						  </tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</section>

	<script src="js/jquery.min.js"></script>
  <script src="js/popper.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/main.js"></script>

	</body>
</html>

