using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using RepoPattern;
using ServiceLayer;
using AnotherOne;

namespace BusinessLayer
{
    
        public class BusinessLab
        {
            public void Insert(Lab oLab)
            {
                var labRepo = ServiceLayer.ServiceLayer.RepoFactory.Create("Lab");
                labRepo.Insert(oLab);
            }
            public void Delete(Lab oLab)
            {
                var labRepo = ServiceLayer.ServiceLayer.RepoFactory.Create("Lab");
                labRepo.Delete(oLab);
            }
            public void Update(Lab oLab)
            {
                var labRepo = ServiceLayer.ServiceLayer.RepoFactory.Create("Lab");
                labRepo.Update(oLab);
            }
            public IQueryable<Lab> GetAll()
            {
                var labRepo = ServiceLayer.ServiceLayer.RepoFactory.Create("Lab");
                return (labRepo.GetAll().OfType<Lab>());
            }
            public IQueryable<Lab> SearchByLabId(int id)
            {
                var grRepo = ServiceLayer.ServiceLayer.RepoFactory.Create("Lab");
                return (grRepo.GetBySpecificKey("LabId", id).OfType<Lab>());
            }

        }
    }

