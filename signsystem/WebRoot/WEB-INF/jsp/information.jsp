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
   	<link href="/signsystem/resources/css/information.css" rel="stylesheet">
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
<div class="contentcontainer1">
	<div class="contentcontainer2">
		<div class="welcome">
		您好，${person.fullname}，请核对您的个人信息:
		</div>
		<div class="identity">
		身&nbsp;份:&nbsp;&nbsp;&nbsp;&nbsp;${person.role }
		</div>
		<div class="company">
		公&nbsp;司:&nbsp;&nbsp;&nbsp;&nbsp;${person.company}
		</div>
		<div class="email">
		邮&nbsp;箱:&nbsp;&nbsp;&nbsp;&nbsp;${person.email }
		</div>
		<div class="zhiwu">
		职&nbsp;务:&nbsp;&nbsp;&nbsp;&nbsp;${person.title }
		</div>
		<div class="printbutton">
		<input type="submit" value="打印" class="buttonstyle" style="width:100%;height:100%">
		</div>
	</div>
</div>  

</body>
</html>
