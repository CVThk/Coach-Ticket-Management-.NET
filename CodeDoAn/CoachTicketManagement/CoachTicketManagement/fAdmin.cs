using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using CoachTicketManagement.Core;
using CoachTicketManagement.Models;
using CoachTicketManagement.Utility;
using System.Linq;
using System.Data.SqlClient;

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
        private void fAdmin_Load(object sender, EventArgs e)
        {
            ControlHelper.Instance.loadTypeAccount(tpAccountCboTypeAccount);
            loadAccount();
        }
        private void tabControlAdmin_SelectedIndexChanged(object sender, EventArgs e)
        {
            switch (tabControlAdmin.SelectedIndex)
            {
                case 0:
                    ControlHelper.Instance.loadTypeAccount(tpAccountCboTypeAccount);
                    loadAccount();
                    break;
                case 1:
                    ControlHelper.Instance.loadCity(tpEmployeeCboCity);
                    ControlHelper.Instance.loadDistrict(tpEmployeeCboDistrict);
                    ControlHelper.Instance.loadWard(tpEmployeeCboWard);
                    ControlHelper.Instance.loadTypeEmployee(tpEmployeeCboTypeOfEmployee);
                    ControlHelper.Instance.loadGender(tpEmployeeCboGender);
                    loadEmployee();
                    break;
                case 2:
                    ControlHelper.Instance.loadCity(tpDriverCboCity);
                    ControlHelper.Instance.loadDistrict(tpDriverCboDistrict);
                    ControlHelper.Instance.loadWard(tpDriverCboWard);
                    ControlHelper.Instance.loadGender(tpDriverCboGender);
                    loadDriver();
                    break;
                case 3:
                    loadBusLine();
                    break;
                case 4:
                    loadTimeBusLine();
                    break;
                case 5:
                    loadTrip();
                    break;
            }
        }

        #region Account
        bool check_tpAccountAdd = false;
        void lockDefaultAccount()
        {
            tpAccountTxtIdAccount.Enabled = tpAccountTxtIdEmployee.Enabled = false;
            tpAccountTxtUsername.ReadOnly = true;
            tpAccountBtnSave.Enabled = false;
            check_tpAccountAdd = true;
        }
        void loadAccount()
        {
            lockDefaultAccount();

            dataGridViewAccount.Columns.Clear();
            dataGridViewAccount.Columns.Add("IDAccount", "Mã Tài Khoản");
            dataGridViewAccount.Columns[0].DataPropertyName = "IDAccount";
            dataGridViewAccount.Columns[0].ReadOnly = true;
            dataGridViewAccount.Columns.Add("IDEmployee", "Mã Nhân Viên");
            dataGridViewAccount.Columns[1].DataPropertyName = "IDEmployee";
            dataGridViewAccount.Columns[1].ReadOnly = true;
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
            dataGridViewAccount.ClearSelection();

            tpAccountTxtIdAccount.DataBindings.Add("Text", data, "IDAccount", true, DataSourceUpdateMode.Never);
            tpAccountTxtIdEmployee.DataBindings.Add("Text", data, "IDEmployee", true, DataSourceUpdateMode.Never);
            tpAccountTxtUsername.DataBindings.Add("Text", data, "Username", true, DataSourceUpdateMode.Never);
            tpAccountCboTypeAccount.DataBindings.Add("Text", data, "NameGroup", true, DataSourceUpdateMode.Never);
        }
        private void tpAccountBtnAdd_Click(object sender, EventArgs e)
        {
            check_tpAccountAdd = true;
            tpAccountBtnSave.Enabled = true;
            tpAccountTxtIdAccount.Clear();
            tpAccountTxtIdEmployee.Clear();
            tpAccountTxtUsername.Clear();
            tpAccountTxtIdEmployee.ReadOnly = tpAccountTxtUsername.ReadOnly = false;
            tpAccountTxtIdEmployee.Enabled = tpAccountTxtUsername.Enabled = true;
            tpAccountTxtIdEmployee.Focus();
        }

        private void dataGridViewAccount_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            if (e.RowIndex < 0)
            {
                tpAccountBtnSave.Enabled = false;
            }
            lockDefaultAccount();
        }

        private void tpAccountBtnDelete_Click(object sender, EventArgs e)
        {
            int idEmployee;
            if (int.TryParse(tpAccountTxtIdEmployee.Text, out idEmployee))
            {
                if (idEmployee == _curEmployee.Id)
                {
                    MessageBox.Show("Không nên xóa bạn chứ !!!", "Cảnh báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                    return;
                }
                Employee employee = EmployeeService.Instance.GetEmployee(idEmployee);
                if (employee != null)
                {
                    DialogResult r = MessageBox.Show("Bạn có chắc chắn muốn xóa tài khoản của " + employee.Name + "\nUsername: " + tpAccountTxtUsername.Text, "Cảnh báo", MessageBoxButtons.YesNo, MessageBoxIcon.Warning);
                    if (r == DialogResult.Yes)
                    {
                        int row = dataGridViewAccount.Rows.GetFirstRow(DataGridViewElementStates.Selected);
                        dataGridViewAccount.Rows.RemoveAt(row);
                        ADOHelper.Instance.ExecuteNonQuery("exec sp_DeleteAccount @idAccount=@para_0", new object[] { employee.IdAccount });
                        MessageBox.Show("Xóa tài khoản thành công.", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    }
                }
            }
        }

        private void tpAccountBtnUpdate_Click(object sender, EventArgs e)
        {
            int row = dataGridViewAccount.Rows.GetFirstRow(DataGridViewElementStates.Selected);
            if(row >= 0)
            {
                check_tpAccountAdd = false;
                tpAccountBtnSave.Enabled = true;
                tpAccountTxtIdEmployee.ReadOnly = true;
                tpAccountTxtIdEmployee.Enabled = false;
                tpAccountTxtUsername.ReadOnly = false;
                tpAccountTxtUsername.Enabled = true;
                tpAccountTxtUsername.Focus();
            }
            else
            {
                MessageBox.Show("Vui lòng chọn đối tượng nhân viên trong bảng trước khi cập nhật !!!", "Cảnh báo", MessageBoxButtons.OK, MessageBoxIcon.Hand);
            }
        }

        private void tpAccountBtnFind_Click(object sender, EventArgs e)
        {
            string textFind = tpAccountTxtFind.Text;
            List<Account> accounts = AccountService.Instance.GetAccounts();
            Account account = accounts.FirstOrDefault(x => x.Id.ToString() == textFind || x.IdEmployee.ToString() == textFind || x.UserName == textFind);
            if (account == null)
            {
                MessageBox.Show("Không tìm thấy thông tin phù hợp !!!", "Cảnh báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                tpAccountTxtFind.Clear();
            }
            else
            {
                int row = -1;
                int i = 0;
                foreach (DataGridViewRow item in dataGridViewAccount.Rows)
                {
                    if (item.Cells[0].Value.ToString() == account.Id.ToString())
                    {
                        row = i;
                        break;
                    }
                    i++;
                }
                if (row != -1)
                {
                    dataGridViewAccount.ClearSelection();
                    dataGridViewAccount.Rows[row].Selected = true;
                    tpAccountTxtIdAccount.Text = dataGridViewAccount.Rows[row].Cells[0].Value.ToString();
                    tpAccountTxtIdEmployee.Text = dataGridViewAccount.Rows[row].Cells[1].Value.ToString();
                    tpAccountTxtUsername.Text = dataGridViewAccount.Rows[row].Cells[2].Value.ToString();
                    tpAccountCboTypeAccount.Text = dataGridViewAccount.Rows[row].Cells[3].Value.ToString();
                    tpAccountTxtFind.Clear();
                }
            }
        }
        private void tpAccountBtnSave_Click(object sender, EventArgs e)
        {
            int idEmployee;
            string userName, typeAccount;
            if(!int.TryParse(tpAccountTxtIdEmployee.Text, out idEmployee))
            {
                MessageBox.Show("Mã nhân viên không phù hợp !!!", "Cảnh báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }
            Employee employee = EmployeeService.Instance.GetEmployee(idEmployee);
            if(employee == null)
            {
                MessageBox.Show("Nhân viên không tồn tại !!!", "Cảnh báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }
                
            userName = tpAccountTxtUsername.Text;
            if(string.IsNullOrEmpty(userName) || userName.Length < 5)
            {
                MessageBox.Show("Vui lòng nhập tên đăng nhập, ít nhất 5 ký tự!!!", "Cảnh báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }
            if (!string.IsNullOrEmpty(tpAccountCboTypeAccount.Text))
                typeAccount = tpAccountCboTypeAccount.Text;
            else
            {
                MessageBox.Show("Vui lòng chọn loại tài khoản!!!", "Cảnh báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }

            if(check_tpAccountAdd) // thêm
            {
                if (employee.IdAccount != 0)
                {
                    MessageBox.Show("Nhân viên đã có tài khoản !!!", "Cảnh báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                    return;
                }
                if(AccountService.Instance.GetAccounts().SingleOrDefault(x => x.UserName == userName) != null)
                {
                    MessageBox.Show("Tên đăng nhập đã tồn tại !!!", "Cảnh báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                    return;
                }
                string result;
                using (SqlConnection connection = new SqlConnection(ConnectionString.Instance.getConnectionString()))
                {
                    try
                    {
                        SqlCommand cmd = new SqlCommand(@"declare @strResult nvarchar(max)
                            exec sp_InsertAccount @idEmployee=@para_0,@userName=@para_1,@typeAccount=@para_2,@strResult=@strResult output
                            select @strResult", connection);
                        cmd.Parameters.AddWithValue("@para_0", idEmployee);
                        cmd.Parameters.AddWithValue("@para_1", userName);
                        cmd.Parameters.AddWithValue("@para_2", typeAccount);
                        SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                        DataTable data = new DataTable();
                        adapter.Fill(data);
                        result = data.Rows[0][0].ToString();
                    }
                    catch
                    {
                        result = "Thất bại !!!";
                    }
                }
                if(result == "Thành công.")
                    MessageBox.Show("Thêm tài khoản cho nhân viên " + employee.Name + " thành công.\nUsername: " + userName, "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                else MessageBox.Show("Thêm tài khoản thất bại !!!", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                loadAccount();
            }
            else // cập nhật
            {
                int idAccount;
                if(!int.TryParse(tpAccountTxtIdAccount.Text, out idAccount))
                {
                    MessageBox.Show("Mã tài khoản không đúng !!!", "Cảnh báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                    return;
                }    
                if(employee.IdAccount != idAccount)
                {
                    MessageBox.Show("Tài khoản không đồng nhất với mã nhân viên !!!", "Cảnh báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                    return;
                }
                string result;
                using (SqlConnection connection = new SqlConnection(ConnectionString.Instance.getConnectionString()))
                {
                    try
                    {
                        SqlCommand cmd = new SqlCommand(@"declare @strResult nvarchar(max)
                            exec sp_UpdateAccount @idEmployee=@para_0, @idAccount=@para_1, @userName=@para_2,@typeAccount=@para_3,@strResult=@strResult output
                            select @strResult", connection);
                        cmd.Parameters.AddWithValue("@para_0", idEmployee);
                        cmd.Parameters.AddWithValue("@para_1", idAccount);
                        cmd.Parameters.AddWithValue("@para_2", userName);
                        cmd.Parameters.AddWithValue("@para_3", typeAccount);
                        SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                        DataTable data = new DataTable();
                        adapter.Fill(data);
                        result = data.Rows[0][0].ToString();
                    }
                    catch
                    {
                        result = "Thất bại !!!";
                    }
                }
                if (result == "Thành công.")
                    MessageBox.Show("Cập nhật tài khoản cho nhân viên " + employee.Name + " thành công.\nUsername: " + userName, "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                else MessageBox.Show("Cập nhật tài khoản thất bại !!!", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                loadAccount();
            }    
        }
        #endregion


        //----------------------------------------------EMPLOYEE-------------------------------------------------------
        #region Employee - Mai Trung Tiến
        // enabel
        private void MoNut()
        {

            tpEmployeeTxtName.Enabled = true;
            tpEmployeeCboCity.Enabled = true;
            tpEmployeeCboDistrict.Enabled = true;
            tpEmployeeCboWard.Enabled = true;
            tpEmployeeCboTypeOfEmployee.Enabled = true;
            tpEmployeeCboGender.Enabled = true;
            tpEmployeeDtpDateOfBirth.Enabled = true;
            tpEmployeeTxtIdentityCard.Enabled = true;
            tpEmployeeTxtPhone.Enabled = true;
            tpEmployeeTxtEmail.Enabled = true;
        }
        private void DongNut()
        {

            tpEmployeeTxtName.Enabled = false;
            tpEmployeeCboCity.Enabled = false;
            tpEmployeeCboDistrict.Enabled = false;
            tpEmployeeCboWard.Enabled = false;
            tpEmployeeCboTypeOfEmployee.Enabled = false;
            tpEmployeeCboGender.Enabled = false;
            tpEmployeeDtpDateOfBirth.Enabled = false;
            tpEmployeeTxtIdentityCard.Enabled = false;
            tpEmployeeTxtPhone.Enabled = false;
            tpEmployeeTxtEmail.Enabled = false;
        }
        private bool check_tpEmployeeADD = false;
        void lockDefaulttpEmployee()
        {
            tpEmployeeTxtIdAccount.Enabled = tpEmployeeTxtIdEmployee.Enabled = false;
            tpEmployeeBtnSave.Enabled = false;
            check_tpEmployeeADD = true;
        }
        private void dataGridViewEmployee_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            if (e.RowIndex < 0)
            {
                tpEmployeeBtnSave.Enabled = false;
            }
            lockDefaulttpEmployee();
            DongNut();
        }
        void loadEmployee()
        {
            // add header datagridview
            lockDefaulttpEmployee();
            DongNut();
            dataGridViewEmployee.Columns.Clear();
            dataGridViewEmployee.Columns.Add("IDAccount", "Mã Tàihoản");
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

        private void tpEmployeeBtnAdd_Click(object sender, EventArgs e)
        {
            check_tpEmployeeADD = true;
            MoNut();
            tpEmployeeBtnSave.Enabled = true;
            tpEmployeeTxtIdAccount.Clear();
            tpEmployeeTxtIdEmployee.Clear();
            tpEmployeeTxtName.Clear();
            tpEmployeeTxtName.Focus();
            tpEmployeeTxtIdentityCard.Clear();
            tpEmployeeTxtPhone.Clear();
            tpEmployeeTxtEmail.Clear();
            tpEmployeeDtpDateOfBirth.Text = "01-01-2023";
            tpEmployeeCboWard.SelectedIndex = 1;
            tpEmployeeCboCity.SelectedIndex = 1;
            tpEmployeeCboDistrict.SelectedIndex = 1;
            tpEmployeeCboGender.Text = "Nam";
            tpEmployeeCboTypeOfEmployee.SelectedIndex = 1;
        }

        private void tpEmployeeBtnDelete_Click(object sender, EventArgs e)
        {
            int idEmployee;
            try
            {
                if (int.TryParse(tpEmployeeTxtIdEmployee.Text, out idEmployee))
                {
                    Employee employee = EmployeeService.Instance.GetEmployee(idEmployee);
                    if (employee != null)
                    {
                        DialogResult r = MessageBox.Show("Bạn có chắc muốn xóa Nhân Viên?", "Cảnh báo", MessageBoxButtons.YesNo, MessageBoxIcon.Stop);
                        if (r == DialogResult.Yes)
                        {

                            using (SqlConnection connection = new SqlConnection(ConnectionString.Instance.getConnectionString()))
                            {
                                string query = string.Format(@"DECLARE @XUATID NVARCHAR(MAX)
                                                                exec sp_DeleteEMPLOYEE {0}", idEmployee);
                                connection.Open();
                                SqlCommand cmd = new SqlCommand(query, connection);
                                if (query != null)
                                {

                                    cmd.ExecuteNonQuery();
                                    MessageBox.Show("Xóa Nhân Viên Thành Công!!!", "Hoàn Thành", MessageBoxButtons.OK);
                                    int row = dataGridViewEmployee.Rows.GetFirstRow(DataGridViewElementStates.Selected);
                                    dataGridViewEmployee.Rows.RemoveAt(row);
                                }
                                connection.Close();

                            }
                        }
                    }

                }
            }
            catch
            {
                MessageBox.Show("Không Thể Xóa !!!", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Stop);
            }
            DongNut();
        }

        private void tpEmployeeBtnUpdate_Click(object sender, EventArgs e)
        {
            MoNut();
            int row = dataGridViewEmployee.Rows.GetFirstRow(DataGridViewElementStates.Selected);
            if (row >= 0)
            {
                check_tpEmployeeADD = false;
                tpEmployeeBtnSave.Enabled = true;
                tpEmployeeTxtName.Focus();
            }
            else
            {
                MessageBox.Show("Vui lòng chọn đối tượng nhân viên trong bảng trước khi cập nhật !!!", "Cảnh báo", MessageBoxButtons.OK, MessageBoxIcon.Hand);
            }
        }

        private void tpEmployeeBtnSave_Click(object sender, EventArgs e)
        {
            int idEmployee;
            int.TryParse(tpEmployeeTxtIdEmployee.Text, out idEmployee);

            Employee __Employee = EmployeeService.Instance.GetEmployee(idEmployee);
            if (string.IsNullOrEmpty(tpEmployeeTxtName.Text))
            {
                MessageBox.Show("Không được bỏ trống tên !!!", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }
            if (string.IsNullOrEmpty(tpEmployeeTxtIdentityCard.Text))
            {
                MessageBox.Show("Không được bỏ trống CMND!!!", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }
            if (string.IsNullOrEmpty(tpEmployeeTxtPhone.Text))
            {
                MessageBox.Show("Không được bỏ trống SĐT !!!", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }
            if (string.IsNullOrEmpty(tpEmployeeTxtEmail.Text))
            {
                MessageBox.Show("Không được bỏ trống MAIL !!!", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }
            if (DateTime.Now.Year - tpEmployeeDtpDateOfBirth.Value.Year < 15)
            {
                MessageBox.Show("Tuổi không đủ !!!", "Cảnh báo", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                return;
            }
            if (tpEmployeeCboCity.SelectedItem == null)
            {
                MessageBox.Show("Vui lòng chọn Tỉnh/Thành Phố !!!", "Cảnh báo", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                return;
            }
            if (tpEmployeeCboDistrict.SelectedItem == null)
            {
                MessageBox.Show("Vui lòng chọn quận huyện !!!", "Cảnh báo", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                return;
            }
            if (tpEmployeeCboWard.SelectedItem == null)
            {
                MessageBox.Show("Vui lòng chọn phường/xã !!!", "Cảnh báo", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                return;
            }

            ///---------------
            if (check_tpEmployeeADD == false)
            {

                if (__Employee == null)
                {
                    MessageBox.Show("Chưa load được dữ liệu nhân viên!!!", "Cảnh báo", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                }
                else
                {
                    if (tpEmployeeTxtName.Text != __Employee.Name || (int)tpEmployeeCboWard.SelectedValue != __Employee.IdWard ||
                        tpEmployeeCboGender.SelectedItem.ToString() != __Employee.Gender || tpEmployeeDtpDateOfBirth.Value != __Employee.DateOfBirth ||
                        (int)tpEmployeeCboTypeOfEmployee.SelectedValue != __Employee.IdTypeOfEmployee || tpEmployeeTxtIdentityCard.Text != __Employee.IdentityCard ||
                        tpEmployeeTxtPhone.Text != __Employee.Phone || tpEmployeeTxtEmail.Text != __Employee.Email
                        )
                    {
                        DialogResult r = MessageBox.Show("Thông tin có sự thay đổi. Bạn có muốn cập nhật lại dữ liệu?", "Cảnh báo", MessageBoxButtons.YesNo, MessageBoxIcon.Stop);
                        if (r == DialogResult.Yes)
                        {
                            try
                            {
                                using (SqlConnection connection = new SqlConnection(ConnectionString.Instance.getConnectionString()))
                                {
                                    string query = string.Format(@"SET DATEFORMAT DMY exec sp_UpdateEMPLOYEE {0},{1},{2},{3},N'{4}','{5}',N'{6}','{7}','{8}','{9}'",
                                                      __Employee.Id, (int)tpEmployeeCboWard.SelectedValue, tpEmployeeCboTypeOfEmployee.SelectedValue, __Employee.IdPermissionGroup,
                                                       tpEmployeeTxtName.Text, tpEmployeeDtpDateOfBirth.Value, tpEmployeeCboGender.Text,
                                                        tpEmployeeTxtIdentityCard.Text, tpEmployeeTxtPhone.Text, tpEmployeeTxtEmail.Text);
                                    connection.Open();
                                    SqlCommand cmd = new SqlCommand(query, connection);
                                    if (query != null)
                                    {
                                        cmd.ExecuteNonQuery();
                                        MessageBox.Show("Cập Nhật Thành Công!!!", "Hoàn Thành", MessageBoxButtons.OK);

                                    }
                                    connection.Close();
                                    loadEmployee();
                                }

                            }
                            catch
                            {
                                MessageBox.Show("Thông tin bị trùng !!!", "Cảnh báo", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                            }
                        }
                    }

                }
            }
            else // insert
            {
                DialogResult r = MessageBox.Show(" Bạn có muốn thêm nhân viên?", "Thông Báo", MessageBoxButtons.YesNo, MessageBoxIcon.Stop);
                if (r == DialogResult.Yes)
                {
                    try
                    {
                        using (SqlConnection connection = new SqlConnection(ConnectionString.Instance.getConnectionString()))
                        {
                            string query = string.Format(@"SET DATEFORMAT DMY exec sp_InsertEMPLOYEE {0},{1},{2},N'{3}','{4}',N'{5}','{7}','{7}','{8}'",
                                              (int)tpEmployeeCboWard.SelectedValue, tpEmployeeCboTypeOfEmployee.SelectedValue, Convert.ToInt32(3),
                                               tpEmployeeTxtName.Text, tpEmployeeDtpDateOfBirth.Value, tpEmployeeCboGender.Text,
                                                tpEmployeeTxtIdentityCard.Text, tpEmployeeTxtPhone.Text, tpEmployeeTxtEmail.Text);
                            connection.Open();
                            SqlCommand cmd = new SqlCommand(query, connection);
                            if (query != null)
                            {
                                cmd.ExecuteNonQuery();
                                MessageBox.Show("Thêm Thành Công!!!", "Hoàn Thành", MessageBoxButtons.OK);

                            }
                            connection.Close();
                            loadEmployee();
                        }

                    }
                    catch
                    {
                        MessageBox.Show("Thông tin bị trùng !!!", "Cảnh báo", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                    }
                }
            }
        }
        private void tpEmployeeBtnFind_Click(object sender, EventArgs e)
        {
            string textFind = tpEmployeeTxtFind.Text;
            List<Employee> employees = EmployeeService.Instance.GetEmployees();
            Employee emp = employees.FirstOrDefault(x => x.Id.ToString() == textFind || x.Phone.ToString() == textFind || x.Name == textFind || x.IdentityCard == textFind || x.Email.ToString() == textFind);
            if (emp == null)
            {
                MessageBox.Show("Không tìm thấy thông tin phù hợp !!!", "Cảnh báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                tpEmployeeTxtFind.Clear();
            }
            else
            {
                int row = -1;
                int i = 0;
                foreach (DataGridViewRow item in dataGridViewEmployee.Rows)
                {
                    if (item.Cells[1].Value.ToString() == emp.Id.ToString())
                    {
                        row = i;
                        break;
                    }
                    i++;
                }
                if (row != -1)
                {

                    dataGridViewEmployee.ClearSelection();
                    dataGridViewEmployee.Rows[row].Selected = true;

                    tpEmployeeTxtIdAccount.Text = dataGridViewEmployee.Rows[row].Cells[0].Value.ToString();
                    tpEmployeeTxtIdEmployee.Text = dataGridViewEmployee.Rows[row].Cells[1].Value.ToString();
                    tpEmployeeTxtName.Text = dataGridViewEmployee.Rows[row].Cells[2].Value.ToString();

                    tpEmployeeDtpDateOfBirth.Value = DateTime.Parse(dataGridViewEmployee.Rows[row].Cells[3].Value.ToString());

                    tpEmployeeCboGender.Text = dataGridViewEmployee.Rows[row].Cells[4].Value.ToString();
                    tpEmployeeTxtIdentityCard.Text = dataGridViewEmployee.Rows[row].Cells[5].Value.ToString();
                    tpEmployeeTxtPhone.Text = dataGridViewEmployee.Rows[row].Cells[6].Value.ToString();
                    tpEmployeeTxtEmail.Text = dataGridViewEmployee.Rows[row].Cells[7].Value.ToString();
                    tpEmployeeCboTypeOfEmployee.Text = dataGridViewEmployee.Rows[row].Cells[8].Value.ToString();

                    tpEmployeeCboWard.Text = dataGridViewEmployee.Rows[row].Cells[9].Value.ToString();
                    tpEmployeeCboDistrict.Text = dataGridViewEmployee.Rows[row].Cells[10].Value.ToString();
                    tpEmployeeCboCity.Text = dataGridViewEmployee.Rows[row].Cells[11].Value.ToString();

                    tpEmployeeTxtFind.Clear();
                }
            }
        }
        // Check các điểu kiện!!!
        private void tpEmployeeCboCity_SelectedIndexChanged(object sender, EventArgs e)
        {
            ComboBox control = (ComboBox)sender;
            if (control.SelectedValue != null)
            {
                ControlHelper.Instance.loadDistrict(tpEmployeeCboDistrict, (int)control.SelectedValue);
            }
            int idEmployee;
            if (int.TryParse(tpEmployeeTxtIdEmployee.Text, out idEmployee))
            {
                Employee __Employee = EmployeeService.Instance.GetEmployee(idEmployee);
            }
        }
        private void tpEmployeeCboDistrict_SelectedIndexChanged(object sender, EventArgs e)
        {
            ComboBox control = (ComboBox)sender;
            if (control.SelectedValue != null)
            {
                ControlHelper.Instance.loadWard(tpEmployeeCboWard, (int)control.SelectedValue);
            }
        }
        private void tpEmployeeTxtEmail_Leave(object sender, EventArgs e)
        {
            if (!Utilities.Instance.CheckGmail(tpEmployeeTxtEmail.Text))
            {
                MessageBox.Show("Mail không đúng định dạng!!!", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                tpEmployeeTxtEmail.Focus();
                return;
            }
            string mail = tpEmployeeTxtEmail.Text;
            List<Employee> employees = EmployeeService.Instance.GetEmployees();
            Employee employee = employees.SingleOrDefault(x => x.Email == mail);

            if (employee != null)
            {
                MessageBox.Show("Mail bị trùng!!!", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                tpEmployeeTxtEmail.Focus();
                return;
            }
        }

        private void tpEmployeeTxtPhone_Leave(object sender, EventArgs e)
        {
            if (!Utilities.Instance.CheckPhone(tpEmployeeTxtPhone.Text))
            {
                MessageBox.Show("SDT không đúng định dạng!!!", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                tpEmployeeTxtPhone.Focus();
                return;
            }
            string phone = tpEmployeeTxtPhone.Text;
            List<Employee> employees = EmployeeService.Instance.GetEmployees();
            Employee employee = employees.SingleOrDefault(x => x.Phone == phone);

            if (employee != null)
            {
                MessageBox.Show("SĐT bị trùng!!!", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                tpEmployeeTxtPhone.Focus();
                return;
            }
        }

        private void tpEmployeeTxtIdentityCard_Leave(object sender, EventArgs e)
        {
            if (!Utilities.Instance.CheckIdentityCard(tpEmployeeTxtIdentityCard.Text))
            {
                MessageBox.Show("CMND/CCCD không đúng định dạng!!!", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                tpEmployeeTxtIdentityCard.Focus();
                return;
            }

            string IDCard = tpEmployeeTxtIdentityCard.Text;
            List<Employee> employees = EmployeeService.Instance.GetEmployees();
            Employee employee = employees.SingleOrDefault(x => x.IdentityCard == IDCard);

            if (employee != null)
            {
                MessageBox.Show("CMND/CCCD bị trùng!!!", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                tpEmployeeTxtIdentityCard.Focus();
                return;
            }
        }
        private void tpEmployeeTxtIdentityCard_KeyPress(object sender, KeyPressEventArgs e)
        {
            Control ctr = (Control)sender;
            if (!Char.IsDigit(e.KeyChar) && !Char.IsControl(e.KeyChar))
                e.Handled = true;
        }

        private void tpEmployeeTxtPhone_KeyPress(object sender, KeyPressEventArgs e)
        {
            Control ctr = (Control)sender;
            if (!Char.IsDigit(e.KeyChar) && !Char.IsControl(e.KeyChar))
                e.Handled = true;
        }
        #endregion


        #region Driver Hạnh
        bool check_tpDriverAdd = false;
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
        private void tpDriverBtnDelete_Click(object sender, EventArgs e)
        {
            int idDriver;
            if (int.TryParse(tpDriverTxtIdDriver.Text, out idDriver))
            {
                Driver driver = DriverService.Instance.GetDriver(idDriver);
                if (driver != null)
                {

                    int rowDriver = ADOHelper.Instance.ExecuteScalar(@"select count(*) from TBL_TRIP where IDDRIVER = @para_0", new object[] { idDriver });
                    if (rowDriver > 0)
                    {
                        MessageBox.Show("Chưa thể xóa vì lịch sử tài xế " + driver.Name + " đã lái xe trong hệ thống!!!", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                        return;
                    }

                    DialogResult r = MessageBox.Show("Bạn có chắc chắn muốn xóa tài xế " + tpDriverTxtName.Text + " ?", "Cảnh báo", MessageBoxButtons.YesNo, MessageBoxIcon.Warning);
                    if (r == DialogResult.Yes)
                    {
                        int row = dataGridViewDriver.Rows.GetFirstRow(DataGridViewElementStates.Selected);
                        dataGridViewDriver.Rows.RemoveAt(row);
                        ADOHelper.Instance.ExecuteNonQuery("sp_deleteDriver @idDriver=@para_0", new object[] { driver.Id });
                        MessageBox.Show("Xóa tài khoản thành công.", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    }
                }
            }
        }

        private void tpDriverBtnSave_Click(object sender, EventArgs e)
        {

            if (string.IsNullOrEmpty(tpDriverTxtName.Text))
            {
                MessageBox.Show("Không được bỏ trống tên !!!", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }
            if (string.IsNullOrEmpty(tpDriverTxtIdentityCard.Text))
            {
                MessageBox.Show("Không được bỏ trống CMND!!!", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }
            if (string.IsNullOrEmpty(tpDriverTxtPhone.Text))
            {
                MessageBox.Show("Không được bỏ trống SĐT !!!", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }
            if (string.IsNullOrEmpty(tpDriverTxtEmail.Text))
            {
                MessageBox.Show("Không được bỏ trống MAIL !!!", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }
            if (DateTime.Now.Year - tpDriverDtpDateOfBirth.Value.Year < 27)
            {
                MessageBox.Show("Tuổi không đủ !!!", "Cảnh báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }
            if (tpDriverCboCity.SelectedItem == null)
            {
                MessageBox.Show("Vui lòng chọn Tỉnh/Thành Phố !!!", "Cảnh báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }
            if (tpDriverCboDistrict.SelectedItem == null)
            {
                MessageBox.Show("Vui lòng chọn quận huyện !!!", "Cảnh báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }
            if (tpDriverCboWard.SelectedItem == null)
            {
                MessageBox.Show("Vui lòng chọn phường/xã !!!", "Cảnh báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }
            if (string.IsNullOrEmpty(tpDriverCboGender.Text))
            {
                MessageBox.Show("Vui lòng chọn giới tính !!!", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }
            List<Employee> employees = EmployeeService.Instance.GetEmployees();
            if(employees.SingleOrDefault(x => x.Phone == tpDriverTxtPhone.Text) != null)
            {
                MessageBox.Show("Số điện thoại này đã tồn tại trong hệ thống !!!", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }
            if (employees.SingleOrDefault(x => x.IdentityCard == tpDriverTxtIdentityCard.Text) != null)
            {
                MessageBox.Show("CMND/CCCD này đã tồn tại trong hệ thống !!!", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }
            if (employees.SingleOrDefault(x => x.Email == tpDriverTxtEmail.Text) != null)
            {
                MessageBox.Show("Email này đã tồn tại trong hệ thống !!!", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }
            if (check_tpDriverAdd == false)
            {
                DialogResult r = MessageBox.Show("Thông tin có sự thay đổi. Bạn có muốn cập nhật lại dữ liệu?", "Cảnh báo", MessageBoxButtons.YesNo, MessageBoxIcon.Question);
                if (r == DialogResult.Yes)
                {
                    try
                    {
                        using (SqlConnection connection = new SqlConnection(ConnectionString.Instance.getConnectionString()))
                        {
                            string query = string.Format(@"SET DATEFORMAT DMY exec sp_UpdateDriver {0},{1},N'{2}','{3}',N'{4}','{5}','{6}','{7}'",
                                              int.Parse(tpDriverTxtIdDriver.Text), (int)tpDriverCboWard.SelectedValue, tpDriverTxtName.Text, tpDriverDtpDateOfBirth.Value.ToString("dd/MM/yyyy"), tpDriverCboGender.Text, tpDriverTxtIdentityCard.Text, tpDriverTxtPhone.Text, tpDriverTxtEmail.Text);
                            connection.Open();
                            SqlCommand cmd = new SqlCommand(query, connection);
                            if (query != null)
                            {
                                cmd.ExecuteNonQuery();
                                MessageBox.Show("Cập Nhật Thành Công!!!", "Hoàn Thành", MessageBoxButtons.OK);

                            }
                            connection.Close();
                            loadDriver();
                        }
                    }
                    catch
                    {
                        MessageBox.Show("Thông tin bị trùng !!!", "Cảnh báo", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                    }
                }
            }
            else // insert
            {
                DialogResult r = MessageBox.Show(" Bạn có muốn thêm nhân viên?", "Thông Báo", MessageBoxButtons.YesNo, MessageBoxIcon.Question);
                if (r == DialogResult.Yes)
                {
                    try
                    {
                        List<Driver> drivers = DriverService.Instance.GetDrivers();
                        if (drivers.SingleOrDefault(x => x.Phone == tpDriverTxtPhone.Text) != null || drivers.SingleOrDefault(x => x.IdentityCard == tpDriverTxtIdentityCard.Text) != null)
                        {
                            MessageBox.Show("Thông tin tài xế đã tồn tại trong hệ thống !!!", "Cảnh báo", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                            return;
                        }
                        if (!Utilities.Instance.CheckPhone(tpDriverTxtPhone.Text))
                        {
                            MessageBox.Show("Số điện thoại không đúng định dạng !!!", "Cảnh báo", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                            return;
                        }
                        if (!Utilities.Instance.CheckIdentityCard(tpDriverTxtIdentityCard.Text))
                        {
                            MessageBox.Show("CMND/CCCD không đúng định dạng !!!", "Cảnh báo", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                            return;
                        }
                        if (tpDriverTxtEmail.Text != "" && !Utilities.Instance.CheckGmail(tpDriverTxtEmail.Text))
                        {
                            MessageBox.Show("Email không đúng định dạng !!!", "Cảnh báo", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                            return;
                        }
                        using (SqlConnection connection = new SqlConnection(ConnectionString.Instance.getConnectionString()))
                        {
                            string query = string.Format(@"SET DATEFORMAT DMY INSERT INTO TBL_DRIVER(IDWARD, NAMEDRIVER, DATEOFBIRTHDRIVER, GENDERDRIVER, IDENTITYCARDDRIVER,PHONEDRIVER, EMAILDRIVER) values({0},N'{1}','{2}',N'{3}','{4}','{5}','{6}')",
                                              (int)tpDriverCboWard.SelectedValue, tpDriverTxtName.Text, tpDriverDtpDateOfBirth.Value.ToString("dd/MM/yyyy"), tpDriverCboGender.Text,
                                                tpDriverTxtIdentityCard.Text, tpDriverTxtPhone.Text, tpDriverTxtEmail.Text);
                            connection.Open();
                            SqlCommand cmd = new SqlCommand(query, connection);
                            if (query != null)
                            {
                                cmd.ExecuteNonQuery();
                                MessageBox.Show("Thêm Thành Công!!!", "Hoàn Thành", MessageBoxButtons.OK);

                            }
                            connection.Close();
                            loadDriver();
                        }

                    }
                    catch
                    {
                        MessageBox.Show("Thông tin bị trùng !!!", "Cảnh báo", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                    }
                }
            }

        }


        private void tpDriverBtnUpdate_Click(object sender, EventArgs e)
        {
            int row = dataGridViewDriver.Rows.GetFirstRow(DataGridViewElementStates.Selected);
            if (row >= 0)
            {
                check_tpDriverAdd = false;
                tpDriverBtnSave.Enabled = true;
                tpDriverTxtName.Focus();
            }
            else
            {
                MessageBox.Show("Vui lòng chọn đối tượng tài xế trong bảng trước khi cập nhật !!!", "Cảnh báo", MessageBoxButtons.OK, MessageBoxIcon.Hand);
            }

        }

        private void tpDriverBtnAdd_Click(object sender, EventArgs e)
        {
            tpDriverBtnSave.Enabled = true;
            check_tpDriverAdd = true;
            tpDriverTxtIdDriver.Clear();
            tpDriverTxtName.Clear();
            tpDriverTxtPhone.Clear();
            tpDriverTxtEmail.Clear();
            tpDriverTxtIdentityCard.Clear();
            tpDriverTxtName.Focus();
        }
        private void tpDriverBtnFind_Click(object sender, EventArgs e)
        {
            string textFind = tpDriverTxtFind.Text;
            List<Driver> drivers = DriverService.Instance.GetDrivers();
            Driver driver = drivers.FirstOrDefault(x => x.Id.ToString() == textFind || x.IdentityCard.ToString() == textFind || x.Phone.ToString() == textFind || x.Email.ToString() == textFind);
            if (driver == null)
            {
                MessageBox.Show("Không tìm thấy thông tin phù hợp !!!", "Cảnh báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                tpAccountTxtFind.Clear();
            }
            else
            {
                int row = -1;
                int i = 0;
                foreach (DataGridViewRow item in dataGridViewDriver.Rows)
                {
                    if (item.Cells[0].Value.ToString() == driver.Id.ToString())
                    {
                        row = i;
                        break;
                    }
                    i++;
                }
                if (row != -1)
                {
                    //DateTime t = DateTime.Parse(tpDriverDtpDateOfBirth.ToString());
                    dataGridViewDriver.ClearSelection();
                    dataGridViewDriver.Rows[row].Selected = true;
                    tpDriverTxtIdDriver.Text = dataGridViewDriver.Rows[row].Cells[0].Value.ToString();
                    tpDriverTxtName.Text = dataGridViewDriver.Rows[row].Cells[1].Value.ToString();
                    tpDriverDtpDateOfBirth.Value = DateTime.Parse(dataGridViewDriver.Rows[row].Cells[2].Value.ToString());
                    tpDriverCboGender.Text = dataGridViewDriver.Rows[row].Cells[3].Value.ToString();
                    tpDriverTxtIdentityCard.Text = dataGridViewDriver.Rows[row].Cells[4].Value.ToString();
                    tpDriverTxtPhone.Text = dataGridViewDriver.Rows[row].Cells[5].Value.ToString();
                    tpDriverTxtEmail.Text = dataGridViewDriver.Rows[row].Cells[6].Value.ToString();
                    tpDriverCboWard.Text = dataGridViewDriver.Rows[row].Cells[7].Value.ToString();
                    tpDriverCboDistrict.Text = dataGridViewDriver.Rows[row].Cells[8].Value.ToString();

                    tpDriverCboCity.Text = dataGridViewDriver.Rows[row].Cells[9].Value.ToString();
                    tpDriverTxtFind.Clear();
                }
            }
        }
        private void dataGridViewDriver_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            if (e.RowIndex >= 0)
            {
                tpDriverBtnSave.Enabled = false;
            }
        }

        private void tpDriverCboCity_SelectedIndexChanged(object sender, EventArgs e)
        {
            ComboBox control = (ComboBox)sender;
            if (control.SelectedValue != null)
            {
                ControlHelper.Instance.loadDistrict(tpDriverCboDistrict, (int)control.SelectedValue);
            }
        }

        private void tpDriverCboDistrict_SelectedIndexChanged(object sender, EventArgs e)
        {
            ComboBox control = (ComboBox)sender;
            if (control.SelectedValue != null)
            {
                ControlHelper.Instance.loadWard(tpDriverCboWard, (int)control.SelectedValue);
            }
        }

        private void tpDriverTxtIdentityCard_KeyPress(object sender, KeyPressEventArgs e)
        {
            Control control = (Control)sender;
            if (!Char.IsDigit(e.KeyChar) && !Char.IsControl(e.KeyChar))
                e.Handled = true;
        }

        private void tpDriverTxtIdentityCard_Leave(object sender, EventArgs e)
        {
            if (!Utilities.Instance.CheckIdentityCard(tpDriverTxtIdentityCard.Text))
            {
                MessageBox.Show("CMND/CCCD không đúng định dạng!!!", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                tpDriverTxtIdentityCard.Focus();
                return;
            }
        }

        #endregion

        #region Busline
        void loadBusLine()
        {
            dataGridViewBusLine.Columns.Clear();
            dataGridViewBusLine.Columns.Add("IDBUSLINE", "Mã Tuyến Xe");
            dataGridViewBusLine.Columns[0].DataPropertyName = "IDBUSLINE";
            dataGridViewBusLine.Columns.Add("DEPARTURESTATION", "Điểm Khởi Hành");
            dataGridViewBusLine.Columns[1].DataPropertyName = "DEPARTURESTATION";
            dataGridViewBusLine.Columns.Add("DESTINATIONSTATION", "Điểm Đến");
            dataGridViewBusLine.Columns[2].DataPropertyName = "DESTINATIONSTATION";

            tpBusLineIdBusLine.DataBindings.Clear();
            tpBusLineTxtDepartureStation.DataBindings.Clear();
            tpBusLineTxtDestinationStation.DataBindings.Clear();

            DataTable data = ADOHelper.Instance.ExecuteReader("select * from TBL_BUSLINE");
            dataGridViewBusLine.DataSource = data;

            tpBusLineIdBusLine.DataBindings.Add("Text", data, "IDBUSLINE", true, DataSourceUpdateMode.Never);
            tpBusLineTxtDepartureStation.DataBindings.Add("Text", data, "DEPARTURESTATION", true, DataSourceUpdateMode.Never);
            tpBusLineTxtDestinationStation.DataBindings.Add("Text", data, "DESTINATIONSTATION", true, DataSourceUpdateMode.Never);
        }
        private void tpBusLineIdBusLine_TextChanged(object sender, EventArgs e)
        {
            ControlHelper.Instance.loadCboPickUpPoint(tpBusLineCboListPickUpPoint, int.Parse(tpBusLineIdBusLine.Text));
            ControlHelper.Instance.loadCboDropOffPoint(tpBusLineCboListDropOffPoint, int.Parse(tpBusLineIdBusLine.Text));
        }
        #endregion

        #region Time BusLine
        void loadTimeBusLine()
        {
            dataGridViewTimeBusLine.Columns.Clear();
            dataGridViewTimeBusLine.Columns.Add("IDTIME", "Mã Thời Gian");
            dataGridViewTimeBusLine.Columns[0].DataPropertyName = "IDTIME";
            dataGridViewTimeBusLine.Columns.Add("STARTTIME", "Thời Gian Bắt Đầu");
            dataGridViewTimeBusLine.Columns[1].DataPropertyName = "STARTTIME";
            dataGridViewTimeBusLine.Columns.Add("FINISHTIME", "Thời Gian Kết Thúc");
            dataGridViewTimeBusLine.Columns[2].DataPropertyName = "FINISHTIME";

            tpTimeBusLineTxtIDTime.DataBindings.Clear();
            tpTimeBusLineDtpStarTime.DataBindings.Clear();
            tpTimeBusLineDtpFinishTime.DataBindings.Clear();

            DataTable data = ADOHelper.Instance.ExecuteReader("select * from TBL_TIMEBUSLINE");
            dataGridViewTimeBusLine.DataSource = data;

            tpTimeBusLineTxtIDTime.DataBindings.Add("Text", data, "IDTIME", true, DataSourceUpdateMode.Never);
            tpTimeBusLineDtpStarTime.DataBindings.Add("Text", data, "STARTTIME", true, DataSourceUpdateMode.Never);
            tpTimeBusLineDtpFinishTime.DataBindings.Add("Text", data, "FINISHTIME", true, DataSourceUpdateMode.Never);
        }
        private void tpTimeBusLineDtpFinishTime_ValueChanged(object sender, EventArgs e)
        {
            tpTimeBusLineTxtTotalTime.Text = Utilities.Instance.MinusTime(tpTimeBusLineDtpStarTime.Value, tpTimeBusLineDtpFinishTime.Value).ToString("HH:mm:ss");
        }

        private void tpTimeBusLineDtpStarTime_ValueChanged(object sender, EventArgs e)
        {
            tpTimeBusLineTxtTotalTime.Text = Utilities.Instance.MinusTime(tpTimeBusLineDtpStarTime.Value, tpTimeBusLineDtpFinishTime.Value).ToString("HH:mm:ss");
        }
        #endregion

        #region Trip
        void loadTrip()
        {
            tpTripDataGridViewTrip.Columns.Clear();
            tpTripDataGridViewTrip.Columns.Add("IDTRIP", "Mã Chuyến Xe");
            tpTripDataGridViewTrip.Columns[0].DataPropertyName = "IDTRIP";
            tpTripDataGridViewTrip.Columns.Add("Time", "Thời Gian");
            tpTripDataGridViewTrip.Columns[1].DataPropertyName = "Time";
            tpTripDataGridViewTrip.Columns.Add("BUSLINE", "Tuyến Xe");
            tpTripDataGridViewTrip.Columns[2].DataPropertyName = "BUSLINE";
            tpTripDataGridViewTrip.Columns.Add("NAMEEMPLOYEE", "Tên Nhân Viên");
            tpTripDataGridViewTrip.Columns[3].DataPropertyName = "NAMEEMPLOYEE";
            tpTripDataGridViewTrip.Columns.Add("LICENSEPLATE", "Biển Số");
            tpTripDataGridViewTrip.Columns[4].DataPropertyName = "LICENSEPLATE";
            tpTripDataGridViewTrip.Columns.Add("NAMEDRIVER", "Tên Tài Xế");
            tpTripDataGridViewTrip.Columns[5].DataPropertyName = "NAMEDRIVER";
            tpTripDataGridViewTrip.Columns.Add("DEPARTUREDAY", "Ngày Khởi Hành");
            tpTripDataGridViewTrip.Columns[6].DataPropertyName = "DEPARTUREDAY";
            tpTripDataGridViewTrip.Columns.Add("AMOUNTEMPTYSEAT", "Số Ghế Trống");
            tpTripDataGridViewTrip.Columns[7].DataPropertyName = "AMOUNTEMPTYSEAT";

            tpTripTxtIDTrip.DataBindings.Clear();
            tpTripCboIDTimeBusLine.DataBindings.Clear();
            tpTripIDBusLine.DataBindings.Clear();
            tpTripCboIDEmployee.DataBindings.Clear();
            tpTripIDCoach.DataBindings.Clear();
            tpTripIDDriver.DataBindings.Clear();
            tpTripDepartureDay.DataBindings.Clear();
            tpTripAmountSeat.DataBindings.Clear();

            ControlHelper.Instance.loadCboEmployee(tpTripCboIDEmployee, "Lơ xe");
            ControlHelper.Instance.loadCboDriver(tpTripIDDriver);
            ControlHelper.Instance.loadCboBusLine(tpTripIDBusLine);
            ControlHelper.Instance.loadCboCoach(tpTripIDCoach);
            ControlHelper.Instance.loadCboTime(tpTripCboIDTimeBusLine);

            DataTable data = ADOHelper.Instance.ExecuteReader("select * from view_trip");
            tpTripDataGridViewTrip.DataSource = data;

            tpTripTxtIDTrip.DataBindings.Add("Text", data, "IDTRIP", true, DataSourceUpdateMode.Never);
            tpTripCboIDTimeBusLine.DataBindings.Add("Text", data, "Time", true, DataSourceUpdateMode.Never);
            tpTripIDBusLine.DataBindings.Add("Text", data, "BUSLINE", true, DataSourceUpdateMode.Never);
            tpTripCboIDEmployee.DataBindings.Add("Text", data, "NAMEEMPLOYEE", true, DataSourceUpdateMode.Never);
            tpTripIDCoach.DataBindings.Add("Text", data, "LICENSEPLATE", true, DataSourceUpdateMode.Never);
            tpTripIDDriver.DataBindings.Add("Text", data, "NAMEDRIVER", true, DataSourceUpdateMode.Never);
            tpTripDepartureDay.DataBindings.Add("Text", data, "DEPARTUREDAY", true, DataSourceUpdateMode.Never);
            tpTripAmountSeat.DataBindings.Add("Text", data, "AMOUNTEMPTYSEAT", true, DataSourceUpdateMode.Never);
        }



        #endregion
    }
}
