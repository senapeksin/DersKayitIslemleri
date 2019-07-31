using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DersKayitIslemleri
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) return;
            if (Session["_AdSoyad"] != null)
            {
                sitelabel.Text = Session["_AdSoyad"].ToString();     //kullanıcı null değilse adını yazdır
            }
            else
            {
                var user = GetLoginUser();
                if (user!=null)
                {
                    Session["_AdSoyad"] = user.aspnet_User.UserName;
                    sitelabel.Text = user.aspnet_User.UserName;
                }

            }
        }
        public aspnet_Membership GetLoginUser()
        {
            var member = Membership.GetUser();
            if (member == null || !member.IsApproved) Response.Redirect("Login.aspx");
            var connection = new ModelDataContext();
            var a = connection.aspnet_Memberships.First(d => d.aspnet_User.UserName == member.UserName);
            return a; //boş ise login git 

        }




    }

}



