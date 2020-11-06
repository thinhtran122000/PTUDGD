using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.SqlClient;
using System.Configuration;
namespace CTQuanLyTiecCuoi
{
    public partial class frmDangNhap : Form
    {
        public frmDangNhap()
        {
            InitializeComponent();
        }
        //string strcnn = "Data Source=DESKTOP-90K2CL6\\THANHHUNG;Initial Catalog=QUANLYTIECCUOI;Integrated Security=True";
        string strcnn = System.Configuration.ConfigurationManager.ConnectionStrings["QUANLYTIECCUOI"].ConnectionString;
        public static int IDTaiKhoan;
        private void btnDangNhap_Click(object sender, EventArgs e)
        {
            
            SqlConnection conn = new SqlConnection(strcnn);
            conn.Open();
            string sqlSelect = "Select * from DANGNHAP where TaiKhoan = '" +
            txtTaiKhoan.Text + "' and MatKhau = '" + txtMatKhau.Text + "'";
           
            SqlCommand cmd = new SqlCommand(sqlSelect, conn);
            SqlDataReader reader = cmd.ExecuteReader();
       
            if (reader.Read() == true)
            {
                IDTaiKhoan = reader.GetInt32(0);
                this.Hide();
                frmMain main = new frmMain();
                if (main.ShowDialog() == DialogResult.OK)
                {
                    this.Visible = true;
                    txtTaiKhoan.Text = "";
                    txtMatKhau.Text = "";
                    txtTaiKhoan.Focus();
                }
                else
                    this.Close();
 
            }
            else
            {
                MessageBox.Show("Đăng nhập không thành công!", "Error",
                                  MessageBoxButtons.OK, MessageBoxIcon.Error);
                txtTaiKhoan.Text = "";
                txtMatKhau.Text = "";
                txtTaiKhoan.Focus();
            }
        }
        private void btnThoat_Click(object sender, EventArgs e)
        {
  
            this.Close();
        }

        private void frmDangNhap_Load(object sender, EventArgs e)
        {

        }
    }
}
