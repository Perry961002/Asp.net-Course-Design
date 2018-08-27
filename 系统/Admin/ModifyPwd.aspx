<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ModifyPwd.aspx.cs" Inherits="Admin_ModifyPwd" %>

<%@ Register Src="Controls/Top.ascx" TagName="Top" TagPrefix="uc1" %>

<%@ Register Src="Controls/left.ascx" TagName="left" TagPrefix="uc2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
     <title>人事工资管理系统</title>
    <link rel="stylesheet" href="style/css.css" type="text/css" />

</head>
<body>
    <form id="form1" runat="server">
      <div align="center" style="background-color: #d3d3d3">
  <div class="admindiv">
    <!--内容部分 -->
      &nbsp;&nbsp;
      <uc1:Top ID="Top1" runat="server" />
      <div class="adminzhong" style="height: 799px">
	  <!--中部内容 -->
	  <div class="adminleft">
          <uc2:left ID="Left1" runat="server" />
          <!--左边内容 -->
	   <!--左边内容 -->
	  </div>
	  
	  <div class="adminright" style="height: 788px">
	   <!--右边内容 -->
	     <div class="adminrighttit">
		  <div class="adminrighttit2">
		    <a href ="Default.aspx" >管理首页</a>
		  </div>
	    </div>
	    
	    <div class="adminrightcon">
		  <table align="center" border="0" cellpadding="3" cellspacing="1" style="width: 100%;">
            <tr>
                <td width="100%" style="background-color: #e8e8e8; text-align: center; height: 24px;">
                    &nbsp;修改登录账号</td>
            </tr>
              <tr>
                  <td align="center" style="height: 30px" width="50%">
                      原密码：<asp:TextBox ID="txtpwd1" runat="server" TextMode="Password"></asp:TextBox>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtpwd1"
                          ErrorMessage="必填"></asp:RequiredFieldValidator>新密码：<asp:TextBox ID="txtpwd2" runat="server"
                              TextMode="Password" Width="138px"></asp:TextBox>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtpwd2"
                          ErrorMessage="必填"></asp:RequiredFieldValidator><asp:Button ID="Button1" runat="server"
                              OnClick="Button1_Click" Text="修改" /><asp:Label ID="LabelWarningMessage" runat="server"></asp:Label></td>
              </tr>

        </table>
		</div>
	    <!--右边内容 -->
	  </div>
	  <!--中部内容 -->
	</div>
	<!--内容部分 -->
  </div>
</div>
    </form>
</body>
</html>
