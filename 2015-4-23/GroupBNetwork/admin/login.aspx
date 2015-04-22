<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>  
	<meta name="keywords" content="" />
	<meta name="description" content="" />
	<title>Admin Template Login</title>
	<script src="js/jquery.js" type="text/javascript" charset="utf-8"></script>
	<script src="js/menu.js" type="text/javascript" charset="utf-8"></script>
	<script src="js/global.js" type="text/javascript" charset="utf-8"></script>
	<script src="js/modal.js" type="text/javascript" charset="utf-8"></script>		
	<link rel="stylesheet" href="css/style.css" type="text/css" media="screen" charset="utf-8" />
</head>
<body>
    <form id="form1" runat="server">
	<div id="wrapper_login">
			<div id="menu">
				<div id="left"></div>
				<div id="right"></div>
				<h2></h2>
				<div class="clear"></div>		
			</div>
			<div id="desc">
				<div class="body">
					<div class="col w10 last bottomlast">
						<form action="index.html">
							<p>
								<label for="username">用户名:</label>
								<input type="text" name="username" id="username" value="" size="40" class="text" />
								<br />
							</p>
							<p>
								<label for="password">密码:</label>
								<input type="password" name="password" id="password" value="" size="40" class="text" />
								<br />
							</p>
							<p class="last">
								<input type="submit" value="Login" class="novisible" />								
                                <asp:LinkButton runat="server"  OnClick="LoginClick" BorderColor="Black" Font-Bold="True" Font-Size="Large" Font-Underline="False">登录</asp:LinkButton>
                                <asp:LinkButton runat="server" BorderColor="Black" Font-Bold="True" Font-Size="Large" Font-Underline="False" OnClick="Unnamed2_Click">返回主页</asp:LinkButton>
								<br />
							</p>
							<div class="clear"></div>
						</form>
					</div>
					<div class="clear"></div>
				</div>
				<div class="clear"></div>
				<div id="body_footer">
					<div id="bottom_left"><div id="bottom_right"></div></div>
				</div>
			</div>		
		</div>
        <asp:Button ID="Button1" runat="server" Text="Button" />
    </form>
</body>
</html>
