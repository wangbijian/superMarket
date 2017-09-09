<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>商品信息</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
<style type="text/css">
	#span{
		 width: 60%;
     height: 30%;
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
  <a href="addGoods.jsp">添加新商品</a>
    <table border="1px" cellspacing="0" cellpadding="0">
  <tr><th>商品ID号</th><th>商品名称</th><th>进货价</th><th>销售价</th><th>数量</th><th colspan="3">操作</th></tr>
    <c:forEach items="${GoodsList}" var="goods" varStatus="status">
    <tr>
    	<td>${goods.goodsId}</td>
    	<td>${goods.goodsName}</td>
    	<td>${goods.goodsInPrice}</td>
    	<td>${goods.goodsOutPrice}</td>
    	<td>${goods.goodsCount}</td>
    	<td><a href="updataEmployee.jsp?name=${goods.goodsName}&inPrice=${goods.goodsInPrice}&outPrice=${goods.goodsOutPrice}&count=${goods.goodsCount}">修改</a></td>
    	<td><a href="deleteGoods.do?goods.goodsId=${goods.goodsId}">删除</a></td>
    	
    	<c:if test="${status.first}">
    		<td rowspan="${fn:length(GoodsList)}"><a href="addGoods.jsp">添加新商品</a></td>
    	</c:if>
    </tr>
    </c:forEach>
   </table>
   </span>
  </body>
</html>
