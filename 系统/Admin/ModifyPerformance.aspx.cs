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
public partial class Admin_ModifyPerformance : System.Web.UI.Page
{
    SqlHelper data = new SqlHelper();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            int id = int.Parse(Request.QueryString["id"].ToString());
            SqlDataReader dr = data.GetDataReader("select * from Performance where id=" + id);
            dr.Read();
            username.Text = dr["username"].ToString();
            TextBox2.Text = dr["TypeName"].ToString();
            TextBox3.Text = dr["PNum"].ToString();
            TextBox1.Text = dr["PContent"].ToString();
     
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        int id = int.Parse(Request.QueryString["id"].ToString());
        SqlHelper update = new SqlHelper();


        string sql = "update  Performance set username='" + username.Text + "',TypeName='" + TextBox2.Text + "',PNum='" + TextBox3.Text + "',PContent='" + TextBox1.Text + "'   where id=" + id;
            update.RunSql(sql);
      
        Alert.AlertAndRedirect("修改成功", "PerformanceManger.aspx");
    }
}
