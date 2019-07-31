<%@ Page Title="Mail Gönder" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AkademisyenMail.aspx.cs" Inherits="DersKayitIslemleri.AkademisyenMail" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="content" runat="server">
  <link href="Content/StyleSheet1.css" rel="stylesheet" />
    

    <div class="col-md-6">
    <div class="row" id="Contact">
        <h1>iletişim</h1>
         <div class="col-md-6">
        <div class="row">
            <div class="col-md-3  col-xs-3 text-right">Smtp Mail:</div>
            <asp:TextBox ID="txtSmtp" CssClass="col-md-7 col-xs-12" runat="server"></asp:TextBox>
        </div>
        <div class="row">
            <div class="col-md-3 col-xs-3 text-right">Kime:</div>
            <asp:TextBox ID="txtToMail" CssClass="col-md-7 col-xs-12" runat="server"></asp:TextBox>
        </div>
       
        <div class="row">
            <div class="col-md-3 col-xs-3 text-right">İçerik :</div>
            <asp:TextBox ID="txtİcerik" CssClass="col-md-7 col-xs-12" runat="server"></asp:TextBox>
        </div>
        <div class="row">
            <div class="col-md-3 col-xs-3 text-right">Kimlik Bilgileri:</div>
            <asp:DropDownList ID="dd1" runat="server">
                <asp:ListItem>Doğru</asp:ListItem>
                <asp:ListItem>Yanlış</asp:ListItem>
            </asp:DropDownList>
        </div>
        <div class="row">
            <div class="col-md-3 col-xs-3 text-right">Şifre  :</div>
            <asp:TextBox ID="txtSifre" CssClass="col-md-7 col-xs-12" runat="server" TextMode="Password"></asp:TextBox>
        </div>
        <div class="row">
            <div class="col-md-3 col-xs-3 text-right">Mail Adres  :</div>
            <asp:TextBox ID="txtFromMail" CssClass="col-md-7 col-xs-12" runat="server"></asp:TextBox>
        </div>
        <div class="row">
            <div class="col-md-3 col-xs-12 text-right">Konu  :</div>
            <asp:TextBox ID="txtSubject" CssClass="col-md-7 col-xs-12" runat="server"></asp:TextBox>
        </div>
        <div class="row">
            <div class="col-md-3 col-xs-3 text-right">SSL :</div>
            <asp:DropDownList ID="dd2" runat="server">
                <asp:ListItem>true</asp:ListItem>
                <asp:ListItem>false</asp:ListItem>
            </asp:DropDownList>
        </div>
        <div class="row">
            <div class="col-md-3 col-xs-3 text-right">Port  :</div>
            <asp:TextBox ID="txtPort" CssClass="col-md-7 col-xs-12" runat="server"></asp:TextBox>
        </div>
        <div class="row">
            <div class="col-md-3 col-xs-3 text-right">Kullanıcı :</div>
            <asp:TextBox ID="txtCredUser" CssClass="col-md-7 col-xs-12" runat="server"></asp:TextBox>
        </div>
        <div>
            <div class="row">
                <div class="col-md-3 col-xs-3 text-right"></div>
                <asp:Button ID="Button3" CssClass="btn btn-primary" runat="server" Text="Gönder" OnClick="Button3_Click" />
                <asp:Label ID="lblError" runat="server" Text="Durum"></asp:Label>
            </div>
        </div>
        </div> 
    </div>
</asp:Content>
