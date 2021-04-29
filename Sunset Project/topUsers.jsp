<%@ page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>Users Management Application</title>
       <style>
body {
  font-family: Arial, Helvetica, sans-serif;
  background-color: black;
  background-image: url('https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/sunset-quotes-21-1586531574.jpg');
}

* {
  box-sizing: border-box;
}

/* Add padding to containers */
.container {
 margin: auto;
  width: 80%;
  padding: 15px;
  background-color: skyblue;
  opacity:0.8;
  
}

/* Full-width input fields */
input[type=text], input[type=password], input[type=email] {
  width: 100%;
  padding: 15px;
  margin: 5px 0 22px 0;
  display: inline-block;
  border: none;
  background: #f1f1f1;
}

input[type=text]:focus, input[type=password]:focus {
  background-color: #ddd;
  outline: none;
}

/* Overwrite default styles of hr */
hr {
  border: 1px solid #f1f1f1;
  margin-bottom: 25px;
}

/* Set a style for the submit button */
.btn {
  background-color:lightpink;
  color: white;
  padding: 16px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
  opacity: 0.9;
}

.registerbtn:hover {
  opacity: 1;
}

/* Add a blue text color to links */
a {
  color: dodgerblue;
}

/* Set a grey background color and center the text of the "sign in" section */
.signin {
  background-color: #f1f1f1;
  text-align: center;
}


a:link, a:visited {
  background-color: green;
  color: black;
  border: 2px solid green;
  padding: 10px 20px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
}

a:hover, a:active {
  background-color: white;
  color: black;
}

</style>
</head>
<body>

<%-- need to debut this part of the code to make it work, ideally we would like to see 
 all Users are listed intially when the page is run as the entry page.
 
<%
if(request.getParameter("listUsers") == null) { // we want to make sure that we already have all the Users
	UsersDAO UsersDAO = new UsersDAO();        // listed in attribute 'listUsers'
	List<Users> listUsers = UsersDAO.listAllUsers();
	request.setAttribute("listUsers", listUsers);       
}
%>
--%>

    <center>
        <h1>ROOT USER - LIST OF TOP USER</h1>
        <h2>
            
            <a href="logout"> Logout</a>
             
        </h2>
    </center>
    <div align="center">
        <table border="1" cellpadding="5">
            <caption><h2>List of Top User </h2></caption>
            <h3> TOP USER HAS MOST POSTS </h3>
            <tr>
                <th>User</th>
               
                <th>Number of Post</th>
            </tr>
            <c:forEach var="Users" items="${topUsers}">
                <tr>
                    <td><c:out value="${Users.getpostUser()}" /></td>
                   <td><c:out value="${Users.getnumOfPosts()}" /></td>
                                        
                    
                    
                    
                </tr>
            </c:forEach>
        </table>
    </div>   
</body>
</html>