<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Ogrenci.aspx.cs" Inherits="DersKayitIslemleri.Ogrenci" %>

<asp:Content ID="Content1" ContentPlaceHolderID="content" runat="server">
    <link href="Scripts/StyleSheet1.css" rel="stylesheet" />
    <div class="row" id="akademisyen">
        <h1>Bilgisayar Mühendisliği Akademisyenler</h1>
        <table class="table table-bordered table-hover ">
            <tr>
                <th>Öğrenci ID</th>
                <th>Öğrenci Adı Soyadı</th>
               
                <th>Akademisyen Maili</th>
                <th>İşlemler</th>
            </tr>
            <tbody>
                <asp:Repeater ID="AkademisyenRepeater" runat="server">
                    <ItemTemplate>
                        <tr>
                            <th><%# (Container.ItemIndex +1).ToString() %></th>
                            <td><%#Eval("Ad") %></td>
                           
                            <td><%#Eval("Mail") %></td>


                             <td>
                                <asp:HyperLink NavigateUrl='<%# "~/OgrenciMail.aspx?OGRID=" + Eval("UserId")%>' ID="HyperLink1" CssClass="btn btn-success" runat="server">Mail Gönder</asp:HyperLink>
                            </td>
                           
                        </tr>
                    </ItemTemplate>
                </asp:Repeater>
            </tbody>
        </table>
    </div>




</asp:Content>
