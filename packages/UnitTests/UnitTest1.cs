using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using AnotherOne;
using System.Linq;
using System.Data;
using System.Data.Objects;
using System.Data.Entity;
using System.Data.Entity.Validation;

//namespace UnitTests
//{
//    [TestClass]
//    public class UnitTest1
//    {
//        [TestMethod]
//        public void TestMethod1()
//        {
//            var context = new NewDataBaseEntities();
//            Person person = new Person();


//            person.Fname = "Valery";
//            person.Lname = "Straus";
//            person.UserName = "Val12";
//            person.Password = "foo";
//            person.Group = "2";

//            context.People.Add(person);
//            context.SaveChanges();

//            Person savep = (from pr in context.People where pr.Fname == person.Fname select pr).FirstOrDefault();

//            Assert.AreEqual(savep.Fname, person.Fname);
//        }

//            [TestMethod]
//            public void InsertActivity()
//            {
//                var context = new NewDataBaseEntities();
//                Activity act = new Activity();

//                act.ActivityName = "Exam1";
//                act.Id = 1;
                

//                context.Activities.Add(act);
//                context.SaveChanges();
//        }
//            [TestMethod]
//            public void InsertGrade()
//            {
//                var context = new NewDataBaseEntities();
//                Grade grade = new Grade();

//                grade.Id = 1;
//                grade.PersonId = 1;
//                grade.ActivityId = 1;
//                grade.Value = 98;

//                context.Grades.Add(grade);
//                context.SaveChanges();
//            }

//    }
//}
