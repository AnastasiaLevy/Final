using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using AnotherOne;
using BusinessLayer;
using ServiceLayer;

namespace UILayer
{
    public partial class AddGrade : System.Web.UI.Page
    {
        List<TextBox> Control = new List<TextBox>();
        protected void Page_Load(object sender, EventArgs e)
        {
            GradeAdventure grade = new GradeAdventure();

            DataTable dt = grade.ReturnDataTable();

            TextBox tx = new TextBox();
            Literal lt = new Literal();
            Literal ltName = new Literal();
            List<Table> list = dt.AsEnumerable().Select(r => new Table()
            {
                Fname = (string)r["Lname"],
                Lname = (string)r["fname"],
                Id = (int)r["Id"],
                Grade = (string)""
            }
             ).ToList();

            ;
       
            int j = 0;
          
            foreach (var item in list)
            {
                ltName = new Literal();
                ltName.ID = "ltName" + j.ToString();
                ltName.Text = list[j].Fname.ToString() + ", " + list[j].Lname.ToString() + " : ";
                pn.Controls.Add(ltName);
                tx = new TextBox();
                tx.Style["Position"] = "Absolute";
              
                tx.Style["Left"] = "210px";
                tx.ID = "tx_" + j.ToString();
                tx.Text = "";
                pn.Controls.Add(tx);
                lt = new Literal();
                lt.ID = "lt_" + j.ToString();
                lt.Text = "</br></br>";

                pn.Controls.Add(lt);
                Control.Add(tx);

                j++;

            }
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            GradeAdventure grade = new GradeAdventure();
            DataTable dt = grade.ReturnDataTable();
            int count=grade.SelectCount();
            Response.Write(count.ToString());

            TextBox tx = new TextBox();
            Literal lt = new Literal();
            Literal ltName = new Literal();
            var list = dt.AsEnumerable().Select(r => new Person()
            {
              
                Id = (int)r["Id"],

            }
               ).ToList();

            ;
        
            for (int j = 0; j < count; j++)
            {
                int id = list[j].Id;
                int actId = int.Parse(DropDownList1.SelectedValue);
                int value = int.Parse(Control[j].Text);

                ServiceLayer.AddGrade.CreateGrade(id, actId, value);
                
            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Comment comment = new Comment();
            comment.Text = TextBox1.Text;
            comment.ActivityId1 = int.Parse(DropDownList1.SelectedValue);

            BusinessComments comm = new BusinessComments();
            comm.Insert(comment);

        }
    }
}