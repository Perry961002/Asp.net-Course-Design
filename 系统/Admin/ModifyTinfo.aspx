<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ModifyTinfo.aspx.cs" Inherits="Admin_ModifyTinfo" %>

<%@ Register Src="Controls/Top.ascx" TagName="Top" TagPrefix="uc1" %>

<%@ Register Src="Controls/left.ascx" TagName="left" TagPrefix="uc2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
     <title>人事工资管理系统</title>
    <link rel="stylesheet" href="style/css.css" type="text/css" />
  
      <script language="javascript" type="text/javascript" src="js/Calendar.js"></script>
       <script language="JavaScript" type ="text/javascript" >
         <!-- 
          function killErrors() {
           return true;
           }
          window.onerror = killErrors;
          // -->
     </script>
    <script type="text/javascript">
 
        var oCalendarChs=new PopupCalendar("oCalendarChs"); //初始化控件时,请给出实例名称:oCalendarChs
        oCalendarChs.weekDaySting=new Array("星期日","星期一","星期二","星期三","星期四","星期五","星期六");
        oCalendarChs.monthSting=new Array("一月","二月","三月","四月","五月","六月","七月","八月","九月","十月","十一月","十二月");
        oCalendarChs.oBtnTodayTitle="Today";
        oCalendarChs.oBtnCancelTitle="Cancel";
        oCalendarChs.Init();
	</script>

     <style type="text/css">
         .inputBox {}
     </style>

