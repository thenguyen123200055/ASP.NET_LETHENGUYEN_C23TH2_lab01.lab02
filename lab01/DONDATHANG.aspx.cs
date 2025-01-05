using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace lab02
{
    public partial class DONDATHANG : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            KhoiTaoDuLieu();
        }

        private void KhoiTaoDuLieu()
        {
            ddlLoaiBanh.Items.Add(new ListItem("Bánh Croissant", "01"));
            ddlLoaiBanh.Items.Add(new ListItem("Bánh bò nướng", "02"));
            ddlLoaiBanh.Items.Add(new ListItem("Bánh Xèo", "03"));
            ddlLoaiBanh.Items.Add(new ListItem("Hamburger", "04"));
            ddlLoaiBanh.Items.Add(new ListItem("Phở", "05"));
            ddlLoaiBanh.Items.Add(new ListItem("Bún chả Hà Nội ", "06"));
            ddlLoaiBanh.Items.Add(new ListItem("Pho Real", "07"));



        }
        protected void btnInDon_Click(object sender, EventArgs e)

        {
            //string kq = "<div class='text-center fw-bold bg-info alert alert-danger p-0 m-0 h1'>KẾT QUẢ ĐĂNG KÝ</div>";
            //kq += "<div class='container border border-danger text-danger'>";
            //kq += string.Format("<b>Khách hàng:</b> {0}<br>", txtKhachHang.Text);
            //kq += string.Format("<b>Địa chỉ:</b> {0}<br>", txtDiaChi.Text);
            //kq += string.Format("<b>Mã số thuế:</b> {0}<br><br>", txtMSThue.Text);
            //kq += "<b><h3>Đặt các loại bánh sau</h3></b>";
            //kq += "<table cellpadding='5' cellspacing='2' class='border border-warning table table-bordered text-danger w-100'>";
            //foreach (ListItem item in lstDanhSach.Items)
            //{
            //    if (item.Selected)
            //    {
            //        kq += string.Format("<tr><td><strong>{0}</strong></td><td class='text-end'><strong>{1}</strong></td></tr>", item.Text, txtSoLuong.Text);
            //    }
            //}
            //kq += "</table></div>"; lbInDon.Text = kq;

            string kq = "<div style= 'color :red;''> ";
            kq += "<div class='h3 text-center mt-3'> Hóa Đơn Đặt Hàng </div>";
            kq += "<div class='border p-2'>";
            //Thu thập thông tin hóa đơn gửi từ client
            kq += $"<b> Khách Hàng </b> : <i>{txtKhachHang.Text} </i> <br>";
            kq += $"<b> Địa Chỉ </b> : <i>{txtDiaChi.Text} </i> <br>";
            kq += $"<b> Mã Số Thuế </b> : <i>{txtMSThue.Text} </i> <br>";
            kq += "<b> Đặt các loại bánh sau : </b> <br>";

            kq += "<table class='table table-bordered'>";
            foreach (ListItem item in lstDanhSach.Items)
            {
                string data = item.Text;
                string[] arr = data.Split(new char[] { '(', ')' });

                kq += $"<tr><td>{arr[0]} </td><td>{arr[1]}</td></tr>";
            }
            kq += "</table>";
            kq += "</div>";
            // Gửi thông tin hóa đơn về client
            lbInDon.Text = kq;

        }


        protected void btnXoa_Click(object sender, EventArgs e)
        {
            List<ListItem> itemsToRemove = new List<ListItem>();

            foreach (ListItem item in lstDanhSach.Items)
            {
                if (item.Selected)
                {
                    itemsToRemove.Add(item);
                }
            }

            foreach (ListItem item in itemsToRemove)
            {
                lstDanhSach.Items.Remove(item);
            }


        }
        protected void btnNext_Click(object sender, EventArgs e)
        {

            string loaiBanh = ddlLoaiBanh.SelectedItem.Text;
            string soLuong = txtSoLuong.Text;
            lstDanhSach.Items.Add($"{loaiBanh}  ({soLuong})");

        }
    }

}
