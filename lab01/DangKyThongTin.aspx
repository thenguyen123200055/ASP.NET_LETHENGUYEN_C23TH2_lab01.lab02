<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DangKyThongTin.aspx.cs" Inherits="lab01.DangKyThongTin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            width: 284px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class=" container w-50">
            <table align="center" cellpadding="4" cellspacing="0" class="w-100">
                <tr>
                    <td class="text-center h3 bg-danger" colspan="2"><strong>ĐĂNG KÍ THÔNG TIN&nbsp;</strong></td>
                </tr>
                <tr>
                    <td class="auto-style1">Họ và tên</td>
                    <td>
                        <asp:TextBox ID="txtTen" runat="server" CssClass="form-control" required=""></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Ngày sinh</td>
                    <td>
                        <asp:TextBox ID="txtNgay" runat="server" CssClass="form-control" TextMode="Date"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Giới tinh</td>
                    <td>
                        <asp:RadioButton ID="rNam" runat="server" Text="Nam" GroupName="namnu" Checked="true" CssClass="form-check-inline" />
                        <asp:RadioButton ID="rNu" runat="server" Text="Nữ" GroupName="namnu" CssClass="form-check-inline"/>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Trình dộ</td>
                    <td>
                        <asp:DropDownList ID="DdlTrinhDo" runat="server" CssClass="form-select">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Nghề nghiệp</td>
                    <td>
                        <asp:ListBox ID="LbNgheNghiep" runat="server" required="" ></asp:ListBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Hình</td>
                    <td>
                        <asp:FileUpload ID="FHinh" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Sở thích</td>
                    <td>
                        <asp:CheckBoxList ID="CbLSoThich" runat="server" CssClass="form-check">
                        </asp:CheckBoxList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td>
                        <asp:Button ID="btGui" runat="server" Text="Gửi" CssClass="btn btn-primary" OnClick="btGui_Click"/>
                        <asp:Button ID="btLamLai" runat="server" Text="Làm lại" CssClass="btn btn-dark" OnClick="btLamLai_Click" />
                    </td>
                </tr> 
                                
            </table>
            <asp:Label ID="LbKq" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
