<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DONDATHANG.aspx.cs" Inherits="lab02.DONDATHANG" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="Content/bootstrap.min.css" rel="stylesheet" />

    <title></title>
    <style type="text/css">
.w-50{width:50%!important}.container{max-width:1320px}.container{max-width:1140px}.container{max-width:960px}.container{max-width:720px}.container{max-width:540px}.container{--bs-gutter-x:1.5rem;--bs-gutter-y:0;width:100%;padding-right:calc(var(--bs-gutter-x) * .5);padding-left:calc(var(--bs-gutter-x) * .5);margin-right:auto;margin-left:auto}*{box-sizing:border-box}.w-100{width:100%!important}.border-success{--bs-border-opacity:1;border-color:rgba(var(--bs-success-rgb),var(--bs-border-opacity))!important}table{caption-side:bottom;border-collapse:collapse}tbody{border-color:inherit;border-style:solid;border-width:0}tr{border-color:inherit;border-style:solid;border-width:0}
    .auto-style12 {
        font-size: xx-large;
        text-align: center;
            color: #FFFFFF;
            font-weight: 700;
            background-color: #0000CC;
        }
    td{border-color:inherit;border-style:solid;border-width:0}
    .auto-style13 {
        width: 193px;
        font-size: large;
    }
           
        .auto-style4 {
            height: 35px;
        }
        .auto-style9 {
            color: #106c34;
            width: 363px;
        }
        strong{font-weight:bolder}.text-center{text-align:center!important}
        .colorxanhchuoi {
          color:#106c34;
          
        }
       
        .auto-style8 {
        width: 363px;
        text-align: center;
    }
        .auto-style14 {
        width: 363px;
        text-align: center;
        height: 39px;
    }
        .auto-style11 {
            width: 363px;
            text-align: center;
            margin-left: 120px;
        }
    .pb-0{padding-bottom:0!important}</style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <div class="container w-50">
            <table cellpadding="5" class="border border-success w-100">
                <tr>
                    <td class="auto-style12" colspan="2">ĐƠN ĐẶT HÀNG</td>
                </tr>
                <tr>
                    <td class="auto-style13">Khách hàng :</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="txtKhachHang" runat="server" Width="310px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style13">Địa chỉ :</td>
                    <td>
                        <asp:TextBox ID="txtDiaChi" runat="server" Width="310px"></asp:TextBox>
                    </td>
                </tr>
                <tr class="border-bottom border-success">
                    <td class="auto-style13">Mã số thuế :</td>
                    <td>
                        <asp:TextBox ID="txtMSThue" runat="server" Width="310px"></asp:TextBox>
                    </td>
                </tr>
            </table>
            <table cellpadding="5" class="border border-success  w-100">
                <tr>
                    <td class="auto-style9"><strong>Chọn các loại bánh sau:</strong></td>
                    <td class="text-center  border-start  border-success colorxanhchuoi"><strong>Danh sách bánh được đặt:</strong></td>
                </tr>
                <tr>
                    <td class="auto-style8">
                        <asp:DropDownList ID="ddlLoaiBanh" runat="server">
                        </asp:DropDownList>
                    </td>
                    <td class="text-center border-start  border-success" rowspan="3">
                        <asp:ListBox ID="lstDanhSach" runat="server" SelectionMode="Multiple" Width="221px"></asp:ListBox>
                        <asp:Button ID="btnXoa" runat="server" OnClick="btnXoa_Click" Text="Xóa" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style14">Số lượng :<asp:TextBox ID="txtSoLuong" runat="server" Width="104px"></asp:TextBox>
                        &nbsp;cái</td>
                </tr>
                <tr>
                    <td class="auto-style11">
                        <asp:Button ID="btnThem" runat="server" OnClick="btnNext_Click" Text="Xác nhận" Width="97px" />
                    </td>
                </tr>
                <tr>
                    <td class="text-center  border border-success pb-0" colspan="2"><strong>
                        <asp:Button ID="btnInDon" runat="server" CssClass="btnInDon border border-success h3" OnClick="btnInDon_Click" style="font-weight: bold; color: #FFFFFF; font-size: medium; background-color: #0000CC;" Text="In đơn đặt hàng" />
                        </strong></td>
                </tr>
            </table>
            <asp:Label ID="lbInDon" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
