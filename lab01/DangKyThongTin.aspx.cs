using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace lab01
{
    public partial class DangKyThongTin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
                NhapDuLieu();
        }

        private void NhapDuLieu()
        {
            DdlTrinhDo.Items.Add(new ListItem("Cao đẳng", "01"));
            DdlTrinhDo.Items.Add(new ListItem("Trung cấp", "02"));
            DdlTrinhDo.Items.Add(new ListItem("Đại học", "03"));
            DdlTrinhDo.Items.Add(new ListItem("Sau Đại Học", "04"));

            LbNgheNghiep.Items.Add(new ListItem("Kỹ sư", "01"));
            LbNgheNghiep.Items.Add(new ListItem("Bác sĩ", "02"));
            LbNgheNghiep.Items.Add(new ListItem("Công nhân", "03"));
            LbNgheNghiep.Items.Add(new ListItem("Sinh viên", "04"));
            LbNgheNghiep.Items.Add(new ListItem("Khác", "05"));

            CbLSoThich.Items.Add(new ListItem("Chơi game", "01"));
            CbLSoThich.Items.Add(new ListItem("Nghe nhạc", "02"));
            CbLSoThich.Items.Add(new ListItem("Xem phim", "03"));
            CbLSoThich.Items.Add(new ListItem("Vẽ tranh", "04"));
            CbLSoThich.Items.Add(new ListItem("Đá bóng", "05"));
            CbLSoThich.Items.Add(new ListItem("Khác", "06"));
        }

        protected void btGui_Click(object sender, EventArgs e)
        {
            string kq = "<ul>";
            kq += string.Format("<li> Họ và tên: <b>{0}</b>", txtTen.Text);
            kq += string.Format("<li> Ngày sinh: <b>{0}</b>", txtNgay.Text);
            kq += string.Format("<li> Giới tính: <b>{0}</b>", (rNam.Checked ? rNam.Text : rNu.Text));
            kq += string.Format("<li> Trình độ: <b>{0}</b>", DdlTrinhDo.SelectedItem.Text);
            kq += string.Format("<li> Nghề nghiệp: <b>{0}</b>", LbNgheNghiep.SelectedItem.Text);
            if (FHinh.HasFile)
            {
                string path = Server.MapPath("~/Uploads");
                string filename = FHinh.FileName;
                FHinh.SaveAs(path + "/" + filename);
                kq += string.Format("<li> Ảnh: <img src='/Uploads/{0}' width='200px'>", filename);
            }
            string sothich = "";
            foreach (ListItem item in CbLSoThich.Items)
            {
                if (item.Selected)
                    sothich += item.Text + ";";
            }
            kq += string.Format("<li> Sở thích: <b>{0}</b>", sothich);

            kq += "</ul>";
            LbKq.Text = kq;
        }

        protected void btLamLai_Click(object sender, EventArgs e)
        {
            txtTen.Text = "";
            txtNgay.Text = "";
            DdlTrinhDo.SelectedIndex = 0;
            LbNgheNghiep.SelectedIndex = -1;
            foreach (ListItem item in CbLSoThich.Items)
            {
                item.Selected = false;
            }
            LbKq.Text = "";
        }
    }
}