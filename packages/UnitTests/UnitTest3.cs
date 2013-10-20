using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using AnotherOne;
using RepoPattern;
using ServiceLayer;


namespace UnitTests
{
    [TestClass]
    public class UnitTest3
    {
        
        [TestMethod]
        public void TestFactoryForLab()
        {
            Lab lab = new Lab();
            lab.Id = 1;
            lab.Date = "Tuesday/Thursday 8:00";
            


            var labRepo = ServiceLayer.ServiceLayer.RepoFactory.Create("Lab");
            labRepo.Insert(lab);
        }
        [TestMethod]
        public void addLab()
        {
            Lab lab = new Lab();
            lab.Id = 3;
            lab.Date = "Tuesday/Thirsday 14:00";


            var labRepo = ServiceLayer.ServiceLayer.RepoFactory.Create("Lab");
            labRepo.Insert(lab);
        }
        [TestMethod]
        public void addNewLab()
        {
            Lab lab = new Lab();
            lab.Id = 4;
            lab.Date = "Wednesday/Friday 12:00";


            var labRepo = ServiceLayer.ServiceLayer.RepoFactory.Create("Lab");
            labRepo.Insert(lab);


        }
        [TestMethod]
        public void addNewActivity()
        {
            Activity act = new Activity();
            act.ActivityName = "Exam1";
            var value = new DateTime(2014, 09, 19);
            act.Schedule = value;
           


            var labRepo = ServiceLayer.ServiceLayer.RepoFactory.Create("Activity");
            labRepo.Insert(act);


        }
        [TestMethod]
        public void addNewPerson()
        {
            Activity act = new Activity();
            Person p = new Person();
            p.LabId = 1;
            p.Lname = "Huglemonster";
            p.Fname = "Henry";
            p.Group = "1";
            p.Password = "password1";
            p.UserName = "HeyHeyHey";

            var labRepo = ServiceLayer.ServiceLayer.RepoFactory.Create("Person");
            labRepo.Insert(p);

        }
        [TestMethod]
        public void InsertGrade()
        {
            Grade gr = new Grade();
            gr.PersonId = 1;
            gr.Value = 100;
            gr.ActivityId = 1;

            var grRepo = ServiceLayer.ServiceLayer.RepoFactory.Create("Grade");
            grRepo.Insert(gr);
        }
        //[TestMethod]
        //public void TestMyStoredProcedure()
        //{
        //    FillOutGradeTable_Result f = new FillOutGradeTable_Result();
        //    f.Fname = "Tom";
        //    f.Lname = "Tompson";
        //    f.ActivityName = "Exam1";
        //    f.Value = 98;

        //    var fRepo = ServiceLayer.ServiceLayer.RepoFactory.Create("NewGrade");
        //    fRepo.Insert(f);
        //}


           
    }
}
