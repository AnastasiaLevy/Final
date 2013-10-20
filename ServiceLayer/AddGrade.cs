using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.Objects;
using AnotherOne;

namespace ServiceLayer
{
    public static class AddGrade
    {
        public static void CreateGrade(int id, int actId, int sValue)
        {
            NewDataBaseEntities db = new NewDataBaseEntities();

            if (sValue > 0)
            {
                Grade gr = new Grade();
                gr.Value = sValue;
                db.Grades.Add(gr);
                gr.PersonId = id;
                gr.ActivityId = actId;
                db.Grades.Add(gr);
                db.SaveChanges();

            }
        }
        //public static void UpdateGrade(int sValue)
        //{
        //    NewDataBaseEntities db = new NewDataBaseEntities();
        //public static List<TableContext> Smth ()
        //{
        //   // NewDataBaseEntities db = new NewDataBaseEntities();
        //   // TableContext table = new TableContext();
        //   //var query = from p in db.People join
        //   //      gr in db.Grades on p.Id equals gr.PersonId
        //   //      join
        //   //      act in db.Activities on gr.ActivityId equals act.Id
        //   //      select new TableContext(){p.Lname, p.Fname, act.ActivityName, gr.Value};
        //   //List<TableContext> list = query.ToList<TableContext>();
        //   // return list;
        //}
    }
}
