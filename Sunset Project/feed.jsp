<%@ page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>FeedPage</title>
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
 <% String username = (String) session.getAttribute("email"); %>
 
<% String fname = (String) session.getAttribute("firstName"); %>
 



 <br><br><br><br> <br>
 
  <div class="container">
  <a href=logout>Logout!</a>
    <h1>Hey, ${firstName}</h1>
    <h2> You have successfully logged in to Sunset Images! </h2>
    <h3> This is your feedpage. </h3>
    
    
    
    <form action = "community" method="post"  action="ControlServerlet">
 <input type="Submit"  class="btn" value="Search Users" >
  </form>
   
            <a href="list">Browse Users</a>
            

 <div id="form1">
 <form action = "postImage" method="post" action="ControlServerlet">
 <input class="btn"type="Submit" class="btn" value="Post An Image" >
  </form>
</div>
 <h2> Browse Through your feedpage! </h2>
 <hr>
 
 
<form action = "listImage" method="post" action="ControlServerlet">
 <input class="btn"type="Submit" class="btn" value="Browse" >
    
    <div align="center">
        <table border=".5" cellpadding="2">
            <caption><h2>List of Images In your Feed</h2></caption>
            


            <tr>
            	<th> ID </th>
                <th>Info</th>
                <th>Image</th>
                <th>Description</th>
                <th>Editor</th>
                <th> Like/Unlike </th>
             
            </tr>
            <c:forEach var="Image" items="${listImage}">
                <tr>
                <td><c:out value="${Image.imageID}"  />
                    <br></td>
                     <td>Post User: <c:out value="${Image.postUser}" />
                    <br> Posted on: <c:out value="${Image.posttime}" /> 
                    
                    <br> Image Tags: <c:out value="${Image.tag}" />   
                    <br>
                    <label>Likes: ${Image.getimageLikes()}</label>               
                    </td>
                    
                    <td><img src="${Image.URL}" alt="Sunset Image" width="100" height="110"/></td>
                    <td><c:out value="${Image.des}" /></td>
                    
                    
                    <td>
                    <a href="editImage?id=<c:out value='${Image.imageID}' />">Edit</a>
                    <br>
          
                    <br>
                        <a href="delete?id=<c:out value='${Image.imageID}' />">Delete</a>
                   </td>
                   <td>
                   		<a href="Like?id=<c:out value='${Image.imageID}' />">Like</a>
                   		<a href="Unlike?id=<c:out value='${Image.imageID}' />">Unlike</a>
                   		
                   </td>        
                   </tr>
            </c:forEach>
        </table>
    </div>
    </form>
</body>
</html>