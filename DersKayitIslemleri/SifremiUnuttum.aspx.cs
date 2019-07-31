using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Text;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DersKayitIslemleri
{
    public partial class SifremiUnuttum : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {


            try
            {
                var general = new General();

                var conn = new ModelDataContext();
                var item = conn.aspnet_Users.Where(a => a.UserName == (txtUserName.Text));
                if (item.Count() > 0)
                {
                    var member = conn.aspnet_Memberships.First(a => a.UserId == item.First().UserId);
                    var mail = member.Email;
                    general.mailSender(mail, "", "test", "konu");
                }

            }
            catch (Exception ex)
            {
                lblKullanıcı.Text = "Bir Hatayla Karşılaşıldı <br/>" + ex.Message;
            }
        }

    }
}