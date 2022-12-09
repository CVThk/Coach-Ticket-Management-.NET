using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace CoachTicketManagement.Utility
{
    public class ControlHelper
    {
        #region Singleton
        private static ControlHelper instance;
        public static ControlHelper Instance
        {
            get { if (instance == null) instance = new ControlHelper(); return instance; }
            private set { instance = value; }
        }
        private ControlHelper() { }
        #endregion

        public void loadGender(ComboBox combo)
        {
            combo.DataSource = new string[] { "Nam", "Nữ" };
        }
        public void loadCity(ComboBox combo)
        {
            combo.DataSource = ADOHelper.Instance.ExecuteReader("select * from tbl_City");
            combo.DisplayMember = "NameCity";
            combo.ValueMember = "IDCity";
        }
        public void loadDistrict(ComboBox combo)
        {
            combo.DataSource = ADOHelper.Instance.ExecuteReader("select * from tbl_District");
            combo.DisplayMember = "NameDistrict";
            combo.ValueMember = "IDDistrict";
        }
        public void loadWard(ComboBox combo)
        {
            combo.DataSource = ADOHelper.Instance.ExecuteReader("select * from tbl_Ward");
            combo.DisplayMember = "NameWard";
            combo.ValueMember = "IDWard";
        }
        public void loadCboCoach(ComboBox combo)
        {
            combo.DataSource = ADOHelper.Instance.ExecuteReader("select IDCOACH, LICENSEPLATE from TBL_COACH");
            combo.DisplayMember = "LICENSEPLATE";
            combo.ValueMember = "IDCOACH";
        }
        public void loadCboTime(ComboBox combo)
        {
            combo.DataSource = ADOHelper.Instance.ExecuteReader("select IDTIME, cast(STARTTIME as nvarchar(max)) + ' - ' + cast(FINISHTIME as nvarchar(max)) as 'Time' from TBL_TIMEBUSLINE");
            combo.DisplayMember = "Time";
            combo.ValueMember = "IDTIME";
        }
        public void loadCboDriver(ComboBox combo)
        {
            combo.DataSource = ADOHelper.Instance.ExecuteReader("select IDDRIVER, NAMEDRIVER from TBL_DRIVER");
            combo.DisplayMember = "NAMEDRIVER";
            combo.ValueMember = "IDDRIVER";
        }
        public void loadCboBusLine(ComboBox combo)
        {
            combo.DataSource = ADOHelper.Instance.ExecuteReader("select IDBUSLINE, DEPARTURESTATION + ' - ' + DESTINATIONSTATION as 'BusLine' from TBL_BUSLINE");
            combo.DisplayMember = "BusLine";
            combo.ValueMember = "IDBUSLINE";
        }

        public void loadTypeAccount(ComboBox combo)
        {
            combo.DataSource = ADOHelper.Instance.ExecuteReader("select * from TBL_PERMISSIONGROUP");
            combo.DisplayMember = "NameGroup";
            combo.ValueMember = "IDPERMISSIONGROUP";
        }
        public void loadTypeEmployee(ComboBox combo)
        {
            combo.DataSource = ADOHelper.Instance.ExecuteReader("select * from TBL_TYPEOFEMPLOYEE");
            combo.DisplayMember = "NameType";
            combo.ValueMember = "IDType";
        }
        public void loadCboEmployee(ComboBox combo, string sam)
        {
            combo.DataSource = ADOHelper.Instance.ExecuteReader("select IDEMPLOYEE, NAMEEMPLOYEE from TBL_EMPLOYEE e, TBL_TYPEOFEMPLOYEE te where e.IDTYPE = te.IDTYPE and te.NAMETYPE like N'%'+@para_0+'%'", new object[] { sam });
            combo.DisplayMember = "NAMEEMPLOYEE";
            combo.ValueMember = "IDEMPLOYEE";
        }
    }
}
