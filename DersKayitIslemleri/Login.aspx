<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="DersKayitIslemleri.Login1" %>

<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<link href="Content/site.css" rel="stylesheet" />
<link href="Scripts/site1.css" rel="stylesheet" />
<!DOCTYPE html>

<html>

<head>
    <title>Login Page</title>
   

    <!--Bootsrap 4 CDN-->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">

    <!--Fontawesome CDN-->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css">

    <!--Custom styles-->
    <link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="d-flex justify-content-center h-100">
                <div class="card">
                    <div class="card-header">
                        <h3>Giriş Yap</h3>
                        <div class="d-flex justify-content-end social_icon">
                            <span><i class="fab fa-facebook-square"></i></span>
                            <span><i class="fab fa-google-plus-square"></i></span>
                            <span><i class="fab fa-twitter-square"></i></span>
                        </div>
                    </div>
                    <div class="card-body">
                        <div class="input-group form-group">
                            <div class="input-group-prepend">
                                <span class="input-group-text"><i class="fas fa-user"></i></span>
                            </div>
                            <input type="text" id="UsernameTextbox" runat="server" class="form-control" placeholder="Kullanıcı Adı">
                        </div>
                        <div class="input-group form-group">
                            <div class="input-group-prepend">
                                <span class="input-group-text"><i class="fas fa-key"></i></span>
                            </div>
                            <input type="password" id="PasswordTextbox" runat="server" class="form-control" placeholder="Şifre">
                        </div>
                        <div class="row align-items-center remember">
                            <asp:CheckBox ID ="rememberme" runat="server"  Text ="remember Password" /><br />
				
                        </div>
                        <div class="form-group">
                            <input type="submit" id="btnGiris" runat="server" onserverclick="btnGiris_ServerClick" value="Giriş" class="btn float-right login_btn">
                            &nbsp; 
                        </div>
                    </div>
                    <div class="card-footer">
                        <div class="d-flex justify-content-center links">
                            Don't have an account?<a href="createyeni.aspx">Yeni Kullanıcı</a>
                        </div>
                        <div class="d-flex justify-content-center">
                            <a href="SifremiUnuttum.Aspx">Şifremi unuttum</a>
                            
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
