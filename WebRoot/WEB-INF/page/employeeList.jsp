<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>销售员列表</title>
    <link rel="stylesheet" href="./css/bootstrap.min.css">
	<script src="./js/jquery.min.js"></script>
	<script src="./js/bootstrap.min.js"></script>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<style type="text/css">
	#span{
		 width: 800px;
      text-align: center;
     position: absolute;
     left:50%;
     top:80px;
     margin-left:-400px;
	}
	</style>
  </head>
  
  <body>
   <div id="span" class="panel panel-info">
  <div class="panel-heading">
      销售人员资料
   </div>
  <div class="panel-body">
    <table class="table table-striped table-bordered table-hover table-condensed">
  <tr><th>工号</th><th>姓名</th><th>性别</th><th>身份证号</th><th>入职日期</th><th colspan="3">操作</th></tr>
    <c:forEach items="${employeeList}" var="employee" varStatus="status">
    <tr>
    	<td>${employee.number}</td>
    	<td>${employee.name}</td>
    	<td>${employee.sex}</td>
    	<td>${employee.idCardNumber}</td>
    	<td>${employee.inaugurationTime}</td>
    	<td ><a href="updataEmployee.jsp?number=${employee.number}&name=${employee.name}&sex=${employee.sex}&idCardNumber=${employee.idCardNumber}&inaugurationTime=${employee.inaugurationTime}">修改</a></td>
    	<td><a href="deleteEmployee.do?employee.number=${employee.number}">删除</a></td>
    	
    	<c:if test="${status.first}">
    		<td rowspan="${fn:length(employeeList)}" style="vertical-align:middle;text-align: center;"><a href="addEmployee.jsp" >添加新员工</a></td>
    	</c:if>
    </tr>
    </c:forEach>
   </table>
   </div>
   </div>
  </body>
</html>
