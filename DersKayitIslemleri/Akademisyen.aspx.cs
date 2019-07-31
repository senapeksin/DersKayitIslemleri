using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DersKayitIslemleri
{
    public partial class Akademisyen : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) return;
            GetData();

        }


        ModelDataContext data = new ModelDataContext();
        public void GetData()
        {
            var urunler = from x in data.Akademisyenlers
                          select new
                          {
                              x.ID,
                              x.Ad,
                              x.Soyad,
                              x.Mail

                          };

            AkademisyenRepeater.DataSource = urunler;
            AkademisyenRepeater.DataBind();
        }
    }
}
