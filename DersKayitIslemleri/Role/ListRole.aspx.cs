using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DersKayitIslemleri.Role
{
    public partial class ManageRoles : System.Web.UI.Page
    {
        public object RoleName { get; private set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
                DisplayRolesInGrid();
        }


        private void DisplayRolesInGrid()
        {

            RoleList.DataSource = Roles.GetAllRoles();
            RoleList.DataBind();
        }

        protected void CreateRoleButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("CreateRole.aspx");


            //rol atamaları yaapılacak
           
        }
        protected void RoleList_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            // Get the RoleNameLabel
            Label RoleNameLabel = RoleList.Rows[e.RowIndex].FindControl("RoleNameLabel") as Label;

            // Delete the role
            Roles.DeleteRole(RoleNameLabel.Text, false);

            // Rebind the data to the RoleList grid
            DisplayRolesInGrid();
        }
    }
}