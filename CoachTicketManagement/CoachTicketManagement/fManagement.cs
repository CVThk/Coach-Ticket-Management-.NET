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
        public fManagement()
        {
            InitializeComponent();
            loadSeat();
            showSeat();
        }
        void loadSeat()
        {
            picBoxEmpty.Image = imageListSeat.Images[0];
            picBoxNo.Image = imageListSeat.Images[1];
            picBoxChoose.Image = imageListSeat.Images[2];
            picBoxChoose.Tag = 2;
        }

        void showSeat()
        {
            createSeat();
        }

        void createSeat()
        {
            for(int i = 0; i < 8; i++)
            {
                for (int j = 1; j <= 3; j++)
                {
                    PictureBox pic = new PictureBox() { Width = Utilities.Instance._WidthSeat, Height = Utilities.Instance._HeightSeat };
                    pic.Image = imageListSeat.Images[Utilities.Instance._Trong];
                    pic.Tag = (i * 3) + j;
                    flowLayoutPanelA.Controls.Add(pic);
                }
            }
            for (int i = 0; i < 7; i++)
            {
                for (int j = 1; j <= 3; j++)
                {
                    PictureBox pic = new PictureBox() { Width = Utilities.Instance._WidthSeat, Height = Utilities.Instance._HeightSeat };
                    pic.Image = imageListSeat.Images[Utilities.Instance._Trong];
                    pic.Tag = (i * 3) + j;
                    flowLayoutPanelB.Controls.Add(pic);
                }
            }
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

        private void btnFindTicket_Click(object sender, EventArgs e)
        {

        }
    }
}
