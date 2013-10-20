using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ServiceLayer;

namespace UILayer
{
    public partial class ProfStats : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string exam = DropDownList1.SelectedValue;
            TextBox9.Text = "";
            TextBox1.Text = exam + " Minimal Value:";
            TextBox3.Text = exam + " Maximal Value:";
            TextBox5.Text = exam + " Average Value:";
            TextBox7.Text = exam + " Mode Value:";
            try
            {
                Stats stats = new Stats();
                int min = stats.GetStatsMin(exam);
                if (min != 0)
                    TextBox2.Text = min.ToString();
                int max = stats.GetStatsMax(exam);
                if (max != 0)
                    TextBox4.Text = max.ToString();
                int avg = stats.GetStatsAvg(exam);
                if (avg != 0)
                    TextBox6.Text = avg.ToString();
                int mode = stats.GetStatsMode(exam);
                if (mode != 0)
                    TextBox8.Text = mode.ToString();
            }
            catch
            {
                TextBox9.Text="A calculation error occured. Please make sure the grades for this exam are poseted";
            }
        }
    }
}