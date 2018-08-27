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

public partial class Admin_AddPerformance : System.Web.UI.Page
{
    SqlHelper insert = new SqlHelper();
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
        DropDownList2.DataTextField = "zhigonghao";
        DropDownList2.DataValueField = "zhigonghao";
        DropDownList2.DataBind();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string sql = "insert into Performance(zhigonghao,username,TypeName,PContent,PNum)values('" + DropDownList2.SelectedValue + "','" + DropDownList2.SelectedItem.Text + "','" + TextBox2.Text + "','" + TextBox1.Text + "','" + TextBox3.Text + "') ";

        insert.RunSql(sql);
        Label1.Text = "";

        Alert.AlertAndRedirect("添加成功", "PerformanceManger.aspx");

    }
}
