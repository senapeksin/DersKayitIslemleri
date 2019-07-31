<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListRole.aspx.cs" Inherits="DersKayitIslemleri.Role.ManageRoles" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>

    <form id="form1" runat="server">
    <div>
      <asp:GridView ID="RoleList" runat="server" AutoGenerateColumns="False">
 <Columns>
 <asp:CommandField DeleteText="Delete Role" ShowDeleteButton="True"/>
 <asp:TemplateField HeaderText="Role">
 <ItemTemplate>
 <asp:Label runat="server" ID="RoleNameLabel" Text='<%# Container.DataItem %>' />
 </ItemTemplate>
 </asp:TemplateField>
 </Columns>
</asp:GridView>
    </div>
    </form>
</body>
</html>
