<%@ page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="ISO-8859-1">
<title>Initialize the Database</title>
<style>
body {
  font-family: Arial, Helvetica, sans-serif;
  background-color: black;
  background-image: url('https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/sunset-quotes-21-1586531574.jpg');
    background-repeat: no-repeat;
    background-size: cover; /* Resize the background image to cover the entire container */
  
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
 <% String username = (String) session.getAttribute("email"); %>

<center>
        <h1>Root User - Main</h1>
        <h2>
            
            <a href="logout"> Logout</a>
             
        </h2>
    </center>

    <form action = "init" method="post">
    <input type="Submit" class="btn" value="initialize" >
    </form>
    
     <a href="coolImagesPage">1. Show Cool Images</a><br>
     <a href="newImagesPage">2. ShowNew Images</a><br>
     <a href="viralImagesPage">3. Show Viral Images</a><br>
     <a href="TopUsersPage"> 4.Show Top Users</a><br>
     <a href="PopularUsersPage">5. Show Popular Users</a><br>
     <a href="CommonUsersPage"> 6. Show Common Users</a><br>
     <a href="TopTagsPage">7. Show Top Tags</a><br>
     <a href="PositiveUsersPage">8. ShowPositive Users </a><br>
     <a href="PoorPage">9. Show Poor Images</a><br>
     <a href="InactiveUsersPage">10.Inactive Users</a><br><br>
          
  
</body>
</html>