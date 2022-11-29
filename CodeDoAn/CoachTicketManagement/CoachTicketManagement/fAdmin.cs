using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using CoachTicketManagement.Models;
using CoachTicketManagement.Utility;

namespace CoachTicketManagement
{
    public partial class fAdmin : Form
    {
        Employee _curEmployee;
        public fAdmin(Employee cur)
        {
            InitializeComponent();
            this._curEmployee = cur;
            
        }

        void loadTypeAccount(ComboBox combo)
        {
            combo.DataSource = ADOHelper.Instance.ExecuteReader("select * from TBL_PERMISSIONGROUP");
            combo.DisplayMember = "NameGroup";
            combo.ValueMember = "IDPERMISSIONGROUP";
        }
        void loadCity(ComboBox combo)
        {
            combo.DataSource = ADOHelper.Instance.ExecuteReader("select * from tbl_City");
            combo.DisplayMember = "NameCity";
            combo.ValueMember = "IDCity";
        }
        void loadDistrict(ComboBox combo)
        {
            combo.DataSource = ADOHelper.Instance.ExecuteReader("select * from tbl_District");
            combo.DisplayMember = "NameDistrict";
            combo.ValueMember = "IDDistrict";
        }
        void loadWard(ComboBox combo)
        {
            combo.DataSource = ADOHelper.Instance.ExecuteReader("select * from tbl_Ward");
            combo.DisplayMember = "NameWard";
            combo.ValueMember = "IDWard";
        }
        void loadTypeEmployee(ComboBox combo)
        {
            combo.DataSource = ADOHelper.Instance.ExecuteReader("select * from TBL_TYPEOFEMPLOYEE");
            combo.DisplayMember = "NameType";
            combo.ValueMember = "IDType";
        }
        void loadGender(ComboBox combo)
        {
            combo.DataSource = new string[] { "Nam", "Nữ" };
        }


        private void fAdmin_Load(object sender, EventArgs e)
        {
            loadTypeAccount(tpAccountCboTypeAccount);
            loadAccount();
        }
        private void tabControlAdmin_SelectedIndexChanged(object sender, EventArgs e)
        {
            switch (tabControlAdmin.SelectedIndex)
            {
                case 0:
                    loadTypeAccount(tpAccountCboTypeAccount);
                    loadAccount();
                    break;
                case 1:
                    loadCity(tpEmployeeCboCity);
                    loadDistrict(tpEmployeeCboDistrict);
                    loadWard(tpEmployeeCboWard);
                    loadTypeEmployee(tpEmployeeCboTypeOfEmployee);
                    loadGender(tpEmployeeCboGender);
                    loadEmployee();
                    break;
                case 2:
                    loadCity(tpDriverCboCity);
                    loadDistrict(tpDriverCboDistrict);
                    loadWard(tpDriverCboWard);
                    loadGender(tpDriverCboGender);
                    loadDriver();
                    break;
            }
        }

        #region Account
        void loadAccount()
        {
            dataGridViewAccount.Columns.Clear();
            dataGridViewAccount.Columns.Add("IDAccount", "Mã Tài Khoản");
            dataGridViewAccount.Columns[0].DataPropertyName = "IDAccount";
            dataGridViewAccount.Columns.Add("IDEmployee", "Mã Nhân Viên");
            dataGridViewAccount.Columns[1].DataPropertyName = "IDEmployee";
            dataGridViewAccount.Columns.Add("Username", "Tên Đăng Nhập");
            dataGridViewAccount.Columns[2].DataPropertyName = "Username";
            dataGridViewAccount.Columns.Add("NameGroup", "Loại Tài Khoản");
            dataGridViewAccount.Columns[3].DataPropertyName = "NameGroup";

            tpAccountTxtIdAccount.DataBindings.Clear();
            tpAccountTxtIdEmployee.DataBindings.Clear();
            tpAccountTxtUsername.DataBindings.Clear();
            tpAccountCboTypeAccount.DataBindings.Clear();
            DataTable data = ADOHelper.Instance.ExecuteReader("select a.IDACCOUNT, a.IDEMPLOYEE, a.USERNAME, p.NAMEGROUP from TBL_ACCOUNT a, TBL_EMPLOYEE e, TBL_PERMISSIONGROUP p where a.IDEMPLOYEE = e.IDEMPLOYEE and e.IDPERMISSIONGROUP = p.IDPERMISSIONGROUP");
            dataGridViewAccount.DataSource = data;
            tpAccountTxtIdAccount.DataBindings.Add("Text", data, "IDAccount", true, DataSourceUpdateMode.Never);
            tpAccountTxtIdEmployee.DataBindings.Add("Text", data, "IDEmployee", true, DataSourceUpdateMode.Never);
            tpAccountTxtUsername.DataBindings.Add("Text", data, "Username", true, DataSourceUpdateMode.Never);
            tpAccountCboTypeAccount.DataBindings.Add("Text", data, "NameGroup", true, DataSourceUpdateMode.Never);
        }
        #endregion

