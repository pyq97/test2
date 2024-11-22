<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
.con{
	display:flex;
	justify-content: center;
	align-item:center;
    margin-top:100px;
}
.dv{
	width:700px;
	height:500px;
	border: solid 1px black;
	margin: auto;
	box-shadow: 0px 0px 30px rgba(0,0,0,0.4);
	background-color:rgb(238,238,238,0.8);
	border-radius: 30px;
	font-size:25px;
}
.dv2{
	margin-left:50px;
}
.h1{
	text-align:center;
}
.body{
    	background-image:url(1/25.jpeg);
		background-repeat: no-repeat;
		background-size:100% 130%;
    }
</style>
</head>
<body class="body">
<div class="con">
<div class="dv">
<h1 class="h1">用户注册</h1>
	<%
		String Username = request.getParameter("username");
		String Password = request.getParameter("password");
		String Youxiang = request.getParameter("youxaing");
		String Gender = request.getParameter("gender");

	%>
	<div class="dv2">
	<tr>
	用户名：<td><%=Username %></td>
	</tr>
	</div>
	<div class="dv2">
	密码：<td><%=Password %></td>
	</tr>
	</div>
	<div class="dv2">
	邮箱：<td><%=Youxiang %></td>
	</tr>
	</div>
	<div class="dv2">
	性别：<td><%=Gender %></td>
	</tr>
	</div>

	
</div>
</div>
</body>
</html>