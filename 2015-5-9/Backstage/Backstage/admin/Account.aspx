<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Account.aspx.cs" Inherits="Backstage.admin.Account" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        帐号：<asp:TextBox ID="AccountText" runat="server"></asp:TextBox>
        <br />
        <br />
        密码：<asp:TextBox ID="PasswordText" runat="server"></asp:TextBox>
    </div>
        <br />
        名字：<asp:TextBox ID="NameText" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Add" runat="server" Text="添加" OnClick="Add_Click" />
    </form>
</body>
</html>
