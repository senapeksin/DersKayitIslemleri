<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CreateRole.aspx.cs" Inherits="DersKayitIslemleri.CreateRole" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <b>Create a New Role</b>
        <asp:TextBox ID="RoleName" runat="server"></asp:TextBox>
        <br />
        <asp:Button ID="CreateRoleButton" runat="server" Text="Rol Olustur" OnClick="CreateRoleButton_Click" style="height: 26px" />
      
    
    </div>
    </form>
</body>
</html>
