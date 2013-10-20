using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using AnotherOne;
using RepoPattern;

namespace ServiceLayer
{
    public class ServiceLayer
    {
        public class RepoFactory
        {
            public static IDataRepository Create(string repoType)
            {
                IDataRepository objRepo;
                switch (repoType)
                {
                    case "Lab":
                        objRepo = new DataRepository<Lab>();
                        break;
                    case "Person":
                        objRepo = new DataRepository<Person>();
                        break;
                    case "Picture":
                        objRepo = new DataRepository<Picture>();
                        break;
                    case "Activity":
                        objRepo = new DataRepository<Activity>();
                        break;
                    case "File":
                        objRepo = new DataRepository<File>();
                        break;
                    case "Grade":
                        objRepo = new DataRepository<Grade>();
                        break;
                    case "Comment":
                        objRepo = new DataRepository<Comment>();
                        break;
                    case "ProfGrade":
                        objRepo = new DataRepository<FillOutGradeTable_Result1>();
                        break;
              
                    default:
                        objRepo = null;
                        throw new System.ArgumentException("Object " + objRepo + " does not exist");
                }
                return objRepo;
            }
        }
    }
        public class ValidatePW
        {
            public Boolean Succeeded {get;set;}

            public bool ValidatePassword(string password)
            {
                if (password.Length >= 5)
                {
                    Succeeded = true;
                }
                else
                {
                    Succeeded = false;
                }
                return Succeeded;

            }
        }

    }

