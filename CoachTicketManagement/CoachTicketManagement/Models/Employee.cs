using System;
using System.Collections.Generic;
using System.Text;

namespace CoachTicketManagement.Models
{
    public class Employee
    {
        private int idEmployee;
        private int idWard;
        private int idType;
        private int idAccount;
        private string nameEmployee;
        private DateTime dateOfBirthEmployee;
        private string genderEmployee;
        private string identityEmployee;
        private string phoneEmployee;
        private string emailEmployee;

        public int IdEmployee { get => idEmployee; set => idEmployee = value; }
        public int IdWard { get => idWard; set => idWard = value; }
        public int IdType { get => idType; set => idType = value; }
        public int IdAccount { get => idAccount; set => idAccount = value; }
        public string NameEmployee { get => nameEmployee; set => nameEmployee = value; }
        public DateTime DateOfBirthEmployee { get => dateOfBirthEmployee; set => dateOfBirthEmployee = value; }
        public string GenderEmployee { get => genderEmployee; set => genderEmployee = value; }
        public string IdentityEmployee { get => identityEmployee; set => identityEmployee = value; }
        public string PhoneEmployee { get => phoneEmployee; set => phoneEmployee = value; }
        public string EmailEmployee { get => emailEmployee; set => emailEmployee = value; }
    }
}
