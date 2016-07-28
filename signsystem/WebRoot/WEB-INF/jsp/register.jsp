<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>


<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>签到系统_个人信息</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
   	<meta name="viewport" content="width=device-width, initial-scale=0.6"> 
   	<link href="/signsystem/resources/css/register.css" rel="stylesheet">
  </head>
  
<body>
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
<form method="post" action="/signsystem/registersubmit">
<div class="contentcontainer1">
	<div class="contentcontainer2">
		<div class="notice">
		${notice }
		</div>
		<div class="name">
			<div class="xinhao">
			*
			</div>
			<div class="nametext">
			姓&nbsp;名:
			</div>
			<div class="nameinput">
				<input type="text" name="name" maxlength="10" placeholder="10个汉字或10个英文字母之内"   style="width:100%;height:100%">
			</div>
		</div>
		
		<div class="identity">
			<div class="identitytext">
			公&nbsp;司:
			</div>
			<div class="identityinput">
			<input type="text" name="company" maxlength="20" placeholder="20个字符之内"   style="width:100%;height:100%">
			</div>
		</div>
		<div class="phone">
			<div class="xinhao">
			*
			</div>
			<div class="phonetext">
			手&nbsp;机:
			</div>
			<div class="phoneinput">
			<input type="text" name="phone"  maxlength="11" placeHolder="请输入11位未注册手机号" style="width:100%;height:100%">
			</div>
		</div>
		<div class="identity">
			<div class="identitytext">
			邮&nbsp;箱:
			</div>
			<div class="identityinput">
			<input type="text" name="email" placeHolder="请输入有效邮箱地址"   style="width:100%;height:100%">
			</div>
		</div>
		<div class="identity">
			<div class="identitytext">
			职&nbsp;务:
			</div>
			<div class="identityinput">
			<input type="text" name="title" maxlength="20" placeholder="20个字符之内"  style="width:100%;height:100%">
			</div>
		</div>
		<div class="phone">
			<div class="xinhao">
			*
			</div>
			<div class="phonetext">
			身&nbsp;份:
			</div>
			<div class="phoneinput">
				<select name="identity"  style="width:30%;height:25px">
   		   		  <option value="创业者">创业者</option>
  				  <option value="投资人">投资人</option>
    				<option value="媒体">媒体</option>
    				<option value="嘉宾">嘉宾</option>
    				<option value="VIP">VIP</option>
   					 <option value="志愿者">志愿者</option>
   					 <option value="工作人员">工作人员</option>
   					 <option value="参展企业">参展企业</option>
    					<option value="组委会">组委会</option>
   
   				 </select> 
			</div>
		</div>
		<div class="registerbutton">
			<input type="submit" class="buttonstyle" value="确定" style="width:100%;height:100%">
		</div>
	</div>
</div>  
</form>
</body>
</html>
