<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Akademisyen.aspx.cs" Inherits="DersKayitIslemleri.Akademisyen" %>

<asp:Content ID="Content1" ContentPlaceHolderID="content" runat="server">
    <link href="Scripts/StyleSheet1.css" rel="stylesheet" />
    <div class="row" id="akademisyen">
        <h1>Bilgisayar Mühendisliği Akademisyenler</h1>
        <table class="table table-bordered table-hover ">
            <tr>
                <th>Akademisyen ID</th>
                <th>Akademisyen Adı</th>
                <th>Akademisyen Soyadı</th>
                <th>Akademisyen Maili</th>
                <th>İşlemler</th>
            </tr>
            <tbody>
                <asp:Repeater ID="AkademisyenRepeater" runat="server">
                    <ItemTemplate>
                        <tr>
                            <th><%# (Container.ItemIndex +1).ToString() %></th>
                            <td><%#Eval("Ad") %></td>
                             <td><%#Eval("Soyad") %></td>
                            <td><%#Eval("Mail") %></td>
                           

                            </td>
                            <td>
                                <asp:HyperLink NavigateUrl='<%# "~/AkademisyenMail.aspx?OGRID=" + Eval("ID")%>' ID="HyperLink1" CssClass="btn btn-success" runat="server">Mail Gönder</asp:HyperLink>
                            </td>
                        </tr>
                    </ItemTemplate>
                </asp:Repeater>
            </tbody>
        </table>
    </div>

</asp:Content>
