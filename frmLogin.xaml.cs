using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;
using System.Security.Cryptography;
using System.ComponentModel;
using System.Data.SqlClient;
using System.Data;

namespace QuanLyHieuThuoc
{
    public partial class frmLogin : Window
    {
        public frmLogin()
        {
            InitializeComponent();
        }
        private void lbThoat(object sender, MouseButtonEventArgs e)
        {
            var diaThoat = MessageBox.Show("Bạn có muốn thoát chương trình không?", "Hệ thống quản lý cửa hàng bán thuốc", MessageBoxButton.YesNo, MessageBoxImage.Question);
            if (MessageBoxResult.Yes == diaThoat)
                this.Close();
        }


        private void BtnDangNhap_Click(object sender, RoutedEventArgs e)
        {
            string query = "SELECT * FROM TaiKhoan WHERE TenDangNhap = @TenDangNhap AND MatKhau = @MatKhau";
            SqlParameter[] parameters = new SqlParameter[]
            {
                new SqlParameter("@TenDangNhap", txtTenDangNhap.Text),
                new SqlParameter("@MatKhau", txtMatKhau.Password.ToString())
            };

            DataTable data = DataProvider.Instance.ExecuteQuery(query, parameters);

            if (data.Rows.Count <= 0)
            {
                MessageBox.Show("Tài khoản hoặc mật khẩu không đúng!");
            }
            else
            {
                this.Hide();
                frmMain newForm = new frmMain();
                newForm.TK = txtTenDangNhap.Text;
                newForm.MK = txtMatKhau.Password.ToString();
                newForm.ShowDialog();
            }
        }
    }
}
