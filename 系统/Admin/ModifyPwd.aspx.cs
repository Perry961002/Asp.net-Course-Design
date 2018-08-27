using System;
using System.Data; 
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;
public partial class Admin_ModifyPwd : System.Web.UI.Page
{
    Alert alert = new Alert();
    SqlHelper data = new SqlHelper();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

        }
    }/// <summary>
    /// 修改密码
    /// </summary>
    private void UPpwd()
    {
        SqlHelper mydata = new SqlHelper();
        string Username = Session["adminid"].ToString();
        try
        {
            string sql = "update [Admin]  set [Pwd] ='" + txtpwd2.Text.ToString() + "' where [id]='" + Username + "' ";
            mydata.RunSql(sql);
            LabelWarningMessage.Text = "修改成功！";
        }
        catch
        {

            LabelWarningMessage.Text = "修改失败！";
        }
    }
    /// <summary>
    /// 检验原来的密码
    /// </summary>
    private void chkpwd()
    {
        SqlDataReader dr;
        dr = data.GetDataReader("select * from  Admin  where id='" + Session["adminid"].ToString() + "' and Pwd='" + txtpwd1.Text + "'");
        if (dr.Read())
        {
            UPpwd();
        }
        else
        {
            LabelWarningMessage.Text = "原密码不正确！";
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        chkpwd();
    }
}
