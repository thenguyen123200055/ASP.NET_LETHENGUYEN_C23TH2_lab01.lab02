<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TinhToan.aspx.cs" Inherits="lab01.TinhToan" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
    <title></title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            width: 50%;
            height: 158px;
        }
        .auto-style2 {
            height: 24px;
            color: #FFFFFF;
            text-align: center;
            background-color: #009933;
        }
strong{font-weight:bolder}*{box-sizing:border-box}
        .auto-style4 {
            text-align: right;
            color: #FF0000;
            width: 160px;
            height: 32px;
        }
        .auto-style8 {
            text-align: right;
            width: 160px;
            height: 32px;
        }
        .auto-style9 {
            height: 32px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table align="center" cellpadding="2" class="auto-style1">
                <tr>
                    <td class="auto-style2" colspan="2"><strong>TÍNH TOÁN ĐƠN GIẢN</strong></td>
                </tr>
                <tr>
                    <td class="auto-style8"><strong>Nhập số 1:</strong></td>
                    <td class="auto-style9">
                        <asp:TextBox ID="txtSo1" runat="server" Width="296px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8"><strong>Nhập số 2:</strong></td>
                    <td class="auto-style9">
                        <asp:TextBox ID="txtSo2" runat="server" Width="298px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style9">
                        <asp:Button ID="btnCong" runat="server" CssClass="btn btn-primary" OnClick="btnCong_Click" style="color: #FFFFFF; background-color: #33CC33" Text="Cộng" />
                        <asp:Button ID="btnTru" runat="server" CssClass="btn btn-secondary" OnClick="btnTru_Click" style="color: #FFFFFF; background-color: #CC0000" Text="Trừ" Width="58px" />
                        <asp:Button ID="btnNhan" runat="server" CssClass="btn btn-info" OnClick="btnNhan_Click" style="color: #FFFFFF; background-color: #3333CC" Text="Nhân" />
                        <asp:Button ID="btnChia" runat="server" CssClass="btn btn-warning" OnClick="btnChia_Click" style="background-color: #666699; color: #FFFFFF;" Text="Chia" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4"><strong>Kết quả:</strong></td>
                    <td class="auto-style9">
                        <asp:TextBox ID="txtKetqua" runat="server" Width="295px"></asp:TextBox>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
