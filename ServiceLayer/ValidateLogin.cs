using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using AnotherOne;

namespace ServiceLayer
{
        public class ValidateLogin
        {
            public String Message { get; set; }
            public Boolean Result { get; set; }

            public bool ValidateMyLogin(string username, string password)
            {

                NewDataBaseEntities db = new NewDataBaseEntities();
                
                var user = (from p in db.People where p.UserName == username && p.Password == password select p).FirstOrDefault();

                if (user != null)
                
                    Result = true;

                
                else
                
                    Result = false;
                return Result;

                

            }
            public int ReturnId(string username)
            {
                NewDataBaseEntities nb = new NewDataBaseEntities();
                int id = (from p in nb.People where p.UserName == username select p.Id).FirstOrDefault();
                return id;
            }
            
        }
    }

