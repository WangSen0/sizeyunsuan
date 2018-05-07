/**
 * 
 */
//点击开始答题，运行时间计时，找后台加载题目，设置下一个答题的flag
function dianjikaishi(){
	zongde();
	loadXMLDoc();
	flagkaishi=1;
}






//时间计时的具体函数
//x,y,z用于时分秒初始值定义和加1
		var x=0;
		var y=0;
		var z=0;
		//abc保证了超过了60的时候重新归零
		var a=0;
		var b=0;
		var c=0;
		//设置flag保证在答题过程中不能重复按开始答题按钮导致出现bug
		var flag=0;
		var flagkaishi=0;
		//f()函是关于秒的函数
		function f()
				{
					document.getElementById("miao").value=a;
					x=x+1;
					a=x%60;
					set1=setTimeout("f()", 1000);
					flag=1;
				}
		//分钟的函数
		function f2()
				{
			 		document.getElementById("fen").value=b;
			 		y=y+1;
			 		b=y%60;//通过除余来保证大于60的时候重新归零
			 		set2=setTimeout("f2()", 60000)
			 		
			 
				}
		//小时的函数
		function f3()
				{
					if(c>=2)
					{
						alert("您已经做了超过两个小时的题了，可以休息休息了，本次答题就到这儿吧");
						qingchu();
					}
					else
					{
						document.getElementById("shi").value=c;
			 			z=z+1;
			 			c=z%60;
			 			set2=setTimeout("f3()", 3600000)
					 }
				}
		//总的调用函数		
		function zongde()
				{
					if(flag==0)
						{
								f();
								f2();
								f3();
						}
				}
				
				
		//清除归零和显示结果的函数	
		function qingchu()
				{
					var shi;
					var fen;
					var miao;
					var jieguo;
					clearTimeout(set1);
					clearTimeout(set2);
					fen=document.getElementById("fen").value;
					miao=document.getElementById("miao").value;
					shi=document.getElementById("shi").value;
					jieguo=shi+"时"+fen+"分"+miao+"秒";
					document.getElementById("jieguo").value=jieguo;
					 
				}



//改变题目的值
function change(){
            var nv = document.getElementById("changenumber");
            nv.innerHTML = "<%=str%>";
         
        }
//对题目的值进行清空
function remove(){
//	var x=document.getElementByTagName("input").value;
//	x.remove();
	document.getElementById("inputnumver").value=""
	}
//获得用户输入的值
function getinput(){
//	var x=document.getElementByTagName("input").value;
//	x.remove();
	var anwser=document.getElementById("inputnumver").value;
	return  anwser;
	}
//对题目的值进行后台的加载
function loadXMLDoc()
{	
	if(flagkaishi==1){
	var anwser=document.getElementById("inputnumver").value;
	   var obj = document.getElementById('deng');
       obj.style.backgroundColor = "red";
	
var xmlhttp;
if (window.XMLHttpRequest)
  {// code for IE7+, Firefox, Chrome, Opera, Safari
  xmlhttp=new XMLHttpRequest();
  }
else
  {// code for IE6, IE5
  xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
  }
xmlhttp.onreadystatechange=function()
  {
  if (xmlhttp.readyState==4 && xmlhttp.status==200)
    {	 
	  var s=xmlhttp.responseText;
	  var s1=document.getElementById("chuanjieguo");
    document.getElementById("chuanjieguo").innerHTML=xmlhttp.responseText;
    	remove();
    }
  }
xmlhttp.open("POST","http://localhost:8080/sizeyunsuan/xianshi"+"?input="+getinput(),true);
xmlhttp.setRequestHeader("Content-type","application/x-www-form-urlencoded");
xmlhttp.send("fname=anwser&lname=Gates");
//xmlhttp.open("GET","http://localhost:8080/sizeyunsuan/xianshi?q="+str,true);
//xmlhttp.send();
}
}





//判断对错的函数
var dui=0;
var cuo=0;
function queding(){
		var obj = document.getElementById('deng');
		var huoquzhi;
		var temp;
		var yonghu;
		huoquzhi=document.getElementById('chuanjieguo').innerHTML;
		var nihao=huoquzhi.replace(/÷/, "/")
		temp=eval(nihao);
		yonghu=document.getElementById('inputnumver').value;
		console.log(yonghu);
		if(yonghu==temp){
		obj.style.backgroundColor = "green";
		dui=dui+1;
		}
		else{
		cuo=cuo+1;
		}
	}


//统计对错的函数
function tongjiduicuo(){
	 var dd = document.getElementById("dui");
     dd.innerHTML =dui;
     var cc = document.getElementById("cuo");
     cc.innerHTML =cuo;
}


//结束答题运行的函数，统计对错和保存时间
function jieshu(){
	tongjiduicuo();
	qingchu();
}