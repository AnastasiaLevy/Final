using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ServiceLayer;
using AnotherOne;

namespace BusinessLayer
{
   public class BusinessProffGrade
    {
        public void Delete(FillOutGradeTable_Result gr)
        {
            var grRepo = ServiceLayer.ServiceLayer.RepoFactory.Create("ProfGrade");
            grRepo.Delete(gr);
        }
        public void Update(FillOutGradeTable_Result gr)
        {
            var grRepo = ServiceLayer.ServiceLayer.RepoFactory.Create("ProfGrade");
            grRepo.Update(gr);
        }
        public IQueryable<FillOutGradeTable_Result> GetAll()
        {
            var grRepo = ServiceLayer.ServiceLayer.RepoFactory.Create("ProfGrade");
            return (grRepo.GetAll().OfType<FillOutGradeTable_Result>());
        }
    }
}
