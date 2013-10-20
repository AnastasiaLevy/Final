using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using RepoPattern;
using AnotherOne;
using System.Collections.Generic;
using System.Data;
using System.Linq;

namespace UnitTests
{
    [TestClass]
    public class UnitTest2
    {
        [TestMethod]
        public void InsertPictureUsingRepository()
        {
            var pictureRepo = new DataRepository<Picture>();
            Picture pic = new Picture();
            pic.Id = 1;
            pic.FileName = "0ood.jpeg";
            pictureRepo.Insert(pic);
        }
        [TestMethod]
        public void RetreivePicUsingRepository()
        {
            var picRepo = new DataRepository<Picture>();
            List<Picture> list = picRepo.GetAll().ToList<Picture>();
            Assert.IsTrue(list.Count > 0);
            
        }
    }
}
