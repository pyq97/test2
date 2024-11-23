<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>管理员注册</title>
<style>
.con{
    	display:flex;
		justify-content: center;
		align-item:center;
    	margin-top:100px;
    }
    .body{
    	background-image:url(1/1.jpg);
		background-repeat: no-repeat;
		background-size:100% 150%;
    }
    .dv{
		border: solid 1px black;
		width: 600px;
		height: 450px;
		margin: auto;
		background-color:rgb(238,238,238,0.7);
		box-shadow: 0px 0px 30px rgba(0,0,0,0.6);
		text-align: center;
		border-radius: 20px;
		font-size:30px;
		}
		.img{
		transition: 0.8s;
		width: 600px;
		height: 450px;
		border-radius: 10px;
		margin-top:10px;
		margin:auto;
		}
		.dv1{
		width:250px;
		height:45px;
		display:flex;
		margin:auto;
		}
</style>
</head>
<body class="body">
<div class="con">
<div class="dv">
	<script src="./static/js/jquery-3.2.1.js"></script>
	<h4>管理员注册</h4>
	<form>
		工作号：<input id="id" maxlength="18"><br> 姓名：&#12288;<input
			id="name" maxlength="5"><br> 密码：&#12288;<input id="password"
			type="password" maxlength="18"><br> 年龄：&#12288;<input id="age"
			maxlength="3"><br> 电话：&#12288;<input id="phone" maxlength="11"><br>
	</form>

	<button id="registerButton" type="submit" style="margin-top: 20px">注册</button>

	<p id="info" style="font-size: 14px; color: red"></p>

	<script type="text/javascript">
		$("#registerButton").click(function() {
			var id = $("#id").val(); //jqury val()方法返回元素value属性
			var password = $("#password").val();
			var name = $("#name").val();
			var age = $("#age").val();
			var phone = $("#phone").val();
			if (id == '') {
				$("#info").text("提示:工作号不能为空");
			} else if (name == '') {
				$("#info").text("提示:姓名不能为空");
			} else if (password == '') {
				$("#info").text("提示:密码不能为空");
			} else if (phone == '') {
				$("#info").text("提示:电话不能为空");
			} else {
				$.ajax({
					type : "POST",
					url : "/books/ManagerRegisterServlet",
					data : {
						id : id,
						password : password,
						name : name,
						age : age,
						phone : phone
					},
					dataType : "json",
					success : function(data) {
						if (data.code == "000000") {
							$("#info").text("提示:注册成功");
							setTimeout(function() {
								window.location.href = "login_manager.jsp"
							}, 800);
						} else {
							$("#info").text(data.message);
						}
					},
					error: function (xhr,errorText,errorType) {
						$("#info").text("" + xhr.status + "=" + errorText);
					}
				});
			}
		})
	</script>
	</div>

</div>
</body>
</html>