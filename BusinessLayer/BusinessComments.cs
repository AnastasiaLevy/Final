
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ServiceLayer;
using AnotherOne;

namespace BusinessLayer
{
    public class BusinessComments
    {
        public void Insert(Comment comment)
        {
            var PersonRepo = ServiceLayer.ServiceLayer.RepoFactory.Create("Comment");
            PersonRepo.Insert(comment);
        }
        public void Delete(Comment comment)
        {
            var PersonRepo = ServiceLayer.ServiceLayer.RepoFactory.Create("Comment");
            PersonRepo.Delete(comment);
        }
        public void Update(Comment comment)
        {
            var PersonRepo = ServiceLayer.ServiceLayer.RepoFactory.Create("Comment");
            PersonRepo.Update(comment);
        }
        public IQueryable<Comment> GetAll()
        {
            var PersonRepo = ServiceLayer.ServiceLayer.RepoFactory.Create("Comment");
            return (PersonRepo.GetAll().OfType<Comment>());
        }
        
    }
}