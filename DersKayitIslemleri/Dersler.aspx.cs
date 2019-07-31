using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace DersKayitIslemleri
{
    public partial class Dersller : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) return;
            GetData();
           
        }
        ModelDataContext conn = new ModelDataContext();
        public void GetData()
        {
            var urunler = from x in conn.Derslers
                          select new
                          {
                              x.ID,
                              x.DersAd,
                              x.Sinif,
                              x.DersMaksKont,
                              Akademisyen = GetDersVerenAkademisyenler(x.ID)
                          };
            DerslerRepeater.DataSource = urunler;
            DerslerRepeater.DataBind();
        }

        public string GetDersVerenAkademisyenler(int dersid)
        {
            var dataAkademisyenDdersleri = conn.AkademisyenDersleris.Where(d => d.DersId == dersid);

            string akademisyenler = "";

            foreach (var akademisyen in dataAkademisyenDdersleri)
            {
                akademisyenler = akademisyenler + akademisyen.Akademisyenler.Ad + " " + akademisyen.Akademisyenler.Soyad + ";";
            }

            return akademisyenler;

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            try
            {

                var ID = ((Button)sender).CommandArgument;
                var connection = new ModelDataContext();
                var data = connection.Derslers.Where(d => d.ID == int.Parse(ID));

                if (data.Any())    //DERS DATASI VAR MI?
                {
                    var dataeklenendersler = connection.EklenenDerslerTest5s.Where(d => d.DersId == int.Parse(ID));   //DERS DATASI VAR,O DERSE  AİT EKLEME YAPILMIS MI?
                    if (!dataeklenendersler.Any())   //boşsa

                    {
                        var itemekle = new EklenenDerslerTest5();
                        itemekle.DersId = data.First().ID;
                        itemekle.UserId = Master.GetLoginUser().UserId;

                        connection.EklenenDerslerTest5s.InsertOnSubmit(itemekle);

                        connection.SubmitChanges();
                        //başarılı ise
                        lblUyarı.Text = "Ders Ekleme Başarılı";
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "openModal();", true);
                      
                        Repeater1.DataBind();

                    }
                    else
                    {
                        //başarısız ise
                        lblUyarı.Text = "bu dersi zaten seçtiniz";
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "openModal();", true);
                    }

                }
                else   //DERS DATASI YOKSA
                {
                    lblUyarı.Text = "böyle bir ders yok";
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "openModal();", true);
                }


            }
            catch (Exception ex)
            {
                lblUyarı.Text = "Hata!" + ex.Message;
            }

        }

        protected void btnSil_Click(object sender, EventArgs e)
        {
            try
            {

                var ID = ((Button)sender).CommandArgument;
                var connection = new ModelDataContext();
                var data = connection.EklenenDerslerTest5s.First(d => d.DersId == int.Parse(ID));
                connection.EklenenDerslerTest5s.DeleteOnSubmit(data);
                connection.SubmitChanges();

                //başarılı
                lblUyarı.Text = "Ders Silme Başarılı";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "openModal();", true);
                Repeater1.DataBind();

            }
            catch (Exception ex)
            {
                lblUyarı.Text = "Hata!" + ex.Message;
            }
        }

        protected void dsEklenenDersler_Selecting(object sender, LinqDataSourceSelectEventArgs e)
        {

            var data = from d in conn.EklenenDerslerTest5s
                       select new
                       {
                           d.ID,
                           d.DersId,
                           dersad = d.Dersler.DersAd,
                           adsoyad = d.aspnet_Membership.aspnet_User.UserName,
                           akademisyen = GetDersVerenAkademisyenler(d.DersId)

                       };
            

            e.Result = data;

            Repeater1.Visible = data.Any();
        }

        
    }
}


