using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Web.Security;
using System.Data.OleDb;
using System.Configuration;




namespace DersKayitIslemleri
{
    public partial class Login1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (Session["kullanici"] != null)
            //{
            //    Response.Redirect("TLogin.aspx");
            //}
            //else
            //{
            //    Response.Redirect("TestPage.aspx");
            //} 

        }


        protected void btnGiris_ServerClick(object sender, EventArgs e)
        {

            try
            {
                if (UsernameTextbox.Value == "" || PasswordTextbox.Value == "")
                {
                    throw new Exception("Kullanıcı Adı veya Şifre Boş Geçilemez!");
                }
                if (!Membership.ValidateUser(UsernameTextbox.Value, PasswordTextbox.Value))
                {
                    throw new Exception("Hatalı Kullanıcı Adı veya Şifre Girdiniz.!");
                }
                var user = Membership.GetUser(UsernameTextbox.Value);
                Session["_AdSoyad"] = user.UserName;
                FormsAuthentication.SetAuthCookie(UsernameTextbox.Value, true);
                Response.Redirect("~/TestPage.aspx");
            }
            catch (Exception ex)
            {


            }
            if (rememberme.Checked == true)
            {
                Response.Cookies["UserId"].Value = UsernameTextbox.Value;
                Response.Cookies["Password"].Value =PasswordTextbox.Value;
                Response.Cookies["UserId"].Expires = DateTime.Now.AddDays(15);
                Response.Cookies["Password"].Expires = DateTime.Now.AddDays(15);
            }

            else

            {

                Response.Cookies["UserId"].Expires = DateTime.Now.AddDays(-1);

                Response.Cookies["Password"].Expires = DateTime.Now.AddDays(-1);

            }
          
            Response.Redirect("Default.aspx");

        }

        

}

        }

