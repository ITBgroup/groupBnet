<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeBehind="Article.aspx.cs" Inherits="Backstage.admin.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <%--搜索添加区域--%>
        <asp:Label ID="Label1" runat="server" Text="文章名："></asp:Label>
    <asp:TextBox ID="SName" runat="server" ></asp:TextBox>
    <asp:Label ID="Label2" runat="server" Text="作者："></asp:Label>
    <asp:TextBox ID="SAuthor" runat="server"  ></asp:TextBox>
    <asp:DropDownList ID="AClass" runat="server" OnSelectedIndexChanged="AClass_SelectedIndexChanged">
    </asp:DropDownList>
    <asp:Button ID="Search" runat="server" Text="搜索" OnClick="Search_Click" />
        <asp:Button ID="Add" runat="server" OnClick="Add_Click" Text="添加文章" />
        <hr />
     <%#Eval("Title")%>
        <asp:Repeater ID="Article" runat="server" OnItemCommand="Article_ItemCommand">
            <HeaderTemplate></HeaderTemplate>
            <ItemTemplate>
                <td>标题：<%#Eval("Title")%>&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; </td>              
                <td>作者：<%#Eval("Author")%>&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; </td>  
                <td>添加时间:<%#Eval("Addtime")%>&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; </td>
                <td><asp:Button ID="deletebutton" CommandName="delete" CommandArgument='<%#Eval("ID")%>' runat="server" Text="删除" /></td>
                <br /><br />
            </ItemTemplate>
            <FooterTemplate></FooterTemplate>
        </asp:Repeater>
    <asp:Button ID="LastPage" runat="server" Text="上一页" Visible="true" OnClick="LastPage_Click"/>
    <asp:DropDownList ID="PageList" runat="server" onclick="PageList_SelectedIndexChanged" OnSelectedIndexChanged="PageList_SelectedIndexChanged1" >
    </asp:DropDownList>
    <asp:Button ID="NextPage" runat="server" Text="下一页" Visible="true" OnClick="NextPage_Click"/>

</asp:Content>
