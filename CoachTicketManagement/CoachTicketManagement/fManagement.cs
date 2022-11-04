using CoachTicketManagement.Models;
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
        public fManagement()
        {
            InitializeComponent();
        }

        private void ToolStripLogOut_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void ToolStripInfoAccount_Click(object sender, EventArgs e)
        {
            Employee employee = new Employee();
            employee.NameEmployee = "zzz";
            fAccountInfo accountInfo = new fAccountInfo(employee);
            accountInfo.ShowDialog();
            
        }

        private void ToolStripAdmin_Click(object sender, EventArgs e)
        {
            fAdmin admin = new fAdmin();
            this.Hide();
            admin.ShowDialog();
            this.Show();
        }
    }
}
