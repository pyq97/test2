<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>注册</title>
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
<script src="./static/js/jquery-3.2.1.js"></script>
<div class="con">
<div class="dv">
<h4 class="font1">学生注册</h4>
<form>
    学号：<input id="id" maxlength="18"><br> 姓名：<input id="name"
                                                    maxlength="5"><br> 密码：<input id="password"
                                                                                 type="password" maxlength="18"><br> 性别：<label><input
        name="sex" type="radio" value="0" checked="checked"/>男</label> <label><input
        name="sex" type="radio" value="1"/>女</label> <br> 年龄：<input id="age"
                                                                    maxlength="3"><br> 专业：<input id="profession"
                                                                                                 maxlength="15"><br> 年级：<input
        id="grade" maxlength="15"><br>
</form>

<button id="registerButton" type="submit" style="margin-top: 20px ">注册</button>

<p id="info" style="font-size: 14px; color: red"></p>

<script type="text/javascript">
    $("#registerButton").click(function () {
        var id = $("#id").val(); //jqury val()方法返回元素value属性
        var password = $("#password").val();
        var name = $("#name").val();
        var age = $("#age").val();
        var sex = $('input[name="sex"]:checked').val();
        if (sex == 0) {
            sex = "男";
        } else {
            sex = "女";
        }
        var grade = $("#grade").val();
        var profession = $("#profession").val();
        if (id == '') {
            $("#info").text("提示:学生ID不能为空");
        } else if (name == '') {
            $("#info").text("提示:姓名不能为空");
        } else if (password == '') {
            $("#info").text("提示:密码不能为空");
        } else {
            $.ajax({
                type: "POST",
                url: "/books/StudentRegisterServlet",
                data: {
                    id: id,
                    password: password,
                    name: name,
                    age: age,
                    sex: sex,
                    grade: grade,
                    profession: profession
                },
                dataType: "json",
                success: function (data) {
                    if (data.code == "000000") {
                        $("#info").text("提示:注册成功");
                        setTimeout(function () {
                            window.location.href = "login.jsp"
                        }, 800);
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