using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BusinessLayer;
using AnotherOne;
using ServiceLayer;
using System.Data.SqlClient;
using System.Configuration;

namespace UILayer
{
    public partial class MemberPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session != null)
            {
                try
                {
                    lbUserName.Text = Session["UserName"].ToString();
                    string userName = lbUserName.Text;
                    ValidateLogin vl = new ValidateLogin();

                    int id = vl.ReturnId(userName);
                    BusinessGrade bd = new BusinessGrade();
                    List<Grade> list = bd.SearchByUserName(id).ToList<Grade>();

                    Session["ObjectParameterName"] = id;
                    Grade.Select();

                    Grade.SelectParameters.Add("id", id.ToString());

                    int total = 0;
                    int count = list.Count;
                    int value = 0;
                    for (int i = 0; i < count; i++)
                    {
                        foreach (var item in list)
                        {
                            value = Convert.ToInt32(list[i].Value);
                        }
                        total += value;
                    }
                    int persent = total / count;

                    TextBox1.Text = "Persent Total: " + persent.ToString() + ", Your grade is " + ReturnGrade(persent);
                }
                catch 
                {
                    lbUserName.Text = "Guest";
                }

            }

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void SqlDataSource2_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView3_SelectedIndexChanged(object sender, EventArgs e)
        {
        }
        protected void GridView3_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }

        protected void Grade_Selecting(object sender, ObjectDataSourceSelectingEventArgs e)
        {

        }

        static char ReturnGrade(int persent)
        {
            char grade;
            if (persent >= 90)
            {
                grade = 'A';
            }
            else if (persent < 90 && persent >= 80)
            {
                grade = 'B';
            }
            else if (persent < 80 && persent >= 70)
            {
                grade = 'C';
            }
            else if (persent < 70 && persent >= 60)
            {
                grade = 'D';
            }

            grade = 'F';

            return grade;
        }

    }
}
