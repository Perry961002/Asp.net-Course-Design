<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ShowTinfo.aspx.cs" Inherits="Admin_ShowTinfo" %>

<%@ Register Src="Controls/Top.ascx" TagName="Top" TagPrefix="uc1" %>

<%@ Register Src="Controls/left.ascx" TagName="left" TagPrefix="uc2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
     <title>人事工资管理系统</title>
    <link rel="stylesheet" href="style/css.css" type="text/css" />
  
      <script language="javascript" type="text/javascript" src="js/Calendar.js"></script>
       <script language="JavaScript" type="text/javascript">
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

</head>
<body>
    <form id="form1" runat="server">
      <div align="center" style="background-color: #d3d3d3">
  <div class="admindiv">
    <!--内容部分 -->
      &nbsp;&nbsp;
      <uc1:Top ID="Top1" runat="server" />
      <div class="adminzhong" style="height:685px">
	  <!--中部内容 -->
	  <div class="adminleft">
          <uc2:left ID="Left1" runat="server" />
          <!--左边内容 -->
	   <!--左边内容 -->
	  </div>
	  
	  <div class="adminright"  style="height: 678px">
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
                    查看员工档案信息</td>
            </tr>
 <tr>
                        <td style="width: 93px; height: 24px">
                            职工号：</td>
                        <td align="left" style="width: 228px; height: 24px">
                      <asp:TextBox ID="zhigonghao" runat="server" ReadOnly="True" Height="16px" Width="175px"></asp:TextBox>
                            </td>
     <td align="left" style="width: 145px;" rowspan="3">
         照片：</td>
     <td align="left" style="width: 283px;" rowspan="3" valign="top">
         <table style="height: 91px; width: 292px;">
             <tr>
                 <td colspan="2" style="height: 104px">
                     <asp:Image ID="Image1" runat="server" Height="111px" Width="118px" /></td>
             </tr>
         </table>
      
     
                            </td>
                    </tr>
                    <tr>
                        <td style="width: 93px; height: 12px">
                            姓名：</td>
                        <td align="left" style="width: 228px; height: 12px">
                            <asp:TextBox ID="TextBox2" runat="server" MaxLength="200" Width="163px" ReadOnly="True"></asp:TextBox>
                            </td>
                    </tr>
                    <tr>
                        <td style="width: 93px; height: 23px">
                            出生日期：</td>
                        <td align="left" style="width: 228px; height: 23px">
                            <asp:TextBox ID="TextBox3" runat="server" MaxLength="200" Width="163px" onclick="getDateString(this,oCalendarChs)" ReadOnly="True"></asp:TextBox>
                            </td>
                    </tr>
              <tr>
                  <td style="width: 93px; height: 23px">
                      员工性别：</td>
                  <td align="left" style="width: 228px; height: 23px">
                      <asp:TextBox ID="xingbie" runat="server" ReadOnly="True" Width="37px"></asp:TextBox></td>
                  <td align="left" style="width: 145px; height: 23px">
                      合同文件：</td>
                  <td align="left" style="width: 283px; height: 23px"><a href="../UserManger/PdfViewer.aspx">查询员工信息</a></td>
              </tr>
                    <tr>
                        <td style="width: 93px; height: 23px">
                            学历：</td>
                        <td align="left" style="width: 228px; height: 23px">
                            <asp:TextBox ID="TextBox4" runat="server" MaxLength="200" Width="163px" ReadOnly="True"></asp:TextBox>
                            </td>
                        <td align="left" style="width: 145px; height: 23px">
                            员工部门：</td>
                        <td align="left" style="width: 283px; height: 23px">
                            <asp:TextBox ID="BMXX" runat="server" ReadOnly="True"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td style="width: 93px; height: 23px">
                            出生地：</td>
                        <td align="left" style="width: 228px; height: 23px">
                            <asp:TextBox ID="chushengdi" runat="server" Width="245px" ReadOnly="True"></asp:TextBox></td>
                        <td align="left" style="width: 145px; height: 23px">
                            籍贯：</td>
                        <td align="left" style="width: 283px; height: 23px">
                            <asp:TextBox ID="jiguan" runat="server" Width="283px" ReadOnly="True"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td style="width: 93px; height: 23px">
                            民族：</td>
                        <td align="left" style="width: 228px; height: 23px">
                            <asp:TextBox ID="minzu" runat="server" Width="52px" ReadOnly="True"></asp:TextBox></td>
                        <td align="left" style="width: 145px; height: 23px">
                            国籍：</td>
                        <td align="left" style="width: 283px; height: 23px">
                            <asp:TextBox ID="guoji" runat="server" Width="99px" ReadOnly="True"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td style="width: 93px; height: 23px">
                            部门单位：</td>
                        <td align="left" style="width: 228px; height: 23px">
                            <asp:TextBox ID="bumendanwei" runat="server" Width="160px" ReadOnly="True"></asp:TextBox></td>
                        <td align="left" style="width: 145px; height: 23px">
                            证件类型：</td>
                        <td align="left" style="width: 283px; height: 23px">
                            <asp:TextBox ID="zhengjianleixing" runat="server" Width="66px" ReadOnly="True">身份证</asp:TextBox></td>
                    </tr>
                    <tr>
                        <td style="width: 93px; height: 23px">
                            身份证：</td>
                        <td align="left" style="width: 228px; height: 23px">
                            <asp:TextBox ID="zhengjianhaoma" runat="server" Width="190px" ReadOnly="True"></asp:TextBox>
                            </td>
                        <td align="left" style="width: 145px; height: 23px">
                            参加工作年月：</td>
                        <td align="left" style="width: 283px; height: 23px">
                            <asp:TextBox ID="gongzuoriqi" runat="server" MaxLength="200" onclick="getDateString(this,oCalendarChs)" Width="180px" ReadOnly="True"></asp:TextBox></td>
                    </tr>
                    <tr>
                    
                        <td align="left" style="width: 145px; height: 23px">
                            政治面貌：</td>
                        <td align="left" style="width: 283px; height: 23px">
                            <asp:TextBox ID="zhengzhimianmao" runat="server" ReadOnly="True" Width="99px"></asp:TextBox></td>
                    </tr>
              <tr>
                  <td align="center" colspan="4" style="height: 24px; background-color: #e8e8e8; text-align: center">
                      岗位信息</td>
              </tr>
              <tr>
                  <td style="width: 93px; height: 23px">
                      聘任职务：</td>
                  <td align="left" style="width: 228px; height: 23px">
                      <asp:TextBox ID="pinrenzhiwu" runat="server" Width="214px" ReadOnly="True"></asp:TextBox></td>
                  <td align="left" style="width: 145px; height: 23px">
                      岗位等级：</td>
                  <td align="left" style="width: 283px; height: 23px">
                      <asp:TextBox ID="gangweidengji" runat="server" Width="104px" ReadOnly="True"></asp:TextBox></td>
              </tr>
              <tr>
                  <td style="width: 93px; height: 23px">
                      岗位类别：</td>
                  <td align="left" style="width: 228px; height: 23px">
                      <asp:TextBox ID="gangweileibie" runat="server" Width="104px" ReadOnly="True"></asp:TextBox></td>
                  <td align="left" style="width: 145px; height: 23px">
                      </td>
                  <td align="left" style="width: 283px; height: 23px">
                      </td>
              </tr>
              <tr>
                  <td style="height: 24px; background-color: #e8e8e8; text-align: center" align="center" colspan="4">
                      联系方式</td>
              </tr>
              <tr>
                  <td style="width: 93px; height: 23px">
                            固定电话：</td>
                  <td align="left" style="width: 228px; height: 23px">
                            <asp:TextBox ID="TextBox5" runat="server" MaxLength="200" Width="163px" ReadOnly="True"></asp:TextBox></td>
                  <td align="left" style="width: 145px; height: 23px">
                            移动电话：</td>
                  <td align="left" style="width: 283px; height: 23px">
                            <asp:TextBox ID="TextBox6" runat="server" MaxLength="200" Width="163px" ReadOnly="True"></asp:TextBox></td>
              </tr>
              <tr>
                  <td style="width: 93px; height: 23px">
                      家庭住址：</td>
                  <td align="left" style="width: 228px; height: 23px">
                      <asp:TextBox ID="jiatingzhuzhi" runat="server" MaxLength="200" Width="232px" ReadOnly="True"></asp:TextBox></td>
                  <td align="left" style="width: 145px; height: 23px">
                      邮政编码：</td>
                  <td align="left" style="width: 283px; height: 23px">
                      <asp:TextBox ID="youzhengbianma" runat="server" MaxLength="200" Width="96px" ReadOnly="True"></asp:TextBox></td>
              </tr>
              <tr>
                  <td style="width: 93px; height: 23px">
                      户口所在：</td>
                  <td align="left" style="width: 228px; height: 23px">
                      <asp:TextBox ID="hukousuozaidi" runat="server" MaxLength="200" Width="232px" ReadOnly="True"></asp:TextBox></td>
                  <td align="left" style="width: 145px; height: 23px">
                      电子邮箱：</td>
                  <td align="left" style="width: 283px; height: 23px">
                      <asp:TextBox ID="dianziyouxiang" runat="server" MaxLength="200" Width="232px" ReadOnly="True"></asp:TextBox></td>
              </tr>
              <tr>
                  <td style="width: 93px; height: 23px">
                      QQ：</td>
                  <td align="left" style="width: 228px; height: 23px">
                      <asp:TextBox ID="QQ" runat="server" MaxLength="200" Width="98px" ReadOnly="True"></asp:TextBox></td>
                  <td align="left" style="width: 145px; height: 23px">
                      MSN:</td>
                  <td align="left" style="width: 283px; height: 23px">
                      <asp:TextBox ID="Msn" runat="server" MaxLength="200" Width="98px" ReadOnly="True"></asp:TextBox></td>
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
