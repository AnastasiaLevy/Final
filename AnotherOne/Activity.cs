//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace AnotherOne
{
    using System;
    using System.Collections.Generic;
    
    public partial class Activity
    {
        public Activity()
        {
            this.Grades = new HashSet<Grade>();
            this.Comments = new HashSet<Comment>();
            this.Files = new HashSet<File>();
        }
    
        public int Id { get; set; }
        public string ActivityName { get; set; }
        public System.DateTime Schedule { get; set; }
    
        public virtual ICollection<Grade> Grades { get; set; }
        public virtual ICollection<Comment> Comments { get; set; }
        public virtual ICollection<File> Files { get; set; }
    }
}
