<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<link rel="stylesheet" href="css/bootstrap-3.3.7-dist/css/bootstrap.css" />
		<link rel="stylesheet" href="css/zuoti.css" />
		<script type="text/javascript" src="js/zuoti.js"></script>
</head>
	<body>
		<div>
		<!--	导航-->
			<div class="navigator">
				<a href="first.jsp"><button type="button" class="btn btn-danger" >返回首页</button></a>
				<a href="zuoti.jsp"><button type="button" class="btn btn-danger" >直接做题</button></a>
			</div>
		<!--	中间开始答题，结束答题，时间显示-->
			<div class="nihao">
			
				<form>
				<input id="photoCover" class="input-large"  placeholder="上传题目答题" type="file" style="height:30px;">  
				</form>
				<h1>使用说明</h1>
				<p>1、点击开始答题才能答题</p>
				<p>2、可以通过点击确定来确认本道题的对错，答对则提示球为绿色，答错为红色</p>
				<p>3、您也可以通过自主上传题目的方式进行答题，去到下载题目页面进行您的题目要求设定，下载后在本页面上传，上传文件必须为txt文件
				不得往文件内添加任何其他文字</p>
				<p>4、在您点击结束答题后，系统会对您本次答题的用时和答对答错题目进行统计</p>
			</div>
			<div class="center">
			<div id="deng"></div>
			<div>
				&nbsp;&nbsp;&nbsp;&nbsp;
				<!--开始结束-->
				<button type="button" class="btn btn-danger" id="changenumber"  onclick="dianjikaishi()">开始答题</button>
				<button type="button" class="btn btn-danger" onclick="jieshu()" >结束答题</button>
				<!--时间显示-->
				<input type="text"  id="shi" value="0" size=4 />
				<span>时</span>
				<input type="text"  id="fen" value="0" size=4 />
				<span>分</span>
				<input type="text"  id="miao" value="0" size=8 />
				<span>秒</span>
				<br />
				<br />
				<hr/>
			</div>	
		<!--黑色题板-->
			<div class="tiban">
				<!--题目显示-->
				<div class="timu-last">
					<img   class="heiban" src="img/heiban.jpg" />
					<span class="jieguo1" id="chuanjieguo">1+14-2*6</span>
				</div>
				<!--结果输入-->
				<div class="jieguo-last">
					<img  class="daan-img" src="img/daan.jpg" />
					<input  type="text" class="jieguo" id="inputnumver" value=""/>
					<!--下一个和确定按钮-->
					<button type="button" class="btn btn-danger" id="queding" onclick="queding()">确定</button>
					<button type="button" class="btn btn-danger" id="next" onclick="loadXMLDoc()">下题</button>
				</div>
			<!--	答题时间，答对答错个数的提示-->
				<div class="tip">
					<span>答题时间：</span><input type="text" id="jieguo" value="0" size=8  />
					&nbsp;&nbsp;&nbsp;&nbsp;
					<span>答对：</span><span id="dui">0个</span>
					<span>答错：</span><span id="cuo">0个</span>
					<!--可以上传题目进行答题-->
					
				</div>	
			</div>
			
			
		</div>
	</body>
</html>
