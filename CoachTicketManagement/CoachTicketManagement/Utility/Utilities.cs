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

        #region Cons
        public int _DangChon = 2, _Trong = 0, _KhongBan = 1;
        public int _WidthSeat = 40, _HeightSeat = 40;
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
