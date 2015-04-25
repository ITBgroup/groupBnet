<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="ArticleClass.aspx.cs" Inherits="admin_ArticleClass" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Menu ID="Menu1" runat="server">
        <Items>
            <asp:MenuItem Text="黑客" Value="hacker">
                
            </asp:MenuItem>
            <asp:MenuItem Text="极客" Value="geek
">
                <asp:MenuItem Text="萨比" Value="he2"></asp:MenuItem>
            </asp:MenuItem>
            <asp:MenuItem Text="特色" Value="feature">
                <asp:MenuItem Text="新建项" Value="新建项"></asp:MenuItem>
            </asp:MenuItem>
        </Items>

    </asp:Menu>
    </asp:Content>

