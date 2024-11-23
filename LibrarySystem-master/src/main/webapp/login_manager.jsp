<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>图书管理系统</title>
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
		font-size:40px;
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
		.c1{
			margin-top:1px;
		}
    </style>
</head>
<body class="body">
<div class="con">
<div class="dv">
<script src="./static/js/jquery-3.2.1.js"></script>
<h4>管理员登录</h4>

<div>
    <form>
        工作号：<input id="id" name="id" maxlength="18"><br> 密码：&#12288;<input
            id="password" name="password" type="password" maxlength="18"><br>
    </form>
<div class="dv1">
    <div style="display: flex;margin-top: 20px">
        <div class="c1"><button id="loginButton" type="submit">登录</button></div>
        <form action="register_manager.jsp" style="margin-left: 10px;">
            <input type="submit" value="管理员注册">
        </form>
        <form action="login.jsp" style="margin-left: 10px;">
            <input type="submit" value="学生入口">
        </form>
    </div>
</div>
    <p id="info" style="font-size: 14px; color: red"></p>
</div>

<script type="text/javascript">
    $("#loginButton").click(
        function () {
            var id = $("#id").val(); //jqury val()方法返回元素value属性
            var password = $("#password").val();

            if (id == '') {
                $("#info").text("提示：工作号不能为空");
            } else if (password == '') {
                $("#info").text("提示：密码不能为空");
            } else {
                $.ajax({
                    type: "POST",
                    url: "/books/ManagerLoginServlet",
                    data: {
                        id: id,
                        password: password
                    },
                    dataType: "json",
                    success: function (data) {
                        if (data.code == "000000") {
                            //$("#info").text("提示:登陆成功");
                            window.location.href = "home_manager.jsp?id="
                                + data.data.id;
                        } else {
                            $("#info").text(data.message);
                        }
                    },
                    error: function (xhr, errorText, errorType) {
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