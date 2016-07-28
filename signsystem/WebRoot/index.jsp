<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>签到系统_首页</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=0.6">
    <link rel="SHORTCUT ICON" href="/stepfund/resources/image/bitbug_favicon.ico"/> 
    
    <link href="/signsystem/resources/css/index.css" rel="stylesheet">


   
 
	


  
    
  </head>
  
<body >
<div class="titlecontainer1">
	<div class="titlecontainer2">
		<div class="titlecontainer3">
			<div class="titlecontainer4">
				<div class="titletext">
				创业周签到系统
				</div>
			</div>
		</div>
	</div>
</div>
<form method="post" action="/signsystem/getbyphone">
<div class="contentcontainer1">
	<div class="contentcontainer2">
		<div class="notice">
		${notice }
		</div>
		<div class="phone">
			<div class="phonetext">
			手机号:
			</div>
			<div class="phoneinput">
			<input type="text" name="phone" maxlength="11" placeHolder="请输入注册时填写的手机号"  style="width:100%;height:100%">
			</div>
		</div>
		<div class="submitbutton">
			<input type="submit" class="buttonstyle" value="确定" style="width:100%;height:100%">
		</div>
		<div class="register">
			<a href="/signsystem/register">注册</a>
		</div>
	</div>
</div>
</form>



</body>

</html>
