<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Too Soon Login Form</title>
</head>
<body>
    <h2>Too Soon Login Form</h2>
    <form action="Login" method="post">
        <div>
            <label>Email:</label>
            <input type="email" name="inputEmail" required>
        </div><br>
        <div>
            <label>Password:</label>
            <input type="password"  name="inputPassword" required>
        </div><br>
        
        <div>
            <input type="submit" value="Login">
        </div>
    </form>
</body>
</html>
