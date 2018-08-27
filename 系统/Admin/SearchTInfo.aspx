<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SearchTInfo.aspx.cs" Inherits="Admin_SearchTInfo" %>

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
      <div class="adminzhong" style="height:600px">
	  <!--中部内容 -->
	  <div class="adminleft">
          <uc2:left ID="Left1" runat="server" />
          <!--左边内容 -->
	   <!--左边内容 -->
	  </div>
	  
	  <div class="adminright"  style="height: 600px">
	   <!--右边内容 -->
	     <div class="adminrighttit">
		  <div class="adminrighttit2">
		    <a href =Default.aspx >管理首页</a>
		  </div>
	    </div>
	    
	    <div class="adminrightcon">
		  <table align="center" border="0" cellpadding="3" cellspacing="1" style="width: 100%;">
            <tr>
                <td colspan="4" style="height: 24px; background-color: #e8e8e8; text-align: center">
                    查询员工信息</td>
            </tr>
 <tr>
                        <td style="width: 147px; height: 24px">
                            职工号：</td>
                        <td align="left" style="width: 228px; height: 24px">
                      <asp:TextBox ID="zhigonghao" runat="server"></asp:TextBox>
                            </td>
     <td align="left" style="width: 228px;" >
                      性别：</td>
     <td align="left" style="width: 283px;" valign="top">
                      <asp:DropDownList ID="xingbie" runat="server">
                          <asp:ListItem>所有</asp:ListItem>
                          <asp:ListItem>男</asp:ListItem>
                          <asp:ListItem>女</asp:ListItem>
                      </asp:DropDownList></td>
                    </tr>
                    <tr>
                        <td style="width: 147px; height: 24px">
                            姓名：</td>
                        <td align="left" style="width: 228px; height: 24px">
                            <asp:TextBox ID="UserTruename" runat="server" MaxLength="200" Width="163px"></asp:TextBox>
                            </td>
                        <td align="left" style="width: 228px; height: 24px">
                            员工部门：</td>
                        <td align="left" style="width: 228px; height: 24px">
                            <asp:DropDownList ID="DropDownList2" runat="server" Width="149px">
                            </asp:DropDownList></td>
                    </tr>
                    <tr>
                        <td style="width: 147px; height: 12px">
                            学历：</td>
                        <td align="left" style="width: 228px; height: 12px">
                            <asp:TextBox ID="Education" runat="server" MaxLength="200" Width="163px"></asp:TextBox>
                            </td>
                        <td align="left" style="width: 228px; height: 12px">
                            政治面貌：</td>
                        <td align="left" style="width: 228px; height: 12px">
                            <asp:DropDownList ID="zhengzhimianmao" runat="server" Width="79px">
                                <asp:ListItem>所有</asp:ListItem>
                                <asp:ListItem Value="党员">党员</asp:ListItem>
                                <asp:ListItem>团员</asp:ListItem>
                                <asp:ListItem>群众</asp:ListItem>
                                <asp:ListItem>其他</asp:ListItem>
                            </asp:DropDownList></td>
                    </tr>
                    <tr>
                        <td style="width: 147px; height: 23px">
                            聘任职务：</td>
                        <td align="left" style="width: 228px; height: 23px">
                      <asp:TextBox ID="pinrenzhiwu" runat="server" Width="214px"></asp:TextBox></td>
                        <td align="left" style="width: 228px; height: 23px">
                            身份证：</td>
                        <td align="left" style="width: 283px; height: 23px">
                            <asp:TextBox ID="zhengjianhaoma" runat="server" Width="190px"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td align="center" colspan="4" style="height: 34px">
                            <hr />
                            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="查询" /></td>
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
