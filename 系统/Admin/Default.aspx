<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Admin_Default" %>

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
  
      <uc1:Top ID="Top1" runat="server" />
      <div class="adminzhong" style="height: 641px">
	  <!--中部内容 -->
	  <div class="adminleft">
          <uc2:left ID="Left1" runat="server" />
          <!--左边内容 -->
	   <!--左边内容 -->
	  </div>
	  
	  <div class="adminright" style="height: 651px">
	   <!--右边内容 -->
	     <div class="adminrighttit">
		  <div class="adminrighttit2">
		    <a href ="Default.aspx" >管理首页</a>
		  </div>
	    </div>
	    
	    <div class="adminrightcon">
		  <table align="center" border="0" cellpadding="3" cellspacing="1" width="98%" style="margin-top:20px;">
            <tr>
                <td width="100%" style="background-color: #e8e8e8; text-align: center; height: 23px;">
                    <span style="font-size: 10.5pt; font-family: 宋体;">欢迎使用人事管理系统</span></td>
            </tr>
            <tr>
                <td  height="30" width="50%">
                    当前登录用户：<asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label></td>
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
