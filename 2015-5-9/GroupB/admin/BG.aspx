<%@ Page Language="C#" AutoEventWireup="true" CodeFile="BG.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
		<meta name="keywords" content="" />
		<meta name="description" content="" />
		<title>Gray Admin Template</title>
		<link rel="stylesheet" href="css/style.css" type="text/css" media="screen" charset="utf-8" />
		<script src="js/jquery.js" type="text/javascript" charset="utf-8"></script>
		<script src="js/global.js" type="text/javascript" charset="utf-8"></script>
		<script src="js/modal.js" type="text/javascript" charset="utf-8"></script>
</head>
<body>
    <form id="form1" runat="server">

        <asp:Button runat="server" OnClick="Unnamed1_Click"/>
        

    </form> 
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
        var columns = bg.width / (font_size + line_height); //number of columns for the rain
        //an array of drops - one per column
        var drops = [];
        //x below is the x coordinate
        //1 = y co-ordinate of the drop(same for every drop initially)
        for (var x = 0; x < columns; x++) {
            drops[x] = 1;
        }

        var loop = 0;
        //drawing the characters
        function draw() {
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
            for (var i = 0; i < dropsL; i++) {
                //a random chinese character to print
                var text = chinese[Math.floor(Math.random() * chinese.length)];
                //x = i*font_size, y = value of drops[i]*font_size
                ctx.fillText(text, i * (font_size + line_height), drops[i] * (font_size + 4));

                //sending the drop back to the top randomly after it has crossed the screen
                //adding a randomness to the reset to make the drops scattered on the Y axis
                if (drops[i] * font_size > bg.height && Math.random() > 0.995) //密集程度，越大越稀疏
                    drops[i] = 0;

                //incrementing Y coordinate
                drops[i]++;
            }
        }
        setInterval(draw, 40);  //重复绘制，下降速度
	</script>
</body>
</html>
