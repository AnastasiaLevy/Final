using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ServiceLayer;

namespace UILayer
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
                
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string username = TextBox1.Text;
            string password = TextBox2.Text;

            ValidateLogin vl = new ValidateLogin();
            if (vl.ValidateMyLogin(username, password))
            {
                Session["UserName"] = username;
                Response.Write(Session["UserName"].ToString());
                if (username == "Doctor" && password == "James")
                {
                    Response.Redirect("ProfessorMainPage.aspx");
                }
                else
                    Response.Redirect("MemberPage.aspx");

            }
            else
                Response.Redirect("RegisterUser.aspx");

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }
    }
}