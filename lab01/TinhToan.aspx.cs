using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace lab01
{
    public partial class TinhToan : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnCong_Click(object sender, EventArgs e)
        {
            //b1. Lấy giá trị tham số từ client
            double so1 = double.Parse(txtSo1.Text);
            double so2 = double.Parse(txtSo2.Text);
            //b2.Tính toán
            double ketqua = so1 + so2;
            //b3: Hồi đáp về client
            txtKetqua.Text = ketqua.ToString();
        }
        protected void btnTru_Click(object sender, EventArgs e)
        {
            //b1. Lấy giá trị tham số từ client
            double so1 = double.Parse(txtSo1.Text);
            double so2 = double.Parse(txtSo2.Text);
            //b2.Tính toán
            double ketqua = so1 - so2;
            //b3: Hồi đáp về client
            txtKetqua.Text = ketqua.ToString();
        }
        protected void btnNhan_Click(object sender, EventArgs e)
        {
            //b1. Lấy giá trị tham số từ client
            double so1 = double.Parse(txtSo1.Text);
            double so2 = double.Parse(txtSo2.Text);
            //b2.Tính toán
            double ketqua = so1 * so2;
            //b3: Hồi đáp về client
            txtKetqua.Text = ketqua.ToString();
        }
        protected void btnChia_Click(object sender, EventArgs e)
        {
            try
            {
                // Bước 1: Lấy giá trị từ client (form input)
                double so1 = double.Parse(txtSo1.Text);
                double so2 = double.Parse(txtSo2.Text);

                // Bước 2: Kiểm tra chia cho 0
                if (so2 == 0)
                {
                    txtKetqua.Text = "Không thể chia cho 0!";
                }
                else
                {
                    // Bước 3: Tính toán phép chia
                    double ketqua = so1 / so2;

                    // Bước 4: Hiển thị kết quả về client
                    txtKetqua.Text = ketqua.ToString();
                }
            }
            catch (FormatException)
            {
                // Xử lý lỗi khi người dùng nhập không phải số
                txtKetqua.Text = "Vui lòng nhập giá trị hợp lệ!";
            }
        }
    }
}