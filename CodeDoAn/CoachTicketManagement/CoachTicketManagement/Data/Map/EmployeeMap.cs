using CoachTicketManagement.Models;
using FluentNHibernate.Mapping;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CoachTicketManagement.Data.Map
{
    public class EmployeeMap : ClassMap<Employee>
    {
        public EmployeeMap()
        {
            Id(x => x.Id);
            Map(x => x.Name);
            Map(x => x.DateOfBirth);
            Map(x => x.Gender);
            Map(x => x.IdentityCart);
            Map(x => x.Phone);
            Map(x => x.Email);
            Map(x => x.IdWard);
            Map(x => x.IdTypeOfEmployee);
            Map(x => x.IdPermissionGroup);
            Table("tbl_Employee");
        }
    }
}
