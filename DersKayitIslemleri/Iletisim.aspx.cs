﻿using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DersKayitIslemleri
{
    public partial class İletişim : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) return;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            //try
            //{
            //    lblError.Text = "";
            //    MailMessage mail = new MailMessage();
            //    mail.From = new MailAddress(txtFromMail.Text);
            //    mail.To.Add(txtToMail.Text);
            //    mail.Subject = txtSubject.Text;
            //    mail.Body = txtİcerik.Text;
            //    mail.IsBodyHtml = true;

            //    SmtpClient SmtpServer = new SmtpClient(txtSmtp.Text);
            //    SmtpServer.Port = int.Parse(txtPort.Text);
            //    SmtpServer.EnableSsl = dd2.SelectedValue == "true" ? true : false;
            //    SmtpServer.UseDefaultCredentials = dd1.SelectedValue == "true" ? true : false;
            //    if (dd1.SelectedValue == "true")
            //        SmtpServer.Credentials = new System.Net.NetworkCredential(txtCredUser.Text, txtSifre.Text);
            //    SmtpServer.Send(mail);
            //    SmtpServer.Dispose();

            //    lblError.ForeColor = Color.Green;
            //    lblError.Text = "Mail Başarıyla Gönderildi.";
            //}
            //catch (Exception ex)
            //{
            //    lblError.ForeColor = Color.Orange;
            //    lblError.Text = ex.Message;
            //}

        }

        protected void btnBrowser_Click(object sender, EventArgs e)
        {
            //    if (fileUp.HasFile)
            //        try
            //        {
            //            if (fileUp.PostedFile.ContentType == "image/jpeg")
            //            {
            //                if (fileUp.PostedFile.ContentLength < 102400)
            //                {
            //                    fileUp.SaveAs(Server.MapPath("~/App_Data/") + fileUp.FileName);
            //                    lblError.Text = "Dosya Adı: " +
            //                        fileUp.PostedFile.FileName +
            //                        "<br />Dosya Boyutu: " +
            //                        fileUp.PostedFile.ContentLength +
            //                        "<br />Dosya Türü: " +
            //                        fileUp.PostedFile.ContentType;
            //                }
            //                else
            //                {
            //                    lblError.Text = "Maksimum boyut 100 KB olmalı.";
            //                }
            //            }
            //            else
            //            {
            //                lblError.Text = "Resim dosyası seçin.";
            //            }

            //        }
            //        catch (Exception ex)
            //        {
            //            lblError.Text = "Hata Oluştu: " + ex.Message.ToString();
            //        }
            //    else
            //    {
            //        lblError.Text = "Dosya Seçin ve GÖNDER Butonuna Tıklayın.";
            //    }
            //}
        }
    }
}

    
