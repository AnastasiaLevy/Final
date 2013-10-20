using AnotherOne;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BusinessLayer
{
   public class FileContext
    {
        public void Insert(File file)
        {
            var PersonRepo = ServiceLayer.ServiceLayer.RepoFactory.Create("File");
            PersonRepo.Insert(file);
        }
        public void Delete(File act)
        {
            var PersonRepo = ServiceLayer.ServiceLayer.RepoFactory.Create("File");
            PersonRepo.Delete(act);
        }
        public void Update(File act)
        {
            var PersonRepo = ServiceLayer.ServiceLayer.RepoFactory.Create("File");
            PersonRepo.Update(act);
        }
        public IQueryable<File> GetAll()
        {
            var PersonRepo = ServiceLayer.ServiceLayer.RepoFactory.Create("File");
            return (PersonRepo.GetAll().OfType<File>());
        }
        public IQueryable<File> GetByActivityName(string fileName)
        {
            var PersonRepo = ServiceLayer.ServiceLayer.RepoFactory.Create("File");
            return (PersonRepo.GetBySpecificKey("File", fileName).OfType<File>());
        }
    }
}
