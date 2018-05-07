
var i;
var j;
function checktishu()
	{     

		var tishu=document.getElementById("tishu").value;

		if(tishu<=0||tishu>10000){
			var target=document.getElementById("first");
			target.style.display="inline";
			i=0; 
		}
		else{
			var target=document.getElementById("first");
			target.style.display="none";
			 i=1;
		}

	}
	
	function checkfanwei()
	{     

		var down=document.getElementById("down").value;
		var up=document.getElementById("up").value;
		if(down<=1||down>100||up<50||up>1000){
			var target=document.getElementById("second");
			target.style.display="inline";
			j=0; 
		}
		else{
			var target=document.getElementById("second");
			target.style.display="none";
			 j=1;
		}

	}
	
function tijiao(){
		if(i==1&&j==1){
			alert("已保存到本地！");
			return true;
		}
		else{
            
            alert("打印失败！请按照输入格式输入");
            return false;
		}

	}