using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;

namespace ServiceLayer
{
    public class Stats
    {
       
        

        public int GetStatsMin(string exam)
        {
            string query = @"select min(value) from grades where ActivityId = (select id from Activities where ActivityName =@exam)";
            string strConnection = System.Configuration.ConfigurationManager.ConnectionStrings["NewDataBaseConnectionString"].ConnectionString;

            SqlConnection sqlConnection = new SqlConnection(strConnection);
            SqlCommand command = new SqlCommand(query, sqlConnection);
            command.Parameters.Add(new SqlParameter("@exam", exam));
            sqlConnection.Open();
            int min = Convert.ToInt32(command.ExecuteScalar());
            return min;
        }
        public int GetStatsMax(string exam)
        {
            string query = @"select max(value) from grades where ActivityId = (select id from Activities where ActivityName = @exam)";
            string strConnection = System.Configuration.ConfigurationManager.ConnectionStrings["NewDataBaseConnectionString"].ConnectionString;

            SqlConnection sqlConnection = new SqlConnection(strConnection);
            SqlCommand command = new SqlCommand(query, sqlConnection);
            command.Parameters.Add(new SqlParameter("@exam", exam));
            sqlConnection.Open();
            int max = Convert.ToInt32(command.ExecuteScalar());
            return max;
        }
        public int GetStatsAvg(string exam)
        {
            string query = @"select avg(value) from grades where ActivityId = (select id from Activities where ActivityName = @exam)";
            string strConnection = System.Configuration.ConfigurationManager.ConnectionStrings["NewDataBaseConnectionString"].ConnectionString;

            SqlConnection sqlConnection = new SqlConnection(strConnection);
            SqlCommand command = new SqlCommand(query, sqlConnection);
            command.Parameters.Add(new SqlParameter("@exam", exam));
            sqlConnection.Open();
            int avg = Convert.ToInt32(command.ExecuteScalar());
            return avg;
        }
        public int GetStatsMode(string exam)
        {
            string query = @"SELECT TOP 1 with ties Value
                            FROM   Grades
                            WHERE  Value IS Not NULL
                            And ActivityId = (select id from Activities where ActivityName = @exam)
                            GROUP  BY Value
                            ORDER  BY COUNT(*) DESC";
            
            string strConnection = System.Configuration.ConfigurationManager.ConnectionStrings["NewDataBaseConnectionString"].ConnectionString;

            SqlConnection sqlConnection = new SqlConnection(strConnection);
            SqlCommand command = new SqlCommand(query, sqlConnection);
            command.Parameters.Add(new SqlParameter("@exam", exam));
            sqlConnection.Open();
            int mode = Convert.ToInt32(command.ExecuteScalar());
            return mode;
        }
    }
}
