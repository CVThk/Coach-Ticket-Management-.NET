
namespace CoachTicketManagement
{
    partial class fManagement
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.menuStripManagement = new System.Windows.Forms.MenuStrip();
            this.ToolStripAdmin = new System.Windows.Forms.ToolStripMenuItem();
            this.ToolStripAccount = new System.Windows.Forms.ToolStripMenuItem();
            this.ToolStripInfoAccount = new System.Windows.Forms.ToolStripMenuItem();
            this.ToolStripLogOut = new System.Windows.Forms.ToolStripMenuItem();
            this.menuStripManagement.SuspendLayout();
            this.SuspendLayout();
            // 
            // menuStripManagement
            // 
            this.menuStripManagement.BackColor = System.Drawing.Color.DarkGray;
            this.menuStripManagement.Font = new System.Drawing.Font("Segoe UI Semibold", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point);
            this.menuStripManagement.ImageScalingSize = new System.Drawing.Size(20, 20);
            this.menuStripManagement.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.ToolStripAdmin,
            this.ToolStripAccount});
            this.menuStripManagement.Location = new System.Drawing.Point(0, 0);
            this.menuStripManagement.Name = "menuStripManagement";
            this.menuStripManagement.Size = new System.Drawing.Size(893, 28);
            this.menuStripManagement.TabIndex = 0;
            this.menuStripManagement.Text = "menuStrip1";
            // 
            // ToolStripAdmin
            // 
            this.ToolStripAdmin.Name = "ToolStripAdmin";
            this.ToolStripAdmin.Size = new System.Drawing.Size(68, 24);
            this.ToolStripAdmin.Text = "Admin";
            this.ToolStripAdmin.Click += new System.EventHandler(this.ToolStripAdmin_Click);
            // 
            // ToolStripAccount
            // 
            this.ToolStripAccount.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.ToolStripInfoAccount,
            this.ToolStripLogOut});
            this.ToolStripAccount.Name = "ToolStripAccount";
            this.ToolStripAccount.Size = new System.Drawing.Size(89, 24);
            this.ToolStripAccount.Text = "Tài khoản";
            // 
            // ToolStripInfoAccount
            // 
            this.ToolStripInfoAccount.Name = "ToolStripInfoAccount";
            this.ToolStripInfoAccount.Size = new System.Drawing.Size(226, 26);
            this.ToolStripInfoAccount.Text = "Thông tin tài khoản";
            this.ToolStripInfoAccount.Click += new System.EventHandler(this.ToolStripInfoAccount_Click);
            // 
            // ToolStripLogOut
            // 
            this.ToolStripLogOut.Name = "ToolStripLogOut";
            this.ToolStripLogOut.Size = new System.Drawing.Size(226, 26);
            this.ToolStripLogOut.Text = "Đăng xuất";
            this.ToolStripLogOut.Click += new System.EventHandler(this.ToolStripLogOut_Click);
            // 
            // fManagement
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 20F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.SystemColors.Control;
            this.ClientSize = new System.Drawing.Size(893, 546);
            this.Controls.Add(this.menuStripManagement);
            this.ForeColor = System.Drawing.Color.Black;
            this.MainMenuStrip = this.menuStripManagement;
            this.Name = "fManagement";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Quản Lý";
            this.menuStripManagement.ResumeLayout(false);
            this.menuStripManagement.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.MenuStrip menuStripManagement;
        private System.Windows.Forms.ToolStripMenuItem ToolStripAdmin;
        private System.Windows.Forms.ToolStripMenuItem ToolStripAccount;
        private System.Windows.Forms.ToolStripMenuItem ToolStripInfoAccount;
        private System.Windows.Forms.ToolStripMenuItem ToolStripLogOut;
    }
}