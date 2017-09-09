<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>welcome,${username}</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

  </head>
  
  <body>
    <a href="manage.do?action=user">用户管理</a>
    <a href="manage.do?action=employee">销售员资料</a>
    <a href="getAllGoods.do">商品资料</a>
    <a href="manage.do?action=customer">客户资料</a>
    <a href="manage.do?action=supplier">供应商资料</a>
    <a href="manage.do?action=buyIn">采购入库</a>
    <a href="manage.do?action=buyOut">采购退货</a>
    <a href="manage.do?action=saleOut">销售出库</a>
    <a href="manage.do?action=saleIn">销售退货</a>
    <a href="manage.do?action=stock">库存</a>
    <a href="/superMarket/outLogin.do">安全退出</a>
  </body>
</html>
