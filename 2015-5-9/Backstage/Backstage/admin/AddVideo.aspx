<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddVideo.aspx.cs" Inherits="Backstage.admin.AddVideo" ValidateRequest="false"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>网站后台管理系统</title>
    <style type="text/css">
body {background: #686868; font-family:Arial, Helvetica, sans-serif; font-size:12px; margin:0px; margin-bottom:2px;border-bottom: 1px #ccc solid;}
h1 {color: #FFF;}
a {color: #FFF; text-decoration: none;/*防止滤镜下链接失效*/position:relative;}
ul { list-style:none;}
#all {width: 100%;}
#banner {margin-top: 8px; margin-left: 32px;}
#main {width: 100%; margin-bottom: 2px; background:#eeeeee; margin-left: 0px; margin-right:0px; height: 30px; color: #000; line-height: 2.4;overflow: auto;}
#main a {color:#000;}
#welcome { float:left; width: 40%; font-weight: 800; padding-left: 8px; position:relative;}
#adminop { float:left; width: 59%; position:relative; text-align:right; line-height:1; *line-height:2.2;}
#adminop ul li {float: right; width: 80px;}
#nav {width: 100%; clear: both;}
#nav ul li {float: right; width:82px; height:25px; line-height: 2.1; text-align: center;}
.inactive { background-image/**/:url(images/admin/nav_bg_inactive2.png) !important;background: none; margin-left: 2px; margin-right:2px;filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(src=images/admin/nav_bg_inactive2.png);}
.inactive a {color: #000;}
.active {background:url(images/admin/nav_bg_active2.png) !important;background: none; margin-left: 2px; margin-right:2px;filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(src=images/admin/nav_bg_active2.png);}
.active a {color:#fff;}
.blankgray {background:#bbb; height:2px; width:100%; margin:0; padding:0; clear:both; font-size:2px;}
</style>

<script type="text/javascript"  src="js/jquery-1.3.2.min.js"></script>
<script type="text/javascript">
    var oplist = new Array('about', 'user', 'news', 'mars', 'jielong', 'box', 'school', 'config', 'other');
    $(document).ready(function () {
        $('#nav').find("a").click(function () {
            var id = $(this).attr('id');
            $.each(oplist, function (i, n) {
                $('#' + n).attr('class', 'inactive');
            });
            $(this).parents("li").attr('class', 'active');
        });
    });
</script>
     <script src="/ueditor/ueditor.config.js" charset="utf-8" type="text/javascript"></script>
    <script src="/ueditor/ueditor.all.min.js" charset="utf-8" type="text/javascript"></script>
    <script type="text/javascript" charset="utf-8" src="/ueditor/lang/zh-cn/zh-cn.js"></script>
        <style type="text/css">
            #menu {
                border-style: outset;
                height: 507px;
                width: 10%;
                margin-right: 0px;
                float: left;
                bottom: inherit;
                clip: rect(auto, auto, inherit, auto);
            }
            .source {
                float: right;
                clip: rect(auto, auto, inherit, auto);
                width: 88.5%;
                min-height: 513px;
                background-color: #FFFFFF;
                bottom: inherit;
                margin-left: 12px;
            }
            .auto-style1 {
                font-size: large;
            }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div id="all">
	<div id="banner"><h1>后台管理登录</h1></div>
    <%--<div id="nav">
    	<ul>
            <li class="inactive" id="video"><a href="Index2.aspx" target="menu">视频站设置</a></li>
            <li class="active" id="main2"><a href="Index.aspx" target="menu">主站设置</a></li>
        </ul>
    </div>--%>
    <div id="main">
    	<div id="welcome">欢迎你回来,<asp:Label ID="username" runat="server" Text="Label"></asp:Label> <img src="images/clock.gif" /> 现在时间: 2009年3月4日 星期三   16:47</div>
        <div id="adminop">
            <ul>
                <li><asp:LinkButton ID="LinkButton1" runat="server" OnClick="Unnamed1_Click" OnClientClick='return confirm("确认退出？")'>退出管理</asp:LinkButton></li>
            </ul>
        </div>
    </div>
</div>
   <div id="menu" style="min-height:513px">
        <ul>
            <li><img src="images/li.jpg" />&nbsp;&nbsp;&nbsp; <asp:LinkButton runat="server" ID="ArticleClassLink" OnClick="ArticleClassLink_Click">文章分类</asp:LinkButton><hr /></li>
            <li><img src="images/li.jpg" />&nbsp;&nbsp;&nbsp; <asp:LinkButton runat="server" ID="ArticleLink" OnClick="ArticleLink_Click">文章管理</asp:LinkButton><hr /></li>
            <li><img src="images/li.jpg" />&nbsp;&nbsp;&nbsp; <asp:LinkButton runat="server" ID="VideoClassLink" OnClick="VideoClassLink_Click">视频分类</asp:LinkButton><hr /></li>
            <li><img src="images/li.jpg" />&nbsp;&nbsp;&nbsp; <asp:LinkButton runat="server" ID="VideoLink" OnClick="VideoLink_Click">视频管理</asp:LinkButton><hr /></li>
        </ul>
    </div>
    <div id="change" class="source">
         <span class="auto-style1">视频标题：</span><asp:TextBox ID="myTitle" runat="server" Height="23px" Width="541px"></asp:TextBox>
         <span class="auto-style1">
         <br />类别：<asp:DropDownList ID="ClassList" runat="server" Height="26px" style="margin-bottom: 0px; font-size: large;" Width="112px">
         </asp:DropDownList>
         </span>
         <br />
         <textarea id="ue" name="ue" cols="20" rows="2" style="height:279px; width:1057px" runat="server"></textarea>
       <script>
           var editor = new baidu.editor.ui.Editor({
           });
           editor.render("ue");
        </script>
         <asp:Button ID="Select" Height="27px" runat="server" Text="发表" OnClick="Select_Click" style="font-size: medium" Width="71px" />
   
        </div>
    </div>
    </form>
</body>
</html>
