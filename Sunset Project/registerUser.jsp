<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register user</title>
</head>
<body>

    <form name = "registerForm" action = "register" method="post" action="ControlServerlet"  onsubmit="return checkForm(this);">
        <table>
            <tr>
                <td>email</td>
                <td><input type="email" name="email" value="" required/>
                    </td>
            </tr>
            <tr>
                <td>Password</td>
                <td><input type="password" name="password" value="" required/>
                    </td>
            </tr>
            <tr>
                <td>Confirm Password</td>
                <td><input type="password" name="cpassword" value="" onsubmit="return validatePassword()" required/>
                    </td>
            </tr>
            <tr>
            <td>First name </td>
                <td><input type="text" name="firstname" value="" required/>
                            </td>
            </tr>
            <tr>
            <td>Last name</td>
                <td><input type="text" name="lastname" value="" required/>
                    </td>
            </tr>
            <tr>
            <td>Birthday</td>
                <td><input type="date" name="birthday"  min="2000-01-01" max="2021-3-31">
                    </td>
            </tr>
            <tr>
            <td>Gender</td>
	            <td>
	           		<select name="gender" >
				        <option value="Male" selected >Male</option>
				        <option value="Female">Female</option>
				        <option value="Other">Other</option>
			      	</select> 
	      		</td>
            </tr>
            
            <tr>
                <td></td>
                <td><input type="Submit" value="register" ></td> 
            </tr>
        </table>
    </form>
    

</body>
</html>