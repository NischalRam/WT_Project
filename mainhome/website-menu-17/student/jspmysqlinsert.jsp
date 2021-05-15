<html>
    <head>
    <title>my sql Sample</title>
    
    </head>
	<title>Our Team</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<style type="text/css">
		a{
			text-decoration: none;
			margin-left: 45px;
			background-color: white;
			color: purple;
			padding: 2px 5px 5px 5px;
			border: 2px solid purple;
			border-radius: 6px;
			margin-top: 10px;

		}
		a:hover{
			color: white;
			background-color: purple;
			cursor: pointer;

		}
	</style>
	<!-- <style>
		body{
			/* margin: 0%;
			padding: 0%; */
			background-image: url('congo.png');
			background-size: cover;
background-attachment: fixed;

		}
	</style> -->
    <body>
		<div class="container">
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
					<div >
						  <div class="single-well">
							<div class="card upper-card">
								<h3 class="card-header" style="text-align: center; background-color: rgb(224, 86, 183); color: white;"><b>Congratulations!!</b></h3>
								<div class="card-body">
									<dl class="row">
										<h1 style="text-align: center; font-size: 25px;">You have registered successfully.<br>Expect response from your dream company soon.</h1>
										<br>
									  
										
									</dl>
									<br>
									<h2  style="text-align: center;"><a href="../index.html">Home</a> <a href="../dataret/table-07/index.jsp">Applied</a></h2>
									
								</div>
							</div>
						  </div>
					</div>
				  </div>
		</div>
    
		
    <%@page import="java.sql.*" %>
     
       <%
	System.out.println("injsp");
	Class.forName("com.mysql.jdbc.Driver");
      
     Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306","root","");
//Class.forName("oracle.jdbc.driver.OracleDriver");
//Connection con=DriverManager.getConnection("jdbc:oracle:thin:@192.168.23.144:1521:orcl","userid","pwd");    
System.out.println("connection established");
    
		String  t1 =request.getParameter("name");
		String  t2 =request.getParameter("College");
		String  t3 =request.getParameter("graduation");
		String  t4 =request.getParameter("branch");
		String  t5 =request.getParameter("emailid");
		String  t6 =request.getParameter("Skills");
		String  t7 =request.getParameter("nativeplace");
		String  t8 =request.getParameter("phno");
		String  t9 =request.getParameter("link");
		
	
		
		
		
//System.out.println("be fore insert"+t1);
//System.out.println("be fore insert"+t2);
//System.out.println("be fore insert"+t3);
			String query ="insert into job.students values (?,?,?,?,?,?,?,?,?)";
			PreparedStatement ps=con.prepareStatement(query);
			
			ps.setString(1, t1);
			ps.setString(2, t2);		
			ps.setString(3, t3);
			ps.setString(4, t4);
			ps.setString(5, t5);
			ps.setString(6, t6);
			ps.setString(7, t7);
			ps.setString(8, t8);
			ps.setString(9, t9);
			
			int nub=ps.executeUpdate();
//con.commit();
			System.out.println("updated");
	
			ps.close();
		//st.close();

  
   con.close();
    
     
    %>
<!-- <h1>inserted</h1><br>do u want to insert one more<a href="./index.html">click here</a> -->

<!-- do u want to see the inserted data<a href="./jspmysqldemo.jsp">click here</a> -->

    </body>
    </html>
