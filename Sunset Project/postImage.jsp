<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<form action = "logout" method="post" action="ControlServerlet">
<input type="Submit" value="Logout" >
</form>
<body>
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
        <input type="Submit" value="post" >
    </form>
</body>
</html>