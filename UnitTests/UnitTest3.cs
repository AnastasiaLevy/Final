using System;
using System.Collections.Generic;
using System.Linq;
using BusinessLayer;
using AnotherOne;
using ServiceLayer;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using RepoPattern;
using System.Data;



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
            lab.Id = 2;
            lab.Date = "Tuesday/Thirsday 14:00";


            var labRepo = ServiceLayer.ServiceLayer.RepoFactory.Create("Lab");
            labRepo.Insert(lab);
        }
        [TestMethod]
        public void addNewLab()
        {
            Lab lab = new Lab();
            lab.Id = 3;
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
        public void addNewPerson4()
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
        public void addAnotherNewPerson()
        {
            Activity act = new Activity();
            Person p = new Person();
            p.LabId = 1;
            p.Lname = "Hurrison";
            p.Fname = "Tomas";
            p.Group = "1";
            p.Password = "1";
            p.UserName = "tommy";
            p.Id = 1;

            var labRepo = ServiceLayer.ServiceLayer.RepoFactory.Create("Person");
            labRepo.Insert(p);

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

        [TestMethod]
        public void TestAddGrade()
        {
            ServiceLayer.AddGrade.CreateGrade(2, 1, 78);
        }

        [TestMethod]
        public void ValidateLogin()
        {
            ValidateLogin vl = new ValidateLogin();

            Assert.IsTrue(vl.ValidateMyLogin("tommy", "1"));

        }
        [TestMethod]
        public void CheckId()
        {
            ValidateLogin vl = new ValidateLogin();
            Assert.IsTrue(1 == vl.ReturnId("tommy"));
        }
        [TestMethod]
        public void GetGradeById()
        {
            int id = 1;
            BusinessGrade bd = new BusinessGrade();
            List<Grade> list = bd.SearchByUserName(id).ToList<Grade>();
            Assert.IsTrue(list.Count > 0);
        }

        //}
       
        [TestMethod]
        public void GetDt()
        {
            GradeAdventure grade = new GradeAdventure();
            DataTable dt = grade.ReturnDataTable();
            Assert.IsTrue(dt.Rows.Count > 0);

        }
    }       
    }

