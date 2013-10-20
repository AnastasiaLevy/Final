using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using AnotherOne;
using ServiceLayer;

namespace BusinessLayer
{
    public class BusinessGrade
    {
        public void Insert(Grade gr)
        {
            var grRepo = ServiceLayer.ServiceLayer.RepoFactory.Create("Grade");
            grRepo.Insert(gr);
        }
        public void Delete(Grade gr)
        {
            var grRepo = ServiceLayer.ServiceLayer.RepoFactory.Create("Grade");
            grRepo.Delete(gr);
        }
        public void Update(Grade gr)
        {
            var grRepo = ServiceLayer.ServiceLayer.RepoFactory.Create("Grade");
            grRepo.Update(gr);
        }
        public IQueryable<Grade> GetAll()
        {
            var grRepo = ServiceLayer.ServiceLayer.RepoFactory.Create("Grade");
            return (grRepo.GetAll().OfType<Grade>());
        }
        public IQueryable<Grade> SearchByUserName(int Id)
        {
            var grRepo = ServiceLayer.ServiceLayer.RepoFactory.Create("Grade");
            return (grRepo.GetBySpecificKey("PersonId", Id).OfType<Grade>());
        }
    }
}
