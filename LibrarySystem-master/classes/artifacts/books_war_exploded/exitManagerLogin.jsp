<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
	<%
		//session.setAttribute("isManager",null);
		session.removeAttribute("isManager");
		//session.invalidate(); 
		response.sendRedirect("login_manager.jsp");
	%>
</body>
</html>