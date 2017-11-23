<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<fmt:requestEncoding value="UTF-8" />

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<title>GuestBook</title>
</head>
<body>
	<h2>Guest Book</h2>
		<!-- connect  -->
		<sql:setDataSource var="data"
			driver="com.microsoft.sqlserver.jdbc.SQLServerDriver"
			url="jdbc:sqlserver://localhost:1433; instance=MYXPHAM; databaseName=GuestBook; user=sa; password=8659933;"/>
			
		<sql:query dataSource="${data}" var="result">
         	select * from dbo.GuestBook;
        </sql:query>
		<table border='1'>
		  	<thead>
				<tr>
				  <th>ID</th>
				  <th>Name</th>
				  <th>Message</th>
				  <th colspan='2'>Option</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="row" items="${result.rows}">
					<tr>
						<form action="DeleteGuestBook?ID=${row.ID}" method="post">
							<td>${row.ID}</td>
							<td>${row.Name}</td>
							<td>${row.Message}</td>
							<td>								
								<a href="EditComment.jsp?ID=${row.ID}&Name=${row.Name}&Message=${row.Message}"><input type="button" name="edit" value="Edit"></a>												
							</td>
							<td>							
								<input type="submit" name="delete" value="Delete">										
							</td>
						</form>
					</tr>
				</c:forEach>	
			</tbody>	
		</table>
		<p><a href='AddComment.jsp'>Add Comment</a></p>
</body>
</html>