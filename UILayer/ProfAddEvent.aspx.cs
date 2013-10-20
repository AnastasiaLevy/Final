using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using AnotherOne;
using BusinessLayer;
using System.Data.SqlClient;
using System.Data;
using ServiceLayer;


namespace UILayer
{
    public partial class ProfessorLogIn : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {


        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            Activity act = new Activity();
            act.Schedule = Convert.ToDateTime(TextBox2.Text);
            act.ActivityName = TextBox1.Text;

            var labRepo = ServiceLayer.ServiceLayer.RepoFactory.Create("Activity");
            labRepo.Insert(act);
            GridView3.DataBind();
        }

        protected void ObjectDataSource3_Selecting(object sender, ObjectDataSourceSelectingEventArgs e)
        {

        }

        
       
    }
}