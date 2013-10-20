using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using AnotherOne;


namespace ServiceLayer
{
    public class GradeAdventure
    {
        public DataTable ReturnDataTable()
        {
            string strConnection = System.Configuration.ConfigurationManager.ConnectionStrings["NewDataBaseConnectionString"].ConnectionString;

            SqlConnection sqlConnection = new SqlConnection(strConnection);
            String SQLQuery = "SELECT count (*) from People";
            SqlCommand command = new SqlCommand(SQLQuery, sqlConnection);

            sqlConnection.Open();
            int count = Convert.ToInt32(command.ExecuteScalar());

            SqlCommand command2 = new SqlCommand("select id, fname, lname from people", sqlConnection);
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(command2);
            da.Fill(dt);
            da.Dispose();
            sqlConnection.Close();
            return dt;
        }

        public int SelectCount()
        {
            string strConnection = System.Configuration.ConfigurationManager.ConnectionStrings["NewDataBaseConnectionString"].ConnectionString;
            int count;
            SqlConnection sqlConnection = new SqlConnection(strConnection);
            String SQLQuery = "SELECT count (*) from People";
            SqlCommand command = new SqlCommand(SQLQuery, sqlConnection);

            sqlConnection.Open();
            count = Convert.ToInt32(command.ExecuteScalar());
            sqlConnection.Close();
            return count;
        }
        public DataTable SelectForTable2()
        {
            string strConnection = System.Configuration.ConfigurationManager.ConnectionStrings["NewDataBaseConnectionString"].ConnectionString;

            SqlConnection sqlConnection = new SqlConnection(strConnection);

            sqlConnection.Open();
            SqlCommand command2 = new SqlCommand("select fname, lname,gr.id, gr.Value, act.ActivityName from People persone join Grades gr on persone.id = gr.personId join Activities act on act.id = gr.activityId", sqlConnection);
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(command2);
            da.Fill(dt);
            da.Dispose();
            sqlConnection.Close();

            return dt;
         
        }
        public List<TableContext> SelectForTable()
        {
            string strConnection = System.Configuration.ConfigurationManager.ConnectionStrings["NewDataBaseConnectionString"].ConnectionString;

            SqlConnection sqlConnection = new SqlConnection(strConnection);

            sqlConnection.Open();
            SqlCommand command2 = new SqlCommand("select fname, lname,gr.id, gr.Value, act.ActivityName from People persone join Grades gr on persone.id = gr.personId join Activities act on act.id = gr.activityId", sqlConnection);
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(command2);
            da.Fill(dt);
            da.Dispose();
            sqlConnection.Close();
           // return dt;
            List<TableContext> list = dt.AsEnumerable().Select(r => new TableContext()
            {
                
                Fname = (string)r["lname"],
                Lname = (string)r["fname"],
                Id = (int)r["id"],
                Grade = (int)r["value"],
                Exam = (string)r["ActivityName"]
            }
           ).ToList();

            ;
            return list;
        }
        public void UpdateGrade(  int id, int Value, string ActivityName, int Grade)
        {
            
            string strConnection = System.Configuration.ConfigurationManager.ConnectionStrings["NewDataBaseConnectionString"].ConnectionString;
            SqlConnection sqlConnection = new SqlConnection(strConnection);
            String SQLQuery = "update Grades set value = @Value where id =@id";
            SqlCommand command = new SqlCommand(SQLQuery, sqlConnection);
            command.Parameters.Add(new SqlParameter("@Value", Grade));
            command.Parameters.Add(new SqlParameter("@id", id));
            
            
            //  fname, lname, id, ActivityName
            sqlConnection.Open();
            command.ExecuteNonQuery();
            sqlConnection.Close();
        }
    }
}
