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
public partial class Admin_AddGZ : System.Web.UI.Page
{
    SqlHelper data = new SqlHelper();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BinderT();
        }
    }
    private void BinderT()
    {
        DropDownList2.DataSource = data.GetDataReader("select * from UserInfo ");
        DropDownList2.DataTextField = "UserTruename";
        DropDownList2.DataValueField = "zhigonghao";
        DropDownList2.DataBind();
        DropDownList2.Items.Add("选择员工");
        DropDownList2.Items[this.DropDownList2.Items.Count - 1].Value = " ";
        DropDownList2.SelectedIndex = this.DropDownList2.Items.Count - 1;
    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
       
            data.RunSql("insert into XZGL(zhigonghao,YDATE,MDATE,JBGZ,JXGZ,GRKC)values(" + DropDownList2.SelectedValue + ",'" + DropDownList3.SelectedValue + "','" + DropDownList1.SelectedValue + "'," + TextBox3.Text + "," + TextBox6.Text + "," + TextBox7.Text + ")");
           
            Alert.AlertAndRedirect("发放成功！", "Wage.aspx");
        
    }
}
