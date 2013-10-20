using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using AnotherOne;
using RepoPattern;
using ServiceLayer;

namespace BusinessLayer
{
        public class BusinessPicture
        {
            public void Insert(Picture pic)
            {
                var pRepo = ServiceLayer.ServiceLayer.RepoFactory.Create("Picture");
                pRepo.Insert(pic);
            }
            public void Delete(Picture pic)
            {
                var pRepo = ServiceLayer.ServiceLayer.RepoFactory.Create("Picture");
                pRepo.Delete(pic);
            }
            public void Update(Picture pic)
            {
                var pRepo = ServiceLayer.ServiceLayer.RepoFactory.Create("Picture");
                pRepo.Update(pic);
            }
            public IQueryable<Picture> GetAll()
            {
                var pRepo = ServiceLayer.ServiceLayer.RepoFactory.Create("Picture");
                return (pRepo.GetAll().OfType<Picture>());
            }

        }
    }

