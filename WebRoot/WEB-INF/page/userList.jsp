<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>用户列表</title>
    <link rel="stylesheet" href="./css/bootstrap.min.css">
	<script src="./js/jquery.min.js"></script>
	<script src="./js/bootstrap.min.js"></script>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
  	
  <body>
  <table class="table table-striped table-bordered table-hover table-condensed">
  <tr><th>用户名</th><th>密码</th><th>类型</th><th>删除</th></tr>
    <c:forEach items="${userList}" var="user">
    <tr>
    	<td> ${user.name}</td>
    	<td>${user.password }</td>
    	<td>${user.type }</td>
    	<td><a href="deleteUser.do?username=${user.name}">删除</a></td>
    </tr>
    </c:forEach>
   </table>
  </body>
</html>
