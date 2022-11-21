using System;
using System.Collections.Generic;
using System.Text;

namespace CoachTicketManagement.Core
{
    public class AccountService
    {
        #region Singleton
        private static AccountService instance;
        public static AccountService Instance
        {
            get { if (instance == null) instance = new AccountService(); return instance; }
            private set { instance = value; }
        }
        private AccountService() { }
        #endregion
        public bool Login()
        {
            return true;
        }
    }
}
