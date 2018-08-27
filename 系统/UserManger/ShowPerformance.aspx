<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ShowPerformance.aspx.cs" Inherits="UserManger_ShowPerformance" %>

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
      <uc1:Top ID="Top1" runat="server" />
      <div class="adminzhong" style="height: 799px">
	  <!--中部内容 -->
	  <div class="adminleft">
          <uc2:left ID="Left1" runat="server" />
          <!--左边内容 -->
	   <!--左边内容 -->
	  </div>
	  
	  <div class="adminright" style="height: 788px; width: 762px;">
	   <!--右边内容 -->
	     <div class="adminrighttit">
		  <div class="adminrighttit2">
		    <a href =Default.aspx >管理首页</a>
		  </div>
	    </div>
	    
	    <div class="adminrightcon">
		  <table align="center" border="0" cellpadding="3" cellspacing="1" style="width: 100%;">
            <tr>
                <td colspan="2" style="height: 25px; background-color: #e8e8e8; text-align: center">
                    查看奖惩信息</td>
            </tr>
              <tr>
                  <td class="left_title_1" style="width: 88px; height: 30px">
                      员工姓名：</td>
                  <td align="left" style="width: 621px; height: 30px">
                      <asp:Label ID="username" runat="server"></asp:Label></td>
              </tr>
              <tr>
                  <td class="left_title_1" style="width: 88px; height: 30px">
                      奖惩类型：</td>
                  <td align="left" style="width: 621px; height: 30px">
                      <asp:TextBox ID="TextBox2" runat="server" MaxLength="200" onclick="getDateString(this,oCalendarChs)"
                          Width="238px" ReadOnly="True"></asp:TextBox>
                      </td>
              </tr>
              <tr>
                  <td class="left_title_1" style="width: 88px; height: 30px">
                      奖惩薪资：</td>
                  <td align="left" style="width: 621px; height: 30px">
                      <asp:TextBox ID="TextBox3" runat="server" MaxLength="200" onclick="getDateString(this,oCalendarChs)"
                          Width="77px" ReadOnly="True"></asp:TextBox></td>
              </tr>
              <tr>
                  <td class="left_title_1" style="width: 88px; height: 30px">
                      奖惩内容：</td>
                  <td align="left" style="width: 621px; height: 30px">
                      <asp:TextBox ID="TextBox1" runat="server" Height="221px" TextMode="MultiLine" Width="637px" ReadOnly="True"></asp:TextBox></td>
              </tr>
              <tr>
                  <td align="center" colspan="2" style="height: 30px">
                      &nbsp;<asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label></td>
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
