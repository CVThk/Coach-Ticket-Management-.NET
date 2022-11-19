using System;
using System.Collections.Generic;
using System.Text;
using System.Windows.Forms;

namespace CoachTicketManagement.Utility
{
    public class Utilities
    {
        #region Singleton Pattern
        private static Utilities instance;
        public static Utilities Instance
        {
            get { if (instance == null) instance = new Utilities(); return instance; }
            private set { instance = value; }
        }
        private Utilities() { }
        #endregion

        public void AutoResizeListView(ListView lsv)
        {
            int nCol = lsv.Columns.Count;
            for (int i = 0; i < nCol; i++)
            {
                lsv.Columns[i].Width = (int)(lsv.Width * (100.0 / nCol) / 100.0);
            }
        }
    }
}
