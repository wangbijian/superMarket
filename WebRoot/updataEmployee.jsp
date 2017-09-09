<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
  	if(session.getAttribute("username")!=null && request.getParameter("name")!=null){
  		//response.sendRedirect("/superMarket/success.jsp");
  		if("管理员".equals(session.getAttribute("type"))){
  			//request.getRequestDispatcher("/WEB-INF/page/adminLogin.jsp").forward(request,response);
  		} else{
  			//request.getRequestDispatcher("index.jsp").forward(request,response);
  			response.sendRedirect("index.jsp");
  		}
  	} else{
  		//request.getRequestDispatcher("index.jsp").forward(request,response);
  		response.sendRedirect("index.jsp");
  	}
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>修改员工信息</title>
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
  <span id="span">
  <form action="updata.do" method="post">
  	*姓　　名：<input type="text" name="employee.name" value="<% if(request.getParameter("name")!=null){out.print(new String(request.getParameter("name").getBytes("ISO-8859-1"),"UTF-8"));}  %>"/><br><br>
  	*性　　别：<input type="text" name="employee.sex" value="<% if(request.getParameter("sex")!=null){out.print(new String(request.getParameter("sex").getBytes("ISO-8859-1"),"UTF-8"));}  %>"/><br><br>
  	*身份证号：<input type="text" name="employee.idCardNumber" value="${param.idCardNumber}"/><br><br>
  	*入职日期：<input type="text" name="employee.inaugurationTime" value="${param.inaugurationTime}"/><br><br>
  	<input type="hidden" name="employee.number" value="${param.number}"/>
  	<input type="submit" value="修改"/>　　
  	<input type="button" value="返回主页面" onclick="javascript:window.location.href='index.jsp';"/>
  </form>
  </span>
  </body>
</html>
