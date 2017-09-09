<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>添加新员工</title>
    <meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
  <style type="text/css">
	#span{
		 width: 300px;
     height: 150px;
      border: 0px solid black;
      position: absolute;
  
      text-align: center;
  
     left:0;
     right:0;
     top: 0;
     bottom: 0;
     margin: auto;
	}
	</style>
  </head>
  <body>
  <%
  	if(session.getAttribute("username")!=null){
  		//response.sendRedirect("/superMarket/success.jsp");
  		if("管理员".equals(session.getAttribute("type"))){
  			//request.getRequestDispatcher("/WEB-INF/page/adminLogin.jsp").forward(request,response);
  		} else{
  			//session.setAttribute("currentAction", "addEmployee.jsp");
  			//request.getRequestDispatcher("login.do").forward(request,response);
  			response.sendRedirect("index.jsp");
  		}
  	} else{
  		session.setAttribute("currentAction", "addEmployee.jsp");
  		//request.getRequestDispatcher("login.do").forward(request,response);
  		response.sendRedirect("index.jsp");
  	}
  %>
  <span id="span">
  <form action="addEmployee.do" method="post">
  	*姓　　名：<input type="text" name="employee.name"/><br><br>
  	*性　　别：<input type="text" name="employee.sex"/><br><br>
  	*身份证号：<input type="text" name="employee.idCardNumber"/><br><br>
  	*入职日期：<input type="text" name="employee.inaugurationTime"/><br><br>
  	<input type="submit" value="添加新员工"/>　　
  	<input type="button" value="返回主页面" onclick="javascript:window.location.href='index.jsp';"/>
  </form>
  </span>
  </body>
</html>
