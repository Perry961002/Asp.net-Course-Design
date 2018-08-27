<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Wage.aspx.cs" Inherits="Admin_Wage" %>

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
                    员工薪资管理</td>
            </tr>
            <tr>
                <td width="50%" style="height: 30px">
                    <asp:GridView ID="GvInfo" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                        BackColor="White" CellPadding="5" DataKeyNames="XZBH" OnPageIndexChanging="GvInfo_PageIndexChanging"
                        OnRowDataBound="GvInfo_RowDataBound" PageSize="12" Width="100%">
                        <PagerSettings FirstPageText="首页" LastPageText="尾页" Mode="NextPreviousFirstLast"
                            NextPageText="下一页" PageButtonCount="12" PreviousPageText="上一页" />
                        <RowStyle HorizontalAlign="Left" />
                        <Columns>
                            <asp:TemplateField HeaderText="员工编号">
                                <ItemStyle HorizontalAlign="Left" Width="80px" />
                                <ItemTemplate>
                                    <asp:Label ID="YGBH" runat="server" Text='<%# Bind("zhigonghao") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            
                            <asp:TemplateField HeaderText="年份">
                                <ItemStyle HorizontalAlign="Left" Width="80px" />
                                <ItemTemplate>
                                    <asp:Label ID="YDATE" runat="server" Text='<%# Bind("YDATE") %>' Width="74px"></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="月份">
                                <ItemStyle HorizontalAlign="Left" Width="80px" />
                                <ItemTemplate>
                                    <asp:Label ID="MDATE" runat="server" Text='<%# Bind("MDATE") %>' Width="75px"></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="基本工资">
                                <ItemStyle HorizontalAlign="Left" Width="80px" />
                                <ItemTemplate>
                                    <asp:Label ID="JBGZ" runat="server" Text='<%# Bind("JBGZ") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="绩效工资">
                                <ItemStyle HorizontalAlign="Left" Width="80px" />
                                <ItemTemplate>
                                    <asp:Label ID="JXGZ" runat="server" Text='<%# Bind("JXGZ") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="个人扣除">
                                <ItemStyle HorizontalAlign="Left" Width="80px" />
                                <ItemTemplate>
                                    <asp:Label ID="GRKC" runat="server" Text='<%# Bind("GRKC") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            
                            <asp:TemplateField HeaderText="操作时间">
                                <ItemStyle HorizontalAlign="Left" Width="80px" />
                                <ItemTemplate>
                                    <asp:Label ID="LRRQ" runat="server" Text='<%# Bind("LRRQ") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            
                            <asp:TemplateField HeaderText="选择">
                                <HeaderTemplate>
                                    选择</HeaderTemplate>
                                <EditItemTemplate>
                                    <asp:CheckBox ID="CheckBox1" runat="server" />
                                </EditItemTemplate>
                                <ItemStyle HorizontalAlign="Center" Width="40px" />
                                <ItemTemplate>
                                    <asp:CheckBox ID="chkSelect" runat="server" />
                                </ItemTemplate>
                            </asp:TemplateField>
                            
                        </Columns>
                        <PagerTemplate>
                            <table border="0" width="100%">
                                <tr>
                                    <td>
                                        <asp:LinkButton ID="LinkButtonFirstPage" runat="server" CommandArgument="First" CommandName="Page"
                                            Visible=" <%# ((GridView)Container.NamingContainer).PageIndex != 0 %>">首页 </asp:LinkButton>
                                        <asp:LinkButton ID="LinkButtonPreviousPage" runat="server" CommandArgument="Prev"
                                            CommandName="Page" Visible=" <%# ((GridView)Container.NamingContainer).PageIndex != 0 %>">上一页 </asp:LinkButton>
                                        <asp:LinkButton ID="LinkButtonNextPage" runat="server" CommandArgument="Next" CommandName="Page"
                                            Visible=" <%# ((GridView)Container.NamingContainer).PageIndex != ((GridView)Container.NamingContainer).PageCount - 1 %>">下一页 </asp:LinkButton>
                                        <asp:LinkButton ID="LinkButtonLastPage" runat="server" CommandArgument="Last" CommandName="Page"
                                            Visible=" <%# ((GridView)Container.NamingContainer).PageIndex != ((GridView)Container.NamingContainer).PageCount - 1 %>">尾页 </asp:LinkButton>
                                        共
                                        <asp:Label ID="LabelPageCount" runat="server" Text=" <%# ((GridView)Container.NamingContainer).PageCount %>"> </asp:Label>页
                                        第
                                        <asp:Label ID="Label2" runat="server" Text=" <%# ((GridView)Container.NamingContainer).PageIndex + 1 %>"> </asp:Label>页
                                    </td>
                                    <td align="right" width="20%">
                                    </td>
                                </tr>
                            </table>
                        </PagerTemplate>
                        <PagerStyle BackColor="#F6F6F6" HorizontalAlign="Left" />
                        <HeaderStyle BackColor="#F6F6F6" />
                    </asp:GridView>
                    </td>
            </tr>
              <tr>
                  <td align="center" style="height: 30px" width="50%">
                      <asp:Button ID="btnSelectAll" runat="server" OnClick="btnSelectAll_Click" Text="全选" /><asp:Button
                          ID="btnDel" runat="server" OnClick="btnDel_Click" OnClientClick="javascript:return confirm('确定删除么？');"
                          Text="删除" /><asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label></td>
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
