using CoachTicketManagement.Core;
using CoachTicketManagement.Models;
using CoachTicketManagement.Utility;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;


namespace CoachTicketManagement
{
    public partial class fManagement : Form
    {
        List<Employee> _employees;
        List<Account> _accounts;
        Employee _curEmployee;

        List<List<PictureBox>> listA = new List<List<PictureBox>>();
        List<List<PictureBox>> listB = new List<List<PictureBox>>();
        public fManagement(Employee cur, List<Employee> employees, List<Account> accounts)
        {
            InitializeComponent();
            this._employees = employees;
            this._accounts = accounts;
            this._curEmployee = cur;
        }
        private void fManagement_Load(object sender, EventArgs e)
        {
            loadSeat();
            showSeat();
            if (String.Compare(EmployeeService.Instance.CheckPermissionByID(_curEmployee.Id), "Admin", true) == 0)
                ToolStripAdmin.Enabled = true;
            else ToolStripAdmin.Enabled = false;
        }
        void loadSeat()
        {
            picBoxEmpty.Image = imageListSeat.Images[0];
            picBoxNo.Image = imageListSeat.Images[1];
            picBoxChoose.Image = imageListSeat.Images[2];
        }

        void showSeat()
        {
            createSeat();    
            listA[0][0].Location = new Point(95, 25);
            panelSeat.Enabled = false;
        }

        void createSeat()
        {
            //int x = 95, y_A = 25;
            int width = Utilities.Instance._WidthSeat, height = Utilities.Instance._HeightSeat;
            for(int i = 0; i < 8; i++)
            {
                listA.Add(new List<PictureBox>());
                for (int j = 0; j < 3; j++)
                {
                    PictureBox pic = new PictureBox();
                    if (i < 2 || i == 7)
                        pic.Image = imageListSeat.Images[Utilities.Instance._KhongBan];
                    else pic.Image = imageListSeat.Images[Utilities.Instance._Trong];
                    pic.Name = "A" + ((i * 3) + j + 1).ToString();
                    //pic.Location = new Point(x + height * i, y_A + width * j);
                    pic.Size = new Size(width, height);
                    flowLayoutPanelA.Controls.Add(pic);
                    pic.Click += Pic_Click;
                    listA[i].Add(pic);
                }
            }
            for (int i = 0; i < 7; i++)
            {
                listB.Add(new List<PictureBox>());
                for (int j = 1; j <= 3; j++)
                {
                    PictureBox pic = new PictureBox();
                    pic.Image = imageListSeat.Images[Utilities.Instance._Trong];
                    pic.Name = "B" + ((i * 3) + j + 1).ToString();
                    pic.Size = new Size(width, height);
                    flowLayoutPanelB.Controls.Add(pic);
                    pic.Click += Pic_Click;
                    listB[i].Add(pic);
                }
            }
        }

        private void Pic_Click(object sender, EventArgs e)
        {
            PictureBox pic = (PictureBox)sender;
            MessageBox.Show(pic.Name);
        }

        private void ToolStripLogOut_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void ToolStripInfoAccount_Click(object sender, EventArgs e)
        {
            Employee employee = new Employee();
            employee.Name = "zzz";
            fAccountInfo accountInfo = new fAccountInfo(employee);
            accountInfo.ShowDialog();
            
        }

        private void ToolStripAdmin_Click(object sender, EventArgs e)
        {
            fAdmin admin = new fAdmin(this._curEmployee);
            this.Hide();
            admin.ShowDialog();
            this.Show();
        }

        private void btnFindTicket_Click(object sender, EventArgs e)
        {
            panelSeat.Enabled = true;
        }
    }
}
