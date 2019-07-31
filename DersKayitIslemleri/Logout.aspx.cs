using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DersKayitIslemleri
{
    public partial class Logout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            FormsAuthentication.SignOut();
            Roles.DeleteCookie();
            Session.Clear();
            Response.Redirect("Login.aspx");
        }



        protected void LoginStatus1_LoggedOut(object sender, EventArgs e)
        {
            
        }
    }
}