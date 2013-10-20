using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ServiceLayer;
using RepoPattern;
using AnotherOne;

namespace BusinessLayer
{
    public class BusinessPerson
    {
        public void Insert(Person oPerson)
        {
            var PersonRepo = ServiceLayer.ServiceLayer.RepoFactory.Create("Person");
            PersonRepo.Insert(oPerson);
        }
        public void Delete(Person oPerson)
        {
            var PersonRepo = ServiceLayer.ServiceLayer.RepoFactory.Create("Person");
            PersonRepo.Delete(oPerson);
        }
        public void Update(Person oPerson)
        {
            var PersonRepo = ServiceLayer.ServiceLayer.RepoFactory.Create("Person");
            PersonRepo.Update(oPerson);
        }
        public IQueryable<Person> GetAll()
        {
            var PersonRepo = ServiceLayer.ServiceLayer.RepoFactory.Create("Person");
            return (PersonRepo.GetAll().OfType<Person>());
        }
        public IQueryable<Person> GetByLastName(string Lname)
        {
            var PersonRepo = ServiceLayer.ServiceLayer.RepoFactory.Create("Person");
            return (PersonRepo.GetBySpecificKey("Lname", Lname).OfType<Person>());
        }
        public IQueryable<Person> GetByUserName(string userName)
        {
            var PersonRepo = ServiceLayer.ServiceLayer.RepoFactory.Create("Person");
            return (PersonRepo.GetBySpecificKey("UserName", userName).OfType<Person>());
        }

        public IQueryable<Person> GetByLabNumber(string labId)
        {
            var PersonRepo = ServiceLayer.ServiceLayer.RepoFactory.Create("Person");
            return (PersonRepo.GetBySpecificKey("labNumber", labId).OfType<Person>());
        }
        public IQueryable<Person> GetUserById(int id)
        {
            var PersonRepo = ServiceLayer.ServiceLayer.RepoFactory.Create("Person");
            return (PersonRepo.GetBySpecificKey("id", id).OfType<Person>());
        }
    }
}
