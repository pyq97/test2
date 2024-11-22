<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
	background-color:rgb(238,238,238,0.8);
	box-shadow: 0px 0px 30px rgba(0,0,0,0.4);
	text-align: center;
	border-radius: 30px;
	font-size:10px;
}
.mb-3{
font-size:20px;
margin-left:10px;
margin-top:-20px;
}
.h1{
	margin-top:20px;
}
.body{
    	background-image:url(1/3.jpg);
		background-repeat: no-repeat;
		background-size:100% 150%;
    }
</style>

</head>
<body class="body">
<div class="con">
<div class="dv">

<h1 class="h1">用户注册</h1>
<div>
    <form action="Login_Servlet" method="get">
    <div class="mb-3">
	    <table>
	    <tr>
	    <td>用户名：</td> 
	    <td><input type="text" name="username" required class="form-control"></td>
	    </tr>
	</div>
    <tr>
    <div class="mb-3">
	    <td>密码：</td> 
	    <td><input type="password" name="password" required class="form-control"></td>
	    </tr>
    </div>
    <div class="mb-3">
	    <tr>
	    <td>再次输入密码：</td> 
	    <td><input type="password" name="confirmPassword" required class="form-control"></td>
	    </tr>
    </div>
    <div class="mb-3">
    <tr>
	    <td>电子邮箱：</td> 
	    <td><input type="text" id="email" name="youxaing" required class="form-control"></td>
	    </tr>
    </div>
    <div class="form-check">
    <tr>
    <td>性别：</td> 
    <td><input type="radio" name="gender" value="男" required>男
        <input type="radio" name="gender" value="女" required>女</td>
    </tr>
    </div>

    </table>
    <div>
    <p>
       <input type="submit" value="提交" class="btn btn-primary">
       <input type="reset" value="重置" class="btn btn-primary">
     </p>
     </div>
    </form>
</div>
</div>
</div>
</body>
</html>
