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
    public partial class fAccountInfo : Form
    {
        public fAccountInfo(Employee employee)
        {
            InitializeComponent();
            txtfAIName.Text = employee.NameEmployee;
            txtfAIName.Focus();
        }

        private void btnfAIUpdate_Click(object sender, EventArgs e)
        {
            this.Close();
        }
    }
}
