<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddGZ.aspx.cs" Inherits="Admin_AddGZ" %>

<%@ Register Src="Controls/Top.ascx" TagName="Top" TagPrefix="uc1" %>
<%@ Register Src="Controls/left.ascx" TagName="left" TagPrefix="uc2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
     <title>人事工资管理系统</title>
    <link rel="stylesheet" href="style/css.css" type="text/css" />
 <script language="javascript" type="text/javascript" src="../js/Calendar1.js"></script>

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
	  
	  <div class="adminright" style="height: 854px; width: 762px;">
	   <!--右边内容 -->
	     <div class="adminrighttit">
		  <div class="adminrighttit2">
		    <a href ="Default.aspx" >管理首页</a>
		  </div>
	    </div>
	    
	    <div class="adminrightcon">
		  <table align="center" border="0" cellpadding="3" cellspacing="1" style="width: 100%;">
                <tr>
                        <td colspan="2" style="height: 24px; background-color: #e8e8e8; text-align: center">
                        添加工资信息</td>
                </tr>
                <tr>
                  <td align="left" style="width: 893px; height: 29px">
                      发放年份：
                      <asp:DropDownList ID="DropDownList3" runat="server">
                          <asp:ListItem>2016</asp:ListItem>
                          <asp:ListItem>2017</asp:ListItem>
                          <asp:ListItem>2018</asp:ListItem>
                          <asp:ListItem>2019</asp:ListItem>
                          <asp:ListItem>2020</asp:ListItem>
                         
                      </asp:DropDownList></td>
                </tr>
                <tr>
                   <td align="left" style="width: 893px; height: 29px">
                       发放月份：
                          <asp:DropDownList ID="DropDownList1" runat="server"  >
                              <asp:ListItem>1</asp:ListItem>
                              <asp:ListItem>2</asp:ListItem>
                              <asp:ListItem>3</asp:ListItem>
                              <asp:ListItem>4</asp:ListItem>
                              <asp:ListItem>5</asp:ListItem>
                              <asp:ListItem>6</asp:ListItem>
                              <asp:ListItem>7</asp:ListItem>
                              <asp:ListItem>8</asp:ListItem>
                              <asp:ListItem>9</asp:ListItem>
                              <asp:ListItem>10</asp:ListItem>
                              <asp:ListItem>11</asp:ListItem>
                               <asp:ListItem>12</asp:ListItem>
                            </asp:DropDownList>
                     </td>
              </tr>
              <tr>
                  <td align="left" style="width: 893px; height: 30px">
                      员工姓名：<asp:DropDownList ID="DropDownList2" runat="server" Width="167px" >
                      </asp:DropDownList></td>
              </tr>
              
              <tr>
                  <td align="left" style="width: 893px; height: 30px">
                     基本薪资：<asp:TextBox ID="TextBox3" runat="server" Width="120px">0</asp:TextBox>元<asp:RequiredFieldValidator
                     ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="*"></asp:RequiredFieldValidator>
                  </td>
              </tr>
              <tr>
                  <td align="left" style="width: 893px; height: 30px">
                      绩效工资：<asp:TextBox
                                    ID="TextBox6" runat="server" Width="121px">0</asp:TextBox>元</td>
              </tr>
              <tr>
                  <td align="left" style="width: 893px; height: 30px">
                      个人扣除：<asp:TextBox ID="TextBox7"
                                        runat="server" Width="120px">0</asp:TextBox>元
                                <asp:Label ID="Label4" runat="server" ForeColor="Red"></asp:Label></td>
              </tr>
              <tr>
                  <td align="center" style="width: 893px; height: 30px">
                                <asp:Button ID="btnAdd" runat="server" OnClick="btnAdd_Click" Text="确认发放" /></td>
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
