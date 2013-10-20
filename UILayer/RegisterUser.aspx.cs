using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using AnotherOne;
using BusinessLayer;

namespace UILayer
{
    public partial class RegisterUser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Person p = new Person();
            p.Fname = Fname.Text;
            p.Lname = Lname.Text;
            p.UserName = UserName.Text;
            p.Password = Password.Text;
            string confPassword = confirmPw.Text;
            if (p.Password != confPassword)
            {
                Password.Focus();
            }
            p.LabId = int.Parse(LabList.SelectedValue);

            var labRepo = ServiceLayer.ServiceLayer.RepoFactory.Create("Person");
            labRepo.Insert(p);
            Response.Redirect("login.aspx");
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void CreateUserWizard1_CreatedUser(object sender, EventArgs e)
        {
        
        }
    }
}