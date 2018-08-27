<%@ Page Language="C#" AutoEventWireup="true" CodeFile="loginout.aspx.cs" Inherits="loginout" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>注销登录</title>
   <link href="Admin/style/style.css" rel="Stylesheet" type="text/css" />
    <script type="text/javascript">
        function reopen()
        {
			ALLgoToURL('parent','Login.aspx');
        } 
        function ALLgoToURL() { 
          var i, args=ALLgoToURL.arguments; 
          document.MM_returnValue = false;
          for (i=0; i<(args.length-1); i+=2) 
            eval(args[i]+".location='"+args[i+1]+"'");
        }     
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <p style="margin:10%;"></p>
        <table cellpadding="0" cellspacing="0" border="0" width="350" style="background-color:transparent"  align="center">
	        <tr>
		        <td class="wtabtitleleft wtabtitletxt" nowrap="nowrap">登录注销</td>
		        <td class="wtabtitleright"></td>
	        </tr>
	        <tr>
		        <td class="wtabcontent" colspan="2" style="height:100">
		            <div style="float:left;width:80px;">
		                <img alt="0" src="images/logout.gif" border="0" style=" text-align :center; margin-top :10px"  />
		            </div>
		            <div style="float:left; margin:10px; text-align:center;">
		            你确定要注销当前登录用户吗？<br /><br />
                    <asp:Button ID="btnOK" runat="server" CssClass="button60" OnClick="btnOK_Click" Text="确定" />&nbsp;
                    <asp:Button ID="btnCacel" runat="server" OnClick="btnCancel_Click" Text="取消" />
                    </div>
		        </td>
	        </tr>
	        <tr>
		        <td class="wtabbuttomleft" ></td>
		        <td style="width:80%" class="wtabbuttomright"></td>
	        </tr>
        </table>
        

    </form>
</body>
</html>
