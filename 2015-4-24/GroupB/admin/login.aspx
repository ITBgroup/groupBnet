<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="admin_login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta charset="utf-8"/>
	<meta http-equiv="X-UA-Compatible" content="IE=Edge"/>
	<title>后台登录系统</title>
	<link href="css/manage.css" rel="stylesheet" />
</head>
<body>
	<div class="login">
		<!--[if lt IE 8]>
	    <div class="ie-login">
	    	请使用以下任意一项浏览器登录！
	    	<ul>
	    		<li>IE8+ 浏览器</li>
	    		<li>谷歌，火狐等现代浏览器</li>
	    		<li>混合浏览器（360，搜狗，猎豹...）<br />的极速模式</li>
	    	</ul>
	    </div>
	    <![endif]-->
		<h1>黑客与极客网站管理登陆</h1>
		<form method="post" action="login.aspx" onsubmit="javascript:return WebForm_OnSubmit();" id="form1">
<div class="aspNetHidden">
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/UgwLN+5CmucHxsGsJAeLAKR3JUCB7qdjsIMf80F/Ysi82w/E6mvg9fzXHJbfu8FaRRC/m32eeXB6czVRCdp2Vis6Inql/dmqPLfa8CjZLw=" />
</div>

<script type="text/javascript">
    //<![CDATA[
    var theForm = document.forms['form1'];
    if (!theForm) {
        theForm = document.form1;
    }
    function __doPostBack(eventTarget, eventArgument) {
        if (!theForm.onsubmit || (theForm.onsubmit() != false)) {
            theForm.__EVENTTARGET.value = eventTarget;
            theForm.__EVENTARGUMENT.value = eventArgument;
            theForm.submit();
        }
    }
    //]]>
</script>


<script src="/WebResource.axd?d=pynGkmcFUV13He1Qd6_TZFSSwmTYg1MXBxu91Cmo5LbESfQAN4oi7KfJ2mgIwsxCRekooS_Eju9Tj1Ks3UfC_w2&amp;t=635589723571259667" type="text/javascript"></script>


<script src="/Scripts/jquery-1.7.1.js" type="text/javascript"></script>
<script src="/WebResource.axd?d=x2nkrMJGXkMELz33nwnakKb_evy667zZkID7wHPpxVNgzJ84c8-wTrG6990jnW_lPXfrwGa4_X9Ms6IWnfVI4Mf2cw7K9mkYt81lS7AirfE1&amp;t=635589723571259667" type="text/javascript"></script>
<script type="text/javascript">
    //<![CDATA[
    function WebForm_OnSubmit() {
        if (typeof(ValidatorOnSubmit) == "function" && ValidatorOnSubmit() == false) return false;
        return true;
    }
    //]]>
</script>

<div class="aspNetHidden">

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="200C32EE" />
	<input type="hidden" name="__PREVIOUSPAGE" id="__PREVIOUSPAGE" value="aQixp8KV1vwJjFWDT0CDCto3E4PbMRw_rKZ-80YMtNAQaWWzKE2xuJOkuDvWzM-1oYw0csFog0z1qiZK5_GBDzeIWshmfWT451CgNDb-vE81" />
	<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="8aYY8LQ1/ID4Y+Qbo4u13/ZGY1ri/ZeMydmE/iOlwxftbKTIbPJiOsT09XgsQ91RFvH+9wnBX6DYSeC/YRWyeld+HcSLAX2FLtywY4v2VglRPBi+ydosvziJCYt2jlSIUU0piw+UEJU9zcGiL19kQ0z2NhvTq4pDXJehYdPq+7ZTPXtgKJVUrOKGGZmo15np" />
</div>
			<p>
				<input name="txtID" type="text" maxlength="16" id="txtID" placeholder="请输入用户名" />
				<span data-val-controltovalidate="txtID" data-val-errormessage="学号/工号不能为空" data-val-validationgroup="valid" id="valrName" data-val="true" data-val-evaluationfunction="RequiredFieldValidatorEvaluateIsValid" data-val-initialvalue="" style="color:Red;visibility:hidden;">学号/工号不能为空</span>
				<!--input type="text" value="" placeholder="请输入用户名" /-->
			</p>
			<p>
				<input name="txtPassword" type="password" maxlength="16" id="txtPassword" placeholder="请输入密码" />
				<span data-val-controltovalidate="txtPassword" data-val-errormessage="密码不能为空" data-val-validationgroup="valid" id="valrPassword" data-val="true" data-val-evaluationfunction="RequiredFieldValidatorEvaluateIsValid" data-val-initialvalue="" style="color:Red;visibility:hidden;">密码不能为空</span>
				<!--input type="password" placeholder="请输入密码" /-->
			</p>
			<p class="login-btn">
				<input type="submit" name="BtnLogin" value="登录" id="BtnLogin" />
				<input type="submit" name="BtnReturn" value="返回首页" id="BtnReturn" />
			</p>
		</form>
	</div>
	<canvas class="login-bg" id="bg">
	</canvas>
	<script type="text/javascript">
	    var bg = document.getElementById("bg");
	    var ctx = bg.getContext("2d");
		
	    //making the canvas full screen
	    bg.height = window.innerHeight;
	    bg.width = window.innerWidth;
		
	    //chinese characters - taken from the unicode charset
	    var chinese = "01";
	    //converting the string into an array of single characters
	    chinese = chinese.split("");
		
	    var font_size = 14;
	    var line_height = 18;
	    var columns = bg.width/(font_size + line_height); //number of columns for the rain
	    //an array of drops - one per column
	    var drops = [];
	    //x below is the x coordinate
	    //1 = y co-ordinate of the drop(same for every drop initially)
	    for(var x = 0; x < columns; x++) {
	        drops[x] = 1; 
	    }
		
	    var loop = 0;
	    //drawing the characters
	    function draw()
	    {
	        loop++;
	        if (loop > 100) {
	            //清空背景
	            //ctx.fillStyle = "rgba(245, 249, 250, .5)";
	            ctx.fillStyle = "rgba(0, 0, 0, .5)";
	            ctx.fillRect(0, 0, bg.width, bg.height);
	            loop = 0;
	        } else {
	            //Black BG for the canvas
	            //translucent BG to show trail
	            //ctx.fillStyle = "rgba(245, 249, 250, .12)"; //字符消失速度
	            ctx.fillStyle = "rgba(0, 0, 0, .12)";
	            ctx.fillRect(0, 0, bg.width, bg.height);
	        }
			
	        //ctx.fillStyle = "#9ba0a3"; //green text
	        ctx.fillStyle = "#2ECC71";
	        ctx.font = font_size + "px arial";
	        //looping over drops
	        var dropsL = drops.length
	        for(var i = 0; i < dropsL; i++)
	        {
	            //a random chinese character to print
	            var text = chinese[Math.floor(Math.random()*chinese.length)];
	            //x = i*font_size, y = value of drops[i]*font_size
	            ctx.fillText(text, i*(font_size + line_height), drops[i]*(font_size + 4));
				
	            //sending the drop back to the top randomly after it has crossed the screen
	            //adding a randomness to the reset to make the drops scattered on the Y axis
	            if(drops[i]*font_size > bg.height && Math.random() > 0.995) //密集程度，越大越稀疏
	                drops[i] = 0;
				
	            //incrementing Y coordinate
	            drops[i]++;
	        }
	    }
	    setInterval(draw, 40);  //重复绘制，下降速度
	</script>

</body>
</html>
