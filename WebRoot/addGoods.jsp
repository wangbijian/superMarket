<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>添加商品</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
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
  			//request.getRequestDispatcher("index.jsp").forward(request,response);
  			response.sendRedirect("index.jsp");
  		}
  	} else{
  		//request.getRequestDispatcher("index.jsp").forward(request,response);
  		response.sendRedirect("index.jsp");
  	}
  %>
  <span id="span">
  <form action="addGoods.do" method="post">
  	<!-- *商品号ID：<input type="text" name="goods.goodsId" readonly="true"/><br><br> -->
  	*商品名称：<input type="text" name="goods.goodsName"/><br><br>
  	*进货价：<input type="text" name="goods.goodsInPrice"/><br><br>
  	*销售价：<input type="text" name="goods.goodsOutPrice"/><br><br>
  	*商品数量：<input type="text" name="goods.goodsCount"/><br><br>
  	<input type="submit" value="添加新商品"/>
  	<input type="button" value="返回主页面" onclick="javascript:window.location.href='index.jsp';"/>
  </form>
  </span>
  </body>
</html>
