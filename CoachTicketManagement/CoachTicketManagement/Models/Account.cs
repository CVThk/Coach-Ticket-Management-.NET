using System;
using System.Collections.Generic;
using System.Text;

namespace CoachTicketManagement.Models
{
    public class Account
    {
        private int idAccount;
        private int idEmployee;
        private string userName;
        private string password;
        private string accountType;
        public int IdAccount { get => idAccount; set => idAccount = value; }
        public int IdEmployee { get => idEmployee; set => idEmployee = value; }
        public string UserName { get => userName; set => userName = value; }
        public string Password { get => password; set => password = value; }
        public string AccountType { get => accountType; set => accountType = value; }
    }
}
