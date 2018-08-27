<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="Admin_login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>人事工资管理系统</title>
     <link href="Admin/style/style.css" rel="Stylesheet" type="text/css" />
</head>
<body style="background-color: #175C7B;">
    <form id="form1" runat="server">
     <div  align="center">
        <div  style="padding-top :150px; padding-bottom :150px; width:440px; height:260px;">
            <table width="440" border="1" cellpadding="0" cellspacing="0" id="divmaintable1" style="height: 1px">
                <tr>
                    <td colspan="3" style="height: 80px; font-size:25pt; color:Yellow " align="center">人事工资管理系统登录</td>
                </tr>
                <tr>
                    <td align="right" style="height: 42px; width: 128px;">
                        账号<span style="font-size: 9pt">：</span>
                    </td>
                    <td align="left" style="height: 42px">
                        <asp:TextBox ID="TxtUserName" runat="server" Width="150px"></asp:TextBox>
                    </td>
                    <td style="text-align: left; height: 42px; width: 156px;">&nbsp;<asp:RequiredFieldValidator ID="fileusename" runat="server" ControlToValidate="TxtUserName" ErrorMessage="用户名不能为空"></asp:RequiredFieldValidator>
                        <asp:Label ID="lblusename" runat="server" ForeColor="#FF3300"></asp:Label>
                    </td>
                </tr>

                <tr>
                    <td align="right" style="height: 40px; width: 128px;">
                        <span style="font-size: 9pt">密 码：</span>
                    </td>
                    <td style="text-align: left; height: 40px;" align="left">
                    <asp:TextBox ID="TxtPassword" runat="server" TextMode="Password" Width="150px"></asp:TextBox>
                    </td>
                    <td style="text-align: left; height: 40px; width: 156px;">&nbsp;<asp:RequiredFieldValidator ID="filepass" runat="server" ErrorMessage="密码不能为空" ControlToValidate="TxtPassword"></asp:RequiredFieldValidator>
                    <asp:Label ID="lblpass" runat="server" ForeColor="#FF3300"></asp:Label><br/>
                    <a href="Forgot.aspx">忘记密码？</a>
                    </td>
                </tr>
                <tr>
                    <td align="right" style="height: 32px; width: 128px;">
                        <span style="font-size: 9pt"> 角色：</span>
                    </td>
                    <td align="left" style="height: 32px; text-align: left">
                        <asp:DropDownList ID="DropDownList1" runat="server">
                            <asp:ListItem>管理员</asp:ListItem>
                            <asp:ListItem Selected="True">员工</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td style="height: 32px; text-align: left; width: 156px;">
                    </td>
                </tr>
	            <tr>
                    <td colspan="3" align="center" style="height: 62px">
                    <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/deng1.jpg"
                         OnClick="ImageButton1_Click" Height="31px" />&nbsp;
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
