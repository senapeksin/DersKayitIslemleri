<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="DersKayitIslemleri.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="content" runat="server">
    <link href="Scripts/StyleSheet1.css" rel="stylesheet" />

    <div class="row">
        <div class="col-md-12  col-xs-12">
          </div>

        <div class="col-md-8  col-xs-12">
            <div id="alert" class="alert alert-success width:50%">
                <strong>Bilgilendirme!</strong><br />
                  <a href="Dersler.aspx" class="alert-link">  adet dersiniz bulunmaktadır</a>.   <!-- 2 adet yerine evalla veritabanından gelecek-->
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-4 col-xs-12"></div>
        <div class="alert alert-success width:50%">
            <strong>Aktif Dönem 2018-2019 Yaz Dönemi</strong><br />
            <br />
            <a href="#" class="alert-link">Mühendislik Fak./Bilgisayar Mühendisliği 3.sınıf</a>
        </div>
    </div>
</asp:Content>
