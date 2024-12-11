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

namespace QuanLyHieuThuoc
{
    /// <summary>
    /// Interaction logic for frmDoiMatKhau.xaml
    /// </summary>
    public partial class frmDoiMatKhau : Window
    {
        private string mk;
        private string tk;

        public frmDoiMatKhau()
        {
            InitializeComponent();
        }

        public string Mk { get => mk; set => mk = value; }
        public string Tk { get => tk; set => tk = value; }

        private void XacNhanDoiMatKhau_Click(object sender, RoutedEventArgs e)
        {
            // Kiểm tra mật khẩu mới nhập giống nhau không
            if(MatKhauMoi.Password.ToString() != NhapLaiMatKhauMoi.Password.ToString())
            {
                MessageBox.Show("Mật khẩu mới bạn nhập không trùng khớp!");
            }
            else
            {
                string oldPass = MatKhauCu.Password.ToString();
                // Kiểm tra mật khẩu cũ
                if (oldPass != Mk)
                {
                    MessageBox.Show("Mật khẩu hiện tại không đúng!");
                }
                else
                {
                    string newPass = MatKhauMoi.Password.ToString();
                    DataProvider.Instance.ExecuteQuery("UPDATE TaiKhoan SET MatKhau = N'" + newPass + "' WHERE TenDangNhap = N'" + Tk + "'");
                    MessageBox.Show("Đổi mật khẩu thành công!");
                    this.Close();
                }

            }
        }

        private void HuyDoiMatKhau_Click(object sender, RoutedEventArgs e)
        {
            this.Close();
        }
    }
}
