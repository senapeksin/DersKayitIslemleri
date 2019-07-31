<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="DersProgramı.aspx.cs" Inherits="DersKayitIslemleri.DersProgramı" %>

<asp:Content ID="Content1" ContentPlaceHolderID="content" runat="server">

    <link href="Scripts/StyleSheet1.css" rel="stylesheet" />
    <div class="row" id="akademisyen">
        <h1>Bilgisayar Mühendisliği Ders Programı</h1>
        <table class="table table-bordered table-hover ">
            <tr>
                <th class="padding=0 ">Ders ID</th>
                <th class="padding=0">Ders Adı</th>
                <th class="padding=0">Saat</th>
                <th class="padding=0">Dersi Alanlar</th>
            </tr>
            <tbody>
                <asp:Repeater ID="AkademisyenRepeater" runat="server">
                    <ItemTemplate>
                        <tr>
                            <td><%#Eval("ID") %></td>
                            <td><%#Eval("DersAd") %></td>
                            <td><%#Eval("Saat") %></td>
                            <td><%#Eval("UserName") %></td>

                        </tr>
                    </ItemTemplate>
                </asp:Repeater>
            </tbody>
        </table>
    </div>






</asp:Content>
