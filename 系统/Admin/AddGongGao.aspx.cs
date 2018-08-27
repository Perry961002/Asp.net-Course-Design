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

public partial class Admin_AddGongGao : System.Web.UI.Page
{
    SqlHelper insert = new SqlHelper();
    SqlHelper data = new SqlHelper();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
    
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string sql = "insert into GGGL(GGBT,GGNR)values('" + TextBox2.Text + "','" + TextBox1.Text + "') ";
        insert.RunSql(sql);
        Label1.Text = "";

        Alert.AlertAndRedirect("添加成功", "GongGaoManger.aspx");

    }
}
