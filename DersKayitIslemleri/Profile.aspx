<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="DersKayitIslemleri.Profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="content" runat="server">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <div class="card">
        <img src="image/team2.jpg" alt="John" style="width: 100%">
        <h1>
            <asp:Label ID="ProfilLabel" runat="server" Text="Label"></asp:Label></h1>
        <p class="title">Bilgisayar Mühendisliği 3.Sınıf</p>
        <p>Kütahya Dumlupınar Üniversitesi</p>
      
        <p>
            <button>Ayarlar</button>
        </p>
    </div>
      <style>
.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  max-width: 300px;
  margin: auto;
  text-align: center;
  font-family: arial;
}

.title {
  color: grey;
  font-size: 18px;
}

button {
  border: none;
  outline: 0;
  display: inline-block;
  padding: 8px;
  color: white;
  background-color: #000;
  text-align: center;
  cursor: pointer;
  width: 100%;
  font-size: 18px;
}

a {
  text-decoration: none;
  font-size:15px;
  color: black;
}

button:hover, a:hover {
  opacity: 0.7;
}
</style>

</asp:Content>
