using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Net.Mail;
using System.Web;

namespace DersKayitIslemleri
{
    public class General
    {

        public void  mailSender(string toList,string ccList,string Subject,string body){
            try
            {
                
                MailMessage mail = new MailMessage();
                mail.From = new MailAddress("senapksnn16@hotmail.com");
                mail.IsBodyHtml = true;

                SmtpClient SmtpServer = new SmtpClient("smtp.office365.com");
                SmtpServer.Port = 587;
                SmtpServer.EnableSsl = true;
                SmtpServer.UseDefaultCredentials = true;
               
                    SmtpServer.Credentials = new System.Net.NetworkCredential("senapksnn16@hotmail.com","Sp.001086");

                var to = toList.Split(';');
                var cc = ccList.Split(';');

                foreach (string toItem in to )
                {
                    if(toItem != "") mail.To.Add(toItem);
                }
                foreach (string ccItem in cc)
                {
                    if (ccItem != "")  mail.CC.Add(ccItem);
                }

               
                mail.Subject = Subject;
                mail.Body = body;



                SmtpServer.Send(mail);
                SmtpServer.Dispose();

              
            }
            catch (Exception ex)
            {
               
            }

        

    }


}
   
}