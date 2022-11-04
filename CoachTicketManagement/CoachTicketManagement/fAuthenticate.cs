using CoachTicketManagement.Core.Services;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;

namespace CoachTicketManagement
{
    public partial class fAuthenticate : Form
    {
        public fAuthenticate()
        {
            InitializeComponent();
        }

        private void btnClose_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void btnLogin_Click(object sender, EventArgs e)
        {
            if (new AccountService().Login())
            {
                this.Hide();
                fManagement f = new fManagement();
                f.ShowDialog();
                this.Show();
            }
            else MessageBox.Show("Tên đăng nhập hoặc mật khẩu không chính xác", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
        }

        private void fAuthenticate_FormClosing(object sender, FormClosingEventArgs e)
        {
            DialogResult r = MessageBox.Show("Bạn có chắc chắn muốn thoát?", "Thông báo", MessageBoxButtons.YesNo, MessageBoxIcon.Question);
            if (r == DialogResult.No)
                e.Cancel = true;
        }
    }
}
