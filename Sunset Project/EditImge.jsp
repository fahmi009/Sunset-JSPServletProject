<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Image Editor</title>
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
<form action = "logout" method="post" action="ControlServerlet">
<input type="Submit" value="Logout" >
</form>
<body>
    <div align="center">
    
    
            <form action="update" method="post">
        <table border="1" cellpadding="5">
            <caption>
    <h1>Edit your Image Here</h1>
            </caption>
            <tr>
                <th> ID:</th>
                <td>
                    <input type="Hidden" name="imageID" value="<c:out value='${Image.imageID}' />" />

                     </td>
               </tr>    
            <tr>
                <th> URL</th>
                <td>
                    <input type="text" name="URL" value="<c:out value='${Image.URL}' />" />

                     </td>
               </tr>                    
            <tr>
               <th> Description</th>
                <td>
                    <input type="text" name="description" size="45"
                            value="<c:out value='${Image.des}' />"
                        />
                </td>
            </tr>
            <tr>
                <th>Insert Tags: </th>
                <td>
                    <input type="text" name="tags" size="45"
                            value="<c:out value='${Image.tag}' />"
                    />
                </td>
            </tr>

            <tr>
                <td colspan="2" align="center">
                    <input class="btn" type="submit" value="Save" />
                </td>
            </tr>
        </table>
        </form>
    </div>   
</body>
</html>