<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 高朋
  Date: 2018/4/15 0015
  Time: 16:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>用户管理</title>
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
        th{
            padding: 10px;
        }
        td{
            padding: 10px;
        }
    </style>
</head>
<body>
    <table align="center" border="1" cellspacing="0" style="margin-top: 5%">
        <thead>
            <th>ID</th>
            <th>姓名</th>
            <th>年龄</th>
            <th>性别</th>
            <th>电话</th>
            <th>地址</th>
            <th>编辑</th>
            <th>删除</th>
        </thead>
        <tbody>
            <c:forEach items="${users}" var="user">
                <tr>
                    <td>${user.id}</td>
                    <td>${user.name}</td>
                    <td>${user.age}</td>
                    <td>${user.gender}</td>
                    <td>${user.tel}</td>
                    <td>${user.address}</td>
                    <td><a href="edit?id=${user.id}">编辑</a></td>
                    <td><a href="delete?id=${user.id}" onclick="return confirm('确认要删除？')">删除</a></td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
    <div align="center" style="margin-top: 2%">
        <a href="?start=0" onclick="return ${page.hasPrevious}">首页</a>
        <a href="?start=${page.start-page.count}" onclick="return ${page.hasPrevious}">上一页</a>
        <a href="?start=${page.start+page.count}" onclick="return ${page.hasNext}">下一页</a>
        <a href="?start=${page.last}" onclick="return ${page.hasNext}">尾页</a>
    </div>
    <form action="add" method="post" onsubmit="return check()" align="center" style="margin-top: 4%">
        新增用户
        <table align="center">
            <tr>
                <td>姓名：</td>
                <td><input type="text" name="name" id="required1">*</td>
            </tr>
            <tr>
                <td>年龄：</td>
                <td><input type="number" name="age" id="required2">*</td>
            </tr>
            <tr>
                <td>性别：</td>
                <td><input type="text" name="gender"></td>
            </tr>
            <tr>
                <td>电话：</td>
                <td><input type="text" name="tel"></td>
            </tr>
            <tr>
                <td>地址：</td>
                <td><input type="text" name="address"></td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <input type="submit" value="提交">
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