        #region Employee
        void loadEmployee()
        {
            // add header datagridview
            dataGridViewEmployee.Columns.Clear();
            dataGridViewEmployee.Columns.Add("IDAccount", "Mã Tài Khoản");
            dataGridViewEmployee.Columns[0].DataPropertyName = "IDAccount";
            dataGridViewEmployee.Columns.Add("IDEmployee", "Mã Nhân Viên");
            dataGridViewEmployee.Columns[1].DataPropertyName = "IDEmployee";
            dataGridViewEmployee.Columns.Add("NameEmployee", "Tên Nhân Viên");
            dataGridViewEmployee.Columns[2].DataPropertyName = "NameEmployee";
            dataGridViewEmployee.Columns.Add("DATEOFBIRTHEMPLOYEE", "Ngày Sinh");
            dataGridViewEmployee.Columns[3].DataPropertyName = "DATEOFBIRTHEMPLOYEE";
            dataGridViewEmployee.Columns.Add("GENDEREMPLOYEE", "Giới Tính");
            dataGridViewEmployee.Columns[4].DataPropertyName = "GENDEREMPLOYEE";
            dataGridViewEmployee.Columns.Add("IDENTITYCARDEMPLOYEE", "CNMD");
            dataGridViewEmployee.Columns[5].DataPropertyName = "IDENTITYCARDEMPLOYEE";
            dataGridViewEmployee.Columns.Add("PHONEEMPLOYEE", "SĐT");
            dataGridViewEmployee.Columns[6].DataPropertyName = "PHONEEMPLOYEE";
            dataGridViewEmployee.Columns.Add("EMAILEMPLOYEE", "Email");
            dataGridViewEmployee.Columns[7].DataPropertyName = "EMAILEMPLOYEE";
            dataGridViewEmployee.Columns.Add("NAMETYPE", "Loại Nhân Viên");
            dataGridViewEmployee.Columns[8].DataPropertyName = "NAMETYPE";
            dataGridViewEmployee.Columns.Add("NAMEWARD", "Phường/Xã");
            dataGridViewEmployee.Columns[9].DataPropertyName = "NAMEWARD";
            dataGridViewEmployee.Columns.Add("NAMEDISTRICT", "Quận/Huyện");
            dataGridViewEmployee.Columns[10].DataPropertyName = "NAMEDISTRICT";
            dataGridViewEmployee.Columns.Add("NAMECITY", "Tỉnh/Thành Phố");
            dataGridViewEmployee.Columns[11].DataPropertyName = "NAMECITY";

            // clear databinding
            tpEmployeeTxtIdAccount.DataBindings.Clear();
            tpEmployeeTxtIdEmployee.DataBindings.Clear();
            tpEmployeeTxtName.DataBindings.Clear();
            tpEmployeeCboCity.DataBindings.Clear();
            tpEmployeeCboDistrict.DataBindings.Clear();
            tpEmployeeCboWard.DataBindings.Clear();
            tpEmployeeCboTypeOfEmployee.DataBindings.Clear();
            tpEmployeeCboGender.DataBindings.Clear();
            tpEmployeeDtpDateOfBirth.DataBindings.Clear();
            tpEmployeeTxtIdentityCard.DataBindings.Clear();
            tpEmployeeTxtPhone.DataBindings.Clear();
            tpEmployeeTxtEmail.DataBindings.Clear();

            //load data
            DataTable data = ADOHelper.Instance.ExecuteReader(@"select e.IDACCOUNT, e.IDEMPLOYEE, e.NAMEEMPLOYEE, e.DATEOFBIRTHEMPLOYEE, e.GENDEREMPLOYEE, e.IDENTITYCARDEMPLOYEE, e.PHONEEMPLOYEE, e.EMAILEMPLOYEE, t.NAMETYPE, w.NAMEWARD, d.NAMEDISTRICT, c.NAMECITY
                                                                from TBL_EMPLOYEE e, TBL_CITY c, TBL_DISTRICT d, TBL_WARD w, TBL_TYPEOFEMPLOYEE t
                                                                where e.IDTYPE = t.IDTYPE and e.IDWARD = w.IDWARD and w.IDDISTRICT = d.IDDISTRICT and d.IDCITY = c.IDCITY");
            dataGridViewEmployee.DataSource = data;

            // add databinding
            tpEmployeeTxtIdAccount.DataBindings.Add("Text", data, "IDACCOUNT", true, DataSourceUpdateMode.Never);
            tpEmployeeTxtIdEmployee.DataBindings.Add("Text", data, "IDEMPLOYEE", true, DataSourceUpdateMode.Never);
            tpEmployeeTxtName.DataBindings.Add("Text", data, "NAMEEMPLOYEE", true, DataSourceUpdateMode.Never);
            tpEmployeeCboCity.DataBindings.Add("Text", data, "NameCity", true, DataSourceUpdateMode.Never);
            tpEmployeeCboDistrict.DataBindings.Add("Text", data, "NameDistrict", true, DataSourceUpdateMode.Never);
            tpEmployeeCboWard.DataBindings.Add("Text", data, "NameWard", true, DataSourceUpdateMode.Never);
            tpEmployeeCboTypeOfEmployee.DataBindings.Add("Text", data, "NameType", true, DataSourceUpdateMode.Never);
            tpEmployeeCboGender.DataBindings.Add("Text", data, "GENDEREMPLOYEE", true, DataSourceUpdateMode.Never);
            tpEmployeeDtpDateOfBirth.DataBindings.Add("Text", data, "DATEOFBIRTHEMPLOYEE", true, DataSourceUpdateMode.Never);
            tpEmployeeTxtIdentityCard.DataBindings.Add("Text", data, "IDENTITYCARDEMPLOYEE", true, DataSourceUpdateMode.Never);
            tpEmployeeTxtPhone.DataBindings.Add("Text", data, "PhoneEmployee", true, DataSourceUpdateMode.Never);
            tpEmployeeTxtEmail.DataBindings.Add("Text", data, "EmailEmployee", true, DataSourceUpdateMode.Never);

        }

        #endregion

        #region Driver
        void loadDriver()
        {
            // add header datagridview
            dataGridViewDriver.Columns.Clear();
            dataGridViewDriver.Columns.Add("IDDRIVER", "Mã Tài Xế");
            dataGridViewDriver.Columns[0].DataPropertyName = "IDDRIVER";
            dataGridViewDriver.Columns.Add("NAMEDRIVER", "Tên Tài Xế");
            dataGridViewDriver.Columns[1].DataPropertyName = "NAMEDRIVER";
            dataGridViewDriver.Columns.Add("DATEOFBIRTHDRIVER", "Ngày Sinh");
            dataGridViewDriver.Columns[2].DataPropertyName = "DATEOFBIRTHDRIVER";
            dataGridViewDriver.Columns.Add("GENDERDRIVER", "Giới Tính");
            dataGridViewDriver.Columns[3].DataPropertyName = "GENDERDRIVER";
            dataGridViewDriver.Columns.Add("IDENTITYCARDDRIVER", "CNMD");
            dataGridViewDriver.Columns[4].DataPropertyName = "IDENTITYCARDDRIVER";
            dataGridViewDriver.Columns.Add("PHONEDRIVER", "SĐT");
            dataGridViewDriver.Columns[5].DataPropertyName = "PHONEDRIVER";
            dataGridViewDriver.Columns.Add("EMAILDRIVER", "Email");
            dataGridViewDriver.Columns[6].DataPropertyName = "EMAILDRIVER";
            dataGridViewDriver.Columns.Add("NAMEWARD", "Phường/Xã");
            dataGridViewDriver.Columns[7].DataPropertyName = "NAMEWARD";
            dataGridViewDriver.Columns.Add("NAMEDISTRICT", "Quận/Huyện");
            dataGridViewDriver.Columns[8].DataPropertyName = "NAMEDISTRICT";
            dataGridViewDriver.Columns.Add("NAMECITY", "Tỉnh/Thành Phố");
            dataGridViewDriver.Columns[9].DataPropertyName = "NAMECITY";

            // clear databinding
            tpDriverTxtIdDriver.DataBindings.Clear();
            tpDriverTxtName.DataBindings.Clear();
            tpDriverCboCity.DataBindings.Clear();
            tpDriverCboDistrict.DataBindings.Clear();
            tpDriverCboWard.DataBindings.Clear();
            tpDriverCboGender.DataBindings.Clear();
            tpDriverDtpDateOfBirth.DataBindings.Clear();
            tpDriverTxtPhone.DataBindings.Clear();
            tpDriverTxtIdentityCard.DataBindings.Clear();
            tpDriverTxtEmail.DataBindings.Clear();

            //load data
            DataTable data = ADOHelper.Instance.ExecuteReader(@"select d.IDDRIVER, d.NAMEDRIVER, d.DATEOFBIRTHDRIVER, d.GENDERDRIVER, d.IDENTITYCARDDRIVER, d.PHONEDRIVER, d.EMAILDRIVER, w.NAMEWARD, TBL_DISTRICT.NAMEDISTRICT, c.NAMECITY
                                                                from TBL_DRIVER d, TBL_CITY c, TBL_DISTRICT, TBL_WARD w
                                                                where d.IDWARD = w.IDWARD and w.IDDISTRICT = TBL_DISTRICT.IDDISTRICT and TBL_DISTRICT.IDCITY = c.IDCITY");
            dataGridViewDriver.DataSource = data;

            // add databinding
            tpDriverTxtIdDriver.DataBindings.Add("Text", data, "IDDRIVER", true, DataSourceUpdateMode.Never);
            tpDriverTxtName.DataBindings.Add("Text", data, "NAMEDRIVER", true, DataSourceUpdateMode.Never);
            tpDriverCboCity.DataBindings.Add("Text", data, "NameCity", true, DataSourceUpdateMode.Never);
            tpDriverCboDistrict.DataBindings.Add("Text", data, "NameDistrict", true, DataSourceUpdateMode.Never);
            tpDriverCboWard.DataBindings.Add("Text", data, "NameWard", true, DataSourceUpdateMode.Never);
            tpDriverCboGender.DataBindings.Add("Text", data, "GENDERDRIVER", true, DataSourceUpdateMode.Never);
            tpDriverDtpDateOfBirth.DataBindings.Add("Text", data, "DATEOFBIRTHDRIVER", true, DataSourceUpdateMode.Never);
            tpDriverTxtPhone.DataBindings.Add("Text", data, "PHONEDRIVER", true, DataSourceUpdateMode.Never);
            tpDriverTxtIdentityCard.DataBindings.Add("Text", data, "IDENTITYCARDDRIVER", true, DataSourceUpdateMode.Never);
            tpDriverTxtEmail.DataBindings.Add("Text", data, "EMAILDRIVER", true, DataSourceUpdateMode.Never);

        }
        #endregion

    }
}
