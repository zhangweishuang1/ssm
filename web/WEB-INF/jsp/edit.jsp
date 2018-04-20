<%--
  Created by IntelliJ IDEA.
  User: 高朋
  Date: 2018/4/15 0015
  Time: 16:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>用户编辑</title>
    <script>
        function check()
        {
            if(document.getElementById("required1").value==""){
                alert("姓名不能为空！");
                document.getElementById("required1").focus();
                return false;
            }
            if(document.getElementById("required2").value==""){
                alert("年龄不能为空！");
                document.getElementById("required2").focus();
                return false;
            }
            return true;

        }
    </script>
    <style>
        td{
            padding: 10px;
        }
    </style>
</head>
<body>
<form action="update" method="post" onsubmit="return check()" style="text-align: center;margin-top: 10%">
    编辑用户
    <table align="center">
        <tr>
            <td>姓名：</td>
            <td><input type="text" name="name" id="required1" value="${user.name}">*</td>
        </tr>
        <tr>
            <td>年龄：</td>
            <td><input type="number" name="age" id="required2" value="${user.age}">*</td>
        </tr>
        <tr>
            <td>性别：</td>
            <td><input type="text" name="gender" value="${user.gender}"></td>
        </tr>
        <tr>
            <td>电话：</td>
            <td><input type="text" name="tel" value="${user.tel}"></td>
        </tr>
        <tr>
            <td>地址：</td>
            <td><input type="text" name="address" value="${user.address}"></td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <input type="hidden" name="id" value="${user.id}">
                <input type="submit" value="提交">
            </td>
        </tr>
    </table>
</form>
</body>
</html>
