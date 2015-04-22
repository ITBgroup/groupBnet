<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="video1.aspx.cs" Inherits="admin_user" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>主站视频</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <div id="wrapper">
			<div id="minwidth">
				<div id="holder">
					<div id="menu">
						<div id="left"></div>
						<div id="right"></div>
						<ul>
							<li>
								<a href="index.aspx"><span>主页</span></a>
							</li>
							<li>
								<a href="article.aspx"><span>文章</span></a>
							</li>                       							
                            <li>
								<a href="video1.aspx" class="selected"><span>主站视频</span></a>
							</li>
                            <li>
                                <a href="video2.aspx"><span>视频站视频</span></a>
                            </li>
						</ul>
						<div class="clear"></div>
					</div>

						<div id="body_footer">
						<div id="bottom_left"><div id="bottom_right"></div></div>
					</div>
				</div>				
			</div>
		</div>
    <%--以上内容为顶部标签显示--%>
</asp:Content>

