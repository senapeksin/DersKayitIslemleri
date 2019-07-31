using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DersKayitIslemleri
{
    public partial class Ogrenci : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) return;
            GetData();
        }
        ModelDataContext data = new ModelDataContext();
        public void GetData()
        {
            var urunler = from x in data.aspnet_Memberships
                          select new
                          {
                              x.UserId,
                              Ad = x.aspnet_User.UserName,
                              Mail = x.Email,
                              x.LastLoginDate
                          };

            AkademisyenRepeater.DataSource = urunler;
            AkademisyenRepeater.DataBind();
        }
    }
}