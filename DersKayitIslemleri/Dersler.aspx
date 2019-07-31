<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Dersler.aspx.cs" Inherits="DersKayitIslemleri.Dersller" %>

<%@ MasterType TypeName="DersKayitIslemleri.Site1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="content" runat="server">
    <link href="Scripts/StyleSheet1.css" rel="stylesheet" />

    <script type="text/javascript">
        function openModal() {
            $('#myModal').modal('show');
        }
    </script>

    <h1>Ders Kayıt Durumu</h1>
    <table class="blueTable">
        <tr class="padding=0">
            <th class="padding=0 ">Ders ID</th>
            <th class="padding=0">Ders Adı</th>
            <th class="padding=0">Sınıf</th>
            <th class="padding=0">Ders Kontenjanı</th>
            <th class="padding=0">Dersi veren Akademisyen</th>
            <th class="padding=0">İşlem</th>
        </tr>
        <tbody>
            <asp:Repeater ID="DerslerRepeater" runat="server">
                <ItemTemplate>
                    <tr>

                        <td><%#Eval("ID") %></td>
                        <td><%#Eval("DersAd") %></td>
                        <td><%#Eval("Sinif") %></td>
                        <td><%#Eval("DersMaksKont") %></td>
                        <td><%#Eval("Akademisyen") %></td>


                        <td>
                            <asp:Button ID="Button1" CssClass="btn btn-success  " CommandArgument='<%#Eval("ID")%>' runat="server" OnClick="Button1_Click" Text="DERS EKLE" />
                        </td>

                    </tr>
                </ItemTemplate>
            </asp:Repeater>
        </tbody>
    </table>

    <!--sayfa bölme start -->


    <!--sayfa bölme end -->

    <!--seçilen dersler kısmı -->

    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="dsEklenenDersler">
        <HeaderTemplate>
            <table class="blueTable">
                <tr>
                    <td colspan="5" style="text-align: center; font-size: 18px; font-weight: bold">Seçilen Dersler</td>
                </tr>
                <tr>
                    <th>ID</th>
                    <th>Ders Adı</th>
                    <th>Alan Öğrenciler</th>
                    <th>Akademisyen</th>

                    <th>DURUM</th>
                </tr>
        </HeaderTemplate>
        <ItemTemplate>
            <tr>

                <td><%#Eval("ID") %></td>
                <td><%#Eval("dersad") %></td>
                <td><%#Eval("adsoyad") %></td>
                <td><%#Eval("akademisyen") %></td>

                <td>
                    <asp:HyperLink NavigateUrl='<%# "~/DersDurum.aspx?OGRID=" + Eval("DersId")%>' ID="HyperLink2" CssClass="btn btn-success" runat="server">DERS SEÇILDI</asp:HyperLink>
                    <asp:Button ID="btnSil" OnClick="btnSil_Click" CssClass="btn btn-danger" CommandArgument='<%#Eval("DERSID")%>' runat="server" Text="DERSI ÇIKAR" />
                </td>
            </tr>
        </ItemTemplate>
        <FooterTemplate>
            </table>
        </FooterTemplate>
    </asp:Repeater>
    <asp:LinqDataSource ID="dsEklenenDersler" runat="server" OnSelecting="dsEklenenDersler_Selecting"></asp:LinqDataSource>

    <!--modal -->
    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="myModalLabel"></h4>
                </div>
                <div class="modal-body">
                    <asp:Label ID="lblUyarı" runat="server"></asp:Label>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Kapat</button>
                    <div class="spinner-grow" role="status">
                        <span class="sr-only">Loading...</span>
                    </div>
                </div>
            </div>
        </div>

    </div>

</asp:Content>




