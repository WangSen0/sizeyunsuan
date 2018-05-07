<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="js/jquery-3.3.1.min.js"></script>
		<link rel="stylesheet" href="css/bootstrap-3.3.7-dist/css/bootstrap.css" />
		<link rel="stylesheet" href="css/download.css" />
		<script src="js/download.js"></script>
	</head>
	<body>
		
		<div class="navigator">
			<span><<<<<<</span>
			<a href="first.jsp"><button type="button" class="btn btn-danger" >返回首页</button></a>
			<a href="zuoti.jsp"><button type="button" class="btn btn-danger" >直接做题</button></a>
			<span>>>>>></span>
		</div>
		
			<div class="center">
				<h1>出题题目要求</h1>
  <form  class="wrap" action="servlet/ChuanServlet" method="post">
  	<div class="form-inline" >
  	 <div class="form-group">
    <label for="exampleInputName2" >出题数目</label>
    <input  class="form-control" name="problem-number" id="tishu" placeholder="输入范围：1-10000"onblur="checktishu()">
 	 </div>
 	 <span  id="first">输入不符合要求</span>
 	 </div>
 	 
 	 
 	 <div class="form-inline">
  <div class="form-group">
    <label for="exampleInputName2" >下限数值</label>
    <input type="text" class="form-control" name="down-number" placeholder="输入范围：1-100" id="down">
  </div>
  <div class="form-group">
    <label for="exampleInputEmail2">上限数值</label>
    <input  class="form-control" name="up-number" placeholder="输入范围：50-1000" id="up" >
  </div>
  <span id="second">输入不符合要求</span>
  </div>
  
  
  <div class="form-inline">
  	 <div class="form-group">
    <label for="exampleInputName2">运算符数</label>
    <input  class="form-control" name="operator-number" placeholder="请输入:默认为1个" onfocus="checkfanwei()">
 	 </div>
 	 </div>
  
  
 	 
 	 <div class="form-inline">
 	 	 <label for="exampleInputName2">是否乘除</label>
 	 <select class="form-control" name="select-chengchu">
  <option>yes</option>
  <option>no</option>
</select>

<label for="exampleInputName2" >是否括号</label>
 	 <select class="form-control" name="select-kuohao">
  <option>yes</option>
  <option>no</option>
</select>
</div>
 
  
	<button type="submit" class="btn btn-default" onclick="tijiao()">开始打印到本地txt</button>
</form>

<img  class="log-img" src="img/log2.png" />
</div>

</html>
