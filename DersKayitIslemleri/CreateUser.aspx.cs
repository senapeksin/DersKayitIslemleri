using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DersKayitIslemleri
{
    public partial class Login : System.Web.UI.Page
    {


        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            //MembershipCreateStatus createstatus;
            //MembershipUser user = Membership.CreateUser(txtUserName.text, txtPwd.text, txtEmail.text, txtquestion.text, txtanswer.text, true, out createstatus);

            //// membershipuser user = membership.createuser(txtusername.text, txtpwd.text, txtemail.text, txtquestion.text, txtanswer.text, true, out createstatus);
            //switch (createstatus)
            //{
            //    //this case occured whenver user created successfully in database  
            //    case MembershipCreateStatus.Success:
            //        lblresult.forecolor = Color.Green;
            //        lblresult.text = "the user account was successfully created";
            //        txtUserName.text = string.Empty;
            //        txtemail.text = string.Empty;
            //        txtquestion.text = string.Empty;
            //        txtanswer.text = string.Empty;
            //        break;
            //    // this case occured whenver we send duplicate username  
            //    case MembershipCreateStatus.DuplicateUserName:
            //        lblresult.forecolor = Color.Red;
            //        lblresult.text = "the user with the same username already exists!";
            //        break;
            //    //this case occured whenver we give duplicate mail id  
            //    case MembershipCreateStatus.DuplicateEmail:
            //        lblresult.forecolor = Color.Red;
            //        lblresult.text = "the user with the same email address already exists!";
            //        break;
            //    //this case occured whenver we send invalid mail format  
            //    case MembershipCreateStatus.InvalidEmail:
            //        lblresult.forecolor = Color.Red;
            //        lblresult.text = "the email address you provided is invalid.";
            //        break;
            //    //this case occured whenver we send empty data or ınvalid data    
            //    case MembershipCreateStatus.InvalidAnswer:
            //        lblresult.forecolor = Color.Red;
            //        lblresult.text = "the security answer was invalid.";
            //        break;
            //    // this case occured whenver we supplied weak password  
            //    case MembershipCreateStatus.InvalidPassword:
            //        lblresult.forecolor = Color.Red;
            //        lblresult.text = "the password you provided is invalid. ıt must be 7 characters long and have at least 1 special character.";
            //        break;
            //    default:
            //        lblresult.forecolor = Color.red;
            //        lblresult.text = "there was an unknown error; the user account was not created.";
            //        break;
            //}
        }
    }
}


