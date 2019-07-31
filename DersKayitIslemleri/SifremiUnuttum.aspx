<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SifremiUnuttum.aspx.cs" Inherits="DersKayitIslemleri.SifremiUnuttum" %>

<!DOCTYPE html>
<link href="Scripts/StyleSheet1.css" rel="stylesheet" />
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Şifre Sıfırlama</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="lblKullanıcı" runat="server" Text="Kullanıcı Adınızı Giriniz."></asp:Label>
    </div>
        <p>
            <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
        </p>
        <p>
        <asp:Button ID="btnReset" runat="server"  Text="Şifremi Mail Adresime Gönder" OnClick="Button1_Click" />
        </p>
    </form>
</body>
</html>
