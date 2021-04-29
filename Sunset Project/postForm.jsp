<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
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
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<form action = "logout" method="post" action="ControlServerlet">
<input type="Submit" value="Logout" >
</form>
<body>
<% String username = (String) session.getAttribute("email"); %>
 
<% String fname = (String) session.getAttribute("firstName"); %>
 



 <br><br><br><br> <br>
  <div class="container">
  <a href="logout"> Logout</a>
  <h1> Fill in the form to insert Image</h1>
<form action = "post" method="post" action="ControlServerlet">
        <table>
            <tr>
                <td>URL</td>
                <td><input type="text" name="url" value="" required/>
                    </td>
            </tr>
            <tr>
                <td>Tags</td>
                <td><input type="text" name="tags" value="" required />
                    </td>
             </tr>
             <tr>
                <td>Description</td>
                <td><input type="text" name="description" value="" required/>
                    </td>
            </tr>
        </table>
        <input class="btn" type="Submit" value="post" >
    </form>
    </div>
</body>
</html>