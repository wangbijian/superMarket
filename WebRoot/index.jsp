<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>登录系统</title>
    <link rel="stylesheet" href="./css/bootstrap.min.css">
	<script src="./js/jquery.min.js"></script>
	<script src="./js/bootstrap.min.js"></script>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<style type="text/css">
	#span1{
		 width: 380px;
     height: 250px;
     overflow:scrollbar;
      text-align: center;
 	 position: relative;
     left:35%;
     top: 35%;
    
	}
	#span{text-align: center;
	position: absolute;width:400px;height:250px;left:50%;top:50%; margin-left:-200px;margin-top:-125px;
	}
	</style>
	<script type="text/javascript">
	function go(){     
		window.location.href = "registUser.html" ;      
	} 
	</script>
  </head>
  <body style="overflow:hidden">
  <%System.out.println(session.getId()); %>
  <%
  	if(session.getAttribute("username")!=null){
  		//response.sendRedirect("/superMarket/success.jsp");
  		if("管理员".equals(session.getAttribute("type"))){
  			request.getRequestDispatcher("/WEB-INF/page/adminLogin.jsp").forward(request,response);
  		} else{
  			request.getRequestDispatcher("/WEB-INF/page/commonLogin.jsp").forward(request,response);
  		}
  	}
  %>
  
  <div id="span" class="panel panel-info">
  <div class="panel-heading">
      登录界面
   </div>
  <div class="panel-body">
   
  <form action="login.do" method="post" class="form-inline">
  	用户名:<input type="text" name="user.name" class="form-control" placeholder="请输入用户名" style="width:180px"/><br><br>
  	密　码:<input type="text" name="user.password"  class="form-control" placeholder="请输入密码" style="width:180px"/><br><br>
  	管理员:<input type="radio" name="user.type" value="管理员"/>　　　　　　
  	普通员:<input type="radio" name="user.type" value="普通员"/><br><br>
  	<input type="submit" value="登录" class="btn btn-default"/>　　　　
  	<input type="button" value="注册" onclick="go()" class="btn btn-default"/>
  </form>
  </div>
  </div>
  
  </body>
</html>
