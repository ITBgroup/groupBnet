<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="Article.aspx.cs" Inherits="admin_Article" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <%--搜索添加区域--%>
        <asp:Label ID="Label1" runat="server" Text="文章名："></asp:Label>
    <asp:TextBox ID="SName" runat="server" ></asp:TextBox>
    <asp:Label ID="Label2" runat="server" Text="作者："></asp:Label>
    <asp:TextBox ID="SAuthor" runat="server"  ></asp:TextBox>
    <asp:DropDownList ID="AClass" runat="server">
    </asp:DropDownList>
    <asp:Button ID="Search" runat="server" Text="搜索" OnClick="Search_Click" />
        <hr />
    <%--搜索添加区域--%>
        <asp:Repeater ID="Article" runat="server">
            <HeaderTemplate></HeaderTemplate>
            <ItemTemplate>              
                <asp:LinkButton ID="LinkButton1" runat="server" Text='<%#Eval("title")%>'> </asp:LinkButton> <br />   作者：<%#Eval("author")%>添加时间:<%#Eval("addtime")%><asp:Button ID="deletebutton" CommandName="delete" CommandArgument='<%#Eval("id")%>' runat="server" Text="删除" /> <br /><br />
            </ItemTemplate>
            <FooterTemplate></FooterTemplate>
        </asp:Repeater>
    <asp:Button ID="LastPage" runat="server" Text="上一页" Visible="true" OnClick="LastPage_Click"/>
    <asp:DropDownList ID="PageList" runat="server" onclick="PageList_SelectedIndexChanged" >
    </asp:DropDownList>
    <asp:Button ID="NextPage" runat="server" Text="下一页" Visible="true" OnClick="NextPage_Click"/>
</asp:Content>

