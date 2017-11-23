<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Add Comment</title>
</head>
<body>
	<h2>Comment</h2>
	<form action='UpdateGuestBook?ID=${param.ID}' method='post'>
	Name: <input type='text' name='Name' value="${param.Name}"  required/> <br/>
	Message: <textarea name='Message' required>${param.Message}</textarea>
	<input type='submit' name='add' value='Comment' >
	</form>
</body>
</html>