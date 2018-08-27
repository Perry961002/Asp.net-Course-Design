<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Forgot.aspx.cs" Inherits="Forgot" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>人事工资管理系统</title>
     <link href="Admin/style/style.css" rel="Stylesheet" type="text/css" />
    <style type="text/css">
        .auto-style1 {
            height: 40px;
            width: 67px;
        }
        .auto-style2 {
            height: 40px;
            width: 184px;
        }
    </style>
</head>
<body style="background-color: #175C7B;">
    <form id="form1" runat="server">
     <div  align="center">
        <div  style="border-color: transport; padding-top :150px; padding-bottom :150px; width:440px; height:260px;">
            <table width="440" border="1" cellpadding="0" cellspacing="0" id="divmaintable1" style="border-color: transport; height: 1px">
                    <td align="right" style="color: #FFFFFF; font-style: inherit;" class="auto-style1">
                        员工号：
                    </td>
                    <td style="text-align: left; " align="left" class="auto-style2">
                    <asp:TextBox ID="txtzgh" runat="server" Width="149px"></asp:TextBox>
                    </td>
                    <td style="text-align: left; height: 40px; width: 156px;">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtzgh" ErrorMessage="员工号不能为空！" BackColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <td align="right" style="color: #FFFFFF; font-style: inherit;" class="auto-style1">
                        新密码： </td>
                    <td style="text-align: left; " align="left" class="auto-style2">
                    <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" Width="149px"></asp:TextBox>
                    </td>
                    <td style="text-align: left; height: 40px; width: 156px;">
                        <asp:Button ID="Button1" runat="server" Text="获取验证码" OnClick="Button1_Click" Width="78px" />
                    </td>
                </tr>
                <td align="right" style="color: #FFFFFF; font-style: inherit;" class="auto-style1">
                        验证码： </td>
                    <td style="text-align: left; " align="left" class="auto-style2">
                    <asp:TextBox ID="TextBox1" runat="server" TextMode="Password" Width="149px"></asp:TextBox>
                    </td>
                    <td style="text-align: left; height: 40px; width: 156px;">
                        <asp:Button ID="Button2" runat="server" Text="重置密码" OnClick="Button2_Click" />
                        <asp:Label ID="Label1" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
      </div>
    </form>
    <!-- Javascript -->
        <script src="assets/js/jquery-1.8.2.min.js"></script>
        <script src="assets/js/supersized.3.2.7.min.js"></script>
        <script src="assets/js/supersized-init.js"></script>
        <script src="assets/js/scripts.js"></script>
</body>
</html>
