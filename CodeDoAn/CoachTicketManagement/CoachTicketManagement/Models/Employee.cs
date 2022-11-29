using System;
using System.Collections.Generic;
using System.Text;

namespace CoachTicketManagement.Models
{
    public class Employee : Person
    {
        //public virtual int Id{ get; set; }
        //public virtual string Name { get; set; }
        //public virtual DateTime DateOfBirth { get; set; }
        //public virtual string Gender { get; set; }
        //public virtual string IdentityCart { get; set; }
        //public virtual string Phone { get; set; }
        //public virtual string Email { get; set; }
        //public virtual int IdWard { get; set; }
        public virtual int IdTypeOfEmployee { get; set; }
        public virtual int IdPermissionGroup { get; set; }
        public virtual int IdAccount { get; set; }
    }
}
