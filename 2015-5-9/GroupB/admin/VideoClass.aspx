<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="VideoClass.aspx.cs" Inherits="admin_VideoClass1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <%--添加分类--%>
    <div id="add" style="float: none; width: 100%; height: 30px;">
        <div id="block" clip: rect(auto, auto, auto, auto); style="float: left; width: 20%;">
            <asp:Label ID="Label2" runat="server" Text="添加分类"></asp:Label>
        </div>
     <div style="float: left; width: 30%;">
        <asp:Label ID="Label1" runat="server" Text="类名："></asp:Label>
        <asp:TextBox ID="CName" runat="server" MaxLength="20"></asp:TextBox>
        </div>
     <div style="float: left; width: 25%;">
        <asp:DropDownList ID="AClass" runat="server">
            <asp:ListItem Text="请选择一个专题" Value="0" Selected="True"></asp:ListItem>
            <asp:ListItem Text="黑客揭密" Value="1"></asp:ListItem>
            <asp:ListItem Text="安全科普" Value="2"></asp:ListItem>
            <asp:ListItem Text="人物资讯" Value="3"></asp:ListItem>
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
            <asp:Label ID="Label3" runat="server" Text="黑客揭密" Font-Size="X-Large"></asp:Label>
            <asp:Repeater ID="arclass1" runat="server" OnItemCommand="delete">
                <HeaderTemplate><br /></HeaderTemplate>
                <ItemTemplate>
                    <tr>
                        <td>
                     <%#Eval("name")%>
                    <asp:ImageButton ID="CDelete" runat="server" CommandName="delete" Text="删除" CommandArgument='<%#Eval("id")%>' OnClientClick='return confirm("确认删除?")'  />
                            <br />
                        </td>
                    </tr>
                </ItemTemplate>
                <FooterTemplate><br /><br /></FooterTemplate>
            </asp:Repeater>
        </div>
        <div id="class2">
            <asp:Label ID="Label4" runat="server" Text="安全科普" Font-Size="X-Large"></asp:Label>
            <asp:Repeater ID="arclass2" runat="server" OnItemCommand="delete">
                <HeaderTemplate><br /></HeaderTemplate>
                <ItemTemplate>
                    <tr>
                        <td>
                    <%#Eval("name")%>
                    <asp:ImageButton ID="CDelete" runat="server" CommandName="delete" Text="删除" CommandArgument='<%#Eval("id")%>' OnClientClick='return confirm("确认删除?")'  />
                            <br />
                        </td>
                    </tr>
                </ItemTemplate>
                <FooterTemplate><br /><br /></FooterTemplate>
            </asp:Repeater>
        </div>
        <div id="class3">       
            <asp:Label ID="Label5" runat="server" Text="人物资讯" Font-Size="X-Large"></asp:Label>           
          <asp:Repeater ID="arclass3" runat="server" OnItemCommand="delete">
                <HeaderTemplate><br /></HeaderTemplate>
                <ItemTemplate>
                    <tr>
                        <td>
                    <%#Eval("name")%>
                    <asp:ImageButton ID="CDelete" runat="server" CommandName="delete" Text="删除" CommandArgument='<%#Eval("id")%>' OnClientClick='return confirm("确认删除?")'  />
                            <br />
                        </td>
                    </tr>
                </ItemTemplate>
                <FooterTemplate><br /><br /></FooterTemplate>
            </asp:Repeater>
        </div>
    </div>
</asp:Content>