</head>
<body>
    <form id="form1" runat="server">
      <div align="center" style="background-color: #d3d3d3">
  <div class="admindiv" style="height: 827px">
    <!--内容部分 -->
      &nbsp;&nbsp;
      <uc1:Top ID="Top1" runat="server" />
      <div class="adminzhong" style="height:722px">
	  <!--中部内容 -->
	  <div class="adminleft">
          <uc2:left ID="Left1" runat="server" />
          <!--左边内容 -->
	   <!--左边内容 -->
	  </div>
	  
	  <div class="adminright"  style="height: 725px">
	   <!--右边内容 -->
	     <div class="adminrighttit">
		  <div class="adminrighttit2">
		    <a href ="Default.aspx" >管理首页</a>
		  </div>
	    </div>
	    
	    <div class="adminrightcon">
		  <table align="center" border="0" cellpadding="3" cellspacing="1" style="width: 100%;">
            <tr>
                <td colspan="4" style="height: 24px; background-color: #e8e8e8; text-align: center">
                    修改员工档案信息</td>
            </tr>
            <tr>
                        <td style="width: 93px; height: 24px">
                            职工号：</td>
                        <td align="left" style="width: 228px; height: 24px">
                            <asp:Label ID="zhigonghao" runat="server"></asp:Label>
                        </td>
                        <td align="left" rowspan="4" style="width: 145px">
                        照片：</td>
                        <td align="left" rowspan="4" style="width: 283px" valign="top">
                            <table style="height: 91px; width: 292px;">
                            <tr>
                                <td style="width: 100px">
                                    <asp:Image ID="Image1" runat="server" Height="98px" Width="124px" /></td>
                                <td style="width: 100px">
                                    <asp:TextBox ID="pic" runat="server" CssClass="inputBox" ReadOnly="True" Width="65px"></asp:TextBox>
                                    &nbsp;
                                 <input id="file1" runat="server" class="inputBox" style="width: 61px; text-align: right; margin-left: 7px;" type="file" />
                                <asp:Button ID="Button2" runat="server" CausesValidation="False" CssClass="formbutton"
                                     Height="22px" OnClick="Button2_Click" Text="上传图片" Width="76px" />
                                <asp:Label ID="Label2" runat="server" Visible="False" Width="60px"></asp:Label></td>
                            </tr>
                            </table>
                        </td>
              </tr>
                    <tr>
                        <td style="width: 93px; height: 12px">
                            密码：</td>
                        <td align="left" style="width: 228px; height: 12px">
                            <asp:TextBox ID="psw" runat="server" Width="160px">**********</asp:TextBox>
                        </td>
                    </tr>
              <tr>
                  <td style="width: 93px; height: 12px">
                            姓名：</td>
                  <td align="left" style="width: 228px; height: 12px">
                            <asp:TextBox ID="TextBox2" runat="server" MaxLength="200" Width="163px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox2"
                                ErrorMessage="*"></asp:RequiredFieldValidator></td>
              </tr>
                    <tr>
                        <td style="width: 93px; height: 23px">
                            出生日期：</td>
                        <td align="left" style="width: 228px; height: 23px">
                            <asp:TextBox ID="TextBox3" runat="server" MaxLength="200" Width="163px" onclick="getDateString(this,oCalendarChs)"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox3"
                                ErrorMessage="*" Width="14px"></asp:RequiredFieldValidator></td>
                    </tr>
              <tr>
                  <td style="width: 93px; height: 23px">
                      员工性别：</td>
                  <td align="left" style="width: 228px; height: 23px">
                      <asp:DropDownList ID="xingbie" runat="server">
                          <asp:ListItem>男</asp:ListItem>
                          <asp:ListItem>女</asp:ListItem>
                      </asp:DropDownList></td>
                  <td align="left" style="width: 145px; height: 23px">
                      合同文件：</td>
                  <td align="left" style="width: 283px; height: 23px">
                                 <input id="file2" runat="server" class="inputBox" style="width: 170px; text-align: right; margin-left: 0px;" type="file" /><asp:Label ID="Label3" runat="server" Visible="False" Width="60px"></asp:Label>
                      <br />
                                    <asp:TextBox ID="pic0" runat="server" CssClass="inputBox" ReadOnly="True" Width="125px"></asp:TextBox>
                                <asp:Button ID="Button3" runat="server" CausesValidation="False" CssClass="formbutton"
                                     Height="22px" OnClick="Button3_Click" Text="上传文件" Width="76px" />
                                </td>
              </tr>
                    <tr>
                        <td style="width: 93px; height: 23px">
                            学历：</td>
                        <td align="left" style="width: 228px; height: 23px">
                            <asp:DropDownList ID="DropDownList3" runat="server" Width="129px">
                                <asp:ListItem>初中</asp:ListItem>
                                <asp:ListItem>高中</asp:ListItem>
                                <asp:ListItem>专科</asp:ListItem>
                                <asp:ListItem>本科</asp:ListItem>
                                <asp:ListItem>硕士</asp:ListItem>
                            </asp:DropDownList></td>
                        <td align="left" style="width: 145px; height: 23px">
                            员工部门：</td>
                        <td align="left" style="width: 283px; height: 23px">
                            <asp:DropDownList ID="DropDownList2" runat="server" Width="149px">
                            </asp:DropDownList></td>
                    </tr>
                    <tr>
                        <td style="width: 93px; height: 23px">
                            出生地：</td>
                        <td align="left" style="width: 228px; height: 23px">
                            <asp:TextBox ID="chushengdi" runat="server" Width="245px"></asp:TextBox></td>
                        <td align="left" style="width: 145px; height: 23px">
                            籍贯：</td>
                        <td align="left" style="width: 283px; height: 23px">
                            <asp:TextBox ID="jiguan" runat="server" Width="283px"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td style="width: 93px; height: 23px">
                            民族：</td>
                        <td align="left" style="width: 228px; height: 23px">
                            <asp:TextBox ID="minzu" runat="server" Width="52px"></asp:TextBox></td>
                        <td align="left" style="width: 145px; height: 23px">
                            国籍：</td>
                        <td align="left" style="width: 283px; height: 23px">
                            <asp:TextBox ID="guoji" runat="server" Width="99px"></asp:TextBox></td>
                    </tr>
                    <tr>
                         <td align="left" style="width: 145px; height: 23px">
                            证件类型：</td>
                        <td align="left" style="width: 283px; height: 23px">
                            <asp:TextBox ID="zhengjianleixing" runat="server" Width="66px">身份证</asp:TextBox></td>


                        <td style="width: 93px; height: 23px">
                            部门单位：</td>
                        <td align="left" style="width: 228px; height: 23px">
                            <asp:TextBox ID="bumendanwei" runat="server" Width="160px"></asp:TextBox></td>
                       
                    </tr>
                    <tr>
                        <td style="width: 93px; height: 23px">
                            身份证：</td>
                        <td align="left" style="width: 228px; height: 23px">
                            <asp:TextBox ID="zhengjianhaoma" runat="server" Width="160px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="zhengjianhaoma"
                                ErrorMessage="*"></asp:RequiredFieldValidator>
                            </td>
                        <td align="left" style="width: 145px; height: 23px">
                            参加工作年月：</td>
                        <td align="left" style="width: 283px; height: 23px">
                            <asp:TextBox ID="gongzuoriqi" runat="server" MaxLength="200" onclick="getDateString(this,oCalendarChs)" Width="180px"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td style="width: 93px; height: 23px">
                            </td>
                        <td align="left" style="width: 228px; height: 23px">
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="zhengjianhaoma"
                                ErrorMessage="身份证格式错误" ValidationExpression="\d{17}[\d|X]|\d{15}" Width="149px"></asp:RegularExpressionValidator></td>
                        <td align="left" style="width: 145px; height: 23px">
                            政治面貌：</td>
                        <td align="left" style="width: 283px; height: 23px">
                            <asp:DropDownList ID="zhengzhimianmao" runat="server">
                                <asp:ListItem Value="党员">党员</asp:ListItem>
                                <asp:ListItem>团员</asp:ListItem>
                                <asp:ListItem>群众</asp:ListItem>
                                <asp:ListItem>其他</asp:ListItem>
                            </asp:DropDownList></td>
                    </tr>
              <tr>
                  <td align="center" colspan="4" style="height: 24px; background-color: #e8e8e8; text-align: center">
                      岗位信息</td>
              </tr>
              <tr>
                  <td style="width: 93px; height: 22px">
                      职称信息：</td>
                  <td align="left" style="width: 228px; height: 22px">
                      <asp:TextBox ID="TextBox4" runat="server" Width="104px"></asp:TextBox></td>
                  <td align="left" style="width: 145px; height: 22px">
                      岗位等级：</td>
                  <td align="left" style="width: 283px; height: 22px">
                      <asp:TextBox ID="gangweidengji" runat="server" Width="104px"></asp:TextBox></td>
              </tr>
              <tr>
                  <td style="height: 24px; background-color: #e8e8e8; text-align: center" align="center" colspan="4">
                      联系方式</td>
              </tr>
              <tr>
                  <td style="width: 93px; height: 23px">
                            固定电话：</td>
                  <td align="left" style="width: 228px; height: 23px">
                            <asp:TextBox ID="TextBox5" runat="server" MaxLength="200" Width="163px"></asp:TextBox></td>
                  <td align="left" style="width: 145px; height: 23px">
                            移动电话：</td>
                  <td align="left" style="width: 283px; height: 23px">
                            <asp:TextBox ID="TextBox6" runat="server" MaxLength="200" Width="163px"></asp:TextBox>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox6"
                          ErrorMessage="*"></asp:RequiredFieldValidator>
                      <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox6"
                          ErrorMessage="格式错误" ValidationExpression="\d{11}"></asp:RegularExpressionValidator></td>
              </tr>
              <tr>
                  <td style="width: 93px; height: 23px">
                      家庭住址：</td>
                  <td align="left" style="width: 228px; height: 23px">
                      <asp:TextBox ID="jiatingzhuzhi" runat="server" MaxLength="200" Width="232px"></asp:TextBox></td>
                  <td align="left" style="width: 145px; height: 23px">
                      邮政编码：</td>
                  <td align="left" style="width: 283px; height: 23px">
                      <asp:TextBox ID="youzhengbianma" runat="server" MaxLength="200" Width="96px"></asp:TextBox></td>
              </tr>
              <tr>
                  <td style="width: 93px; height: 23px">
                      户口所在：</td>
                  <td align="left" style="width: 228px; height: 23px">
                      <asp:TextBox ID="hukousuozaidi" runat="server" MaxLength="200" Width="232px"></asp:TextBox></td>
                  <td align="left" style="width: 145px; height: 23px">
                      电子邮箱：</td>
                  <td align="left" style="width: 283px; height: 23px">
                      <asp:TextBox ID="dianziyouxiang" runat="server" MaxLength="200" Width="127px"></asp:TextBox>
                      <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="dianziyouxiang"
                          ErrorMessage="格式错误" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="dianziyouxiang"
                          ErrorMessage="*"></asp:RequiredFieldValidator></td>
              </tr>
              <tr>
                  <td style="width: 93px; height: 23px">
                      QQ：</td>
                  <td align="left" style="width: 228px; height: 23px">
                      <asp:TextBox ID="QQ" runat="server" MaxLength="200" Width="98px"></asp:TextBox></td>
                  <td align="left" style="width: 145px; height: 23px">
                      MSN:</td>
                  <td align="left" style="width: 283px; height: 23px">
                      <asp:TextBox ID="Msn" runat="server" MaxLength="200" Width="98px"></asp:TextBox></td>
              </tr>
                    <tr>
                        <td align="center" colspan="5" style="height: 34px">
                            <hr />
                            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="确认" />
                            <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label></td>
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
