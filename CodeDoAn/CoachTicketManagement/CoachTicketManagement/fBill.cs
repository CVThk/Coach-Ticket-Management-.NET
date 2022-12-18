using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using CoachTicketManagement.Models;
using CoachTicketManagement.Utility;

namespace CoachTicketManagement
{
    public partial class fBill : Form
    {
        Employee _CurEmployee;
        public fBill(Employee employee)
        {
            InitializeComponent();
            this._CurEmployee = employee;
        }

        private void fBill_Load(object sender, EventArgs e)
        {
            loadBill();
        }

        private void AddHeader()
        {
            dgvBill.Columns.Clear();
            dgvBill.Columns.Add("IDBILL", "Mã hóa đơn");
            dgvBill.Columns[0].DataPropertyName = "IDBILL";
            dgvBill.Columns.Add("NAMEEMPLOYEE", "Nhân viên");
            dgvBill.Columns[1].DataPropertyName = "NAMEEMPLOYEE";
            dgvBill.Columns.Add("NAMECLIENT", "Khách hàng");
            dgvBill.Columns[2].DataPropertyName = "NAMECLIENT";
            dgvBill.Columns.Add("DATEOFBIRTHCLIENT", "Ngày sinh KH");
            dgvBill.Columns[3].DataPropertyName = "DATEOFBIRTHCLIENT";
            dgvBill.Columns.Add("TOTALMONEY", "Tổng thành tiền");
            dgvBill.Columns[4].DataPropertyName = "TOTALMONEY";
            dgvBill.Columns.Add("INVOICEDATE", "Ngày thanh toán");
            dgvBill.Columns[5].DataPropertyName = "INVOICEDATE";
        }

        void loadBill()
        {
            AddHeader();

            txtIDBill.DataBindings.Clear();
            txtNameEmployee.DataBindings.Clear();
            dtpPurchaseDate.DataBindings.Clear();
            txtNameClient.DataBindings.Clear();
            dateTimePickerNSKH.DataBindings.Clear();
            txtTotalMoney.DataBindings.Clear();

            DataTable data = ADOHelper.Instance.ExecuteReader("select * from f_GetBills()");
            dgvBill.DataSource = data;

            txtIDBill.DataBindings.Add("Text", data, "IDBILL", true, DataSourceUpdateMode.Never);
            txtNameEmployee.DataBindings.Add("Text", data, "NAMEEMPLOYEE", true, DataSourceUpdateMode.Never);
            dtpPurchaseDate.DataBindings.Add("Text", data, "INVOICEDATE", true, DataSourceUpdateMode.Never);
            dateTimePickerNSKH.DataBindings.Add("Text", data, "DATEOFBIRTHCLIENT", true, DataSourceUpdateMode.Never);
            txtNameClient.DataBindings.Add("Text", data, "NAMECLIENT", true, DataSourceUpdateMode.Never);
            txtTotalMoney.DataBindings.Add("Text", data, "TOTALMONEY", true, DataSourceUpdateMode.Never);

            dgvBill.ClearSelection();
            foreach (Control pa in groupBoxBill.Controls)
            {
                foreach (Control item in pa.Controls)
                {
                    if(!(item is Label))
                        item.Text = "";
                }
            }
        }

        void loadBillDetails(int idBill)
        {
            dgvTicket.Columns.Clear();
            dgvTicket.Columns.Add("IDTICKET", "Mã vé");
            dgvTicket.Columns[0].DataPropertyName = "IDTICKET";
            dgvTicket.Columns.Add("BUSLINE", "Tuyến xe");
            dgvTicket.Columns[1].DataPropertyName = "BUSLINE";
            dgvTicket.Columns.Add("Time", "Thời gian");
            dgvTicket.Columns[2].DataPropertyName = "Time";
            dgvTicket.Columns.Add("DEPARTUREDAY", "Ngày khởi hành");
            dgvTicket.Columns[3].DataPropertyName = "DEPARTUREDAY";
            dgvTicket.Columns.Add("LICENSEPLATE", "Xe");
            dgvTicket.Columns[4].DataPropertyName = "LICENSEPLATE";
            dgvTicket.Columns.Add("SEATPOSITION", "Ghế");
            dgvTicket.Columns[5].DataPropertyName = "SEATPOSITION";
            dgvTicket.Columns.Add("PICKUPPOINT", "Trạm đón");
            dgvTicket.Columns[6].DataPropertyName = "PICKUPPOINT";
            dgvTicket.Columns.Add("DROPOFFPOINT", "Trạm xuống");
            dgvTicket.Columns[7].DataPropertyName = "DROPOFFPOINT";
            dgvTicket.Columns.Add("PRICE", "Giá vé");
            dgvTicket.Columns[8].DataPropertyName = "PRICE";

            TxtIDTicket.DataBindings.Clear();
            txtNameTrip.DataBindings.Clear();
            TxtSeatPosition.DataBindings.Clear();
            txtPickupPoint.DataBindings.Clear();
            txtDropoffPoint.DataBindings.Clear();
            TxtPrice.DataBindings.Clear();

            DataTable data = ADOHelper.Instance.ExecuteReader("select * from f_GetBillDetails(@para_0)", new object[] { idBill });
            dgvTicket.DataSource = data;

            TxtIDTicket.DataBindings.Add("Text", data, "IDTICKET", true, DataSourceUpdateMode.Never);
            txtNameTrip.DataBindings.Add("Text", data, "BUSLINE", true, DataSourceUpdateMode.Never);
            TxtSeatPosition.DataBindings.Add("Text", data, "SEATPOSITION", true, DataSourceUpdateMode.Never);
            txtPickupPoint.DataBindings.Add("Text", data, "PICKUPPOINT", true, DataSourceUpdateMode.Never);
            txtDropoffPoint.DataBindings.Add("Text", data, "DROPOFFPOINT", true, DataSourceUpdateMode.Never);
            TxtPrice.DataBindings.Add("Text", data, "PRICE", true, DataSourceUpdateMode.Never);
        }

        private void txtIDBill_TextChanged(object sender, EventArgs e)
        {
            int idBill = 0;
            if(txtIDBill.Text != "")
            {
                idBill = int.Parse(txtIDBill.Text);

            }
            else
            {
                foreach (Control pa in groupBoxBillDetails.Controls)
                {
                    foreach (Control item in pa.Controls)
                    {
                        if (!(item is Label))
                            item.Text = "";
                    }
                }
            }
            loadBillDetails(idBill);
        }



    }
}
