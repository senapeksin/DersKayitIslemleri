using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DersKayitIslemleri
{
    public partial class TestPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Label1.Text = "Hoşgeldiniz.. " + user.UserName;
            if (IsPostBack) return;
            var user = Master.GetLoginUser();

        }
    }
}