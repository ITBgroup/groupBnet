<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeBehind="ArticleClass.aspx.cs" Inherits="Backstage.admin.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <%--添加分类--%>
    <div id="add" style="float: none; width: 100%; height: 30px;">
        <div id="block" clip: rect(auto, auto, auto, auto); style="float: left; width: 20%; height: 26px;">
            <asp:Label ID="Label2" runat="server" Text="添加分类" style="font-size: large"></asp:Label>
        </div>
     <div style="float: left; width: 30%;">
        <asp:Label ID="Label1" runat="server" Text="类名：" style="font-size: large"></asp:Label>
        <asp:TextBox ID="CName" runat="server" MaxLength="20" Height="17px"></asp:TextBox>
        </div>
     <div style="float: left; width: 25%;">
        <asp:DropDownList ID="AClass" runat="server" Height="24px">
            <asp:ListItem Text="请选择一个专题" Value="0" Selected="True"></asp:ListItem>
            <asp:ListItem Text="黑客" Value="1"></asp:ListItem>
            <asp:ListItem Text="极客" Value="2"></asp:ListItem>
            <asp:ListItem Text="特色" Value="3"></asp:ListItem>
        </asp:DropDownList>
    </div>
        <div style="float: left">
            <asp:Button ID="AddClass" runat="server" Text="添加" OnClick="AddClass_Click" />
        </div>
   </div>
    <hr/>
    <%--分类目录以及删除--%>
    <div id="body" style="height: 93%; width: 100%">
        <div id="class1" style="height: auto; width: inherit;">
            <asp:Label ID="Label3" runat="server" Text="黑客" Font-Size="X-Large"></asp:Label>
            <asp:Repeater ID="arclass1" runat="server" OnItemCommand="delete">
                <HeaderTemplate><br /></HeaderTemplate>
                <ItemTemplate>
                    <tr>
                        <td>
                     <%#Eval("Name")%>
                    <asp:ImageButton ID="CDelete" runat="server" CommandName="delete" CommandArgument='<%#Eval("ID")%>' OnClientClick='return confirm("确认删除?")'  />
                            <br />
                        </td>
                    </tr>
                </ItemTemplate>
                <FooterTemplate><br /><br /></FooterTemplate>
            </asp:Repeater>
        </div>
        <div id="class2">
            <asp:Label ID="Label4" runat="server" Text="极客" Font-Size="X-Large"></asp:Label>
            <asp:Repeater ID="arclass2" runat="server" OnItemCommand="delete">
                <HeaderTemplate><br /></HeaderTemplate>
                <ItemTemplate>
                    <tr>
                        <td>
                    <%#Eval("Name")%>
                    <asp:ImageButton ID="CDelete" runat="server" CommandName="delete" CommandArgument='<%#Eval("ID")%>' OnClientClick='return confirm("确认删除?")'  />
                            <br />
                        </td>
                    </tr>
                </ItemTemplate>
                <FooterTemplate><br /><br /></FooterTemplate>
            </asp:Repeater>
        </div>
        <div id="class3">       
            <asp:Label ID="Label5" runat="server" Text="特色" Font-Size="X-Large"></asp:Label>           
          <asp:Repeater ID="arclass3" runat="server" OnItemCommand="delete">
                <HeaderTemplate><br /></HeaderTemplate>
                <ItemTemplate>
                    <tr>
                        <td>
                    <%#Eval("Name")%>
                    <asp:ImageButton ID="CDelete" runat="server" CommandName="delete" CommandArgument='<%#Eval("ID")%>' OnClientClick='return confirm("确认删除?")'  />
                            <br />
                        </td>
                    </tr>
                </ItemTemplate>
                <FooterTemplate><br /><br /></FooterTemplate>
            </asp:Repeater>
        </div>
    </div>
</asp:Content>
