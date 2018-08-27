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
public partial class Admin_login : System.Web.UI.Page
{
    SqlHelper data = new SqlHelper();
    SqlDataReader dr;
    Alert js = new Alert();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
         
        }

    }
    private void chkADmin()
    {
        if (TxtUserName.Text == "" && TxtPassword.Text == "")
        {
            Alert.AlertAndRedirect("没有输入账号和密码！", "Login.aspx");

        }
        else
        {
            dr = data.GetDataReader("select * from  Admin where Name='" + TxtUserName.Text.Trim() + "'and Pwd='" + TxtPassword.Text.Trim() + "' ");
            if (dr.Read())
            {
                Session["adminid"] = dr["id"].ToString();
                Session["admin"] = dr["Name"].ToString();
                Session["username"] = dr["Name"].ToString();
                Response.Redirect("Admin/Default.aspx");
            }
            else
            {
                Alert.AlertAndRedirect("管理员的账号或者密码不对请重新登录！", "Login.aspx");
            }
        }
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
       
            if (DropDownList1.SelectedValue == "管理员")
            {
                chkADmin();
            }
            else
            {
                SqlDataReader dr = data.GetDataReader("select * from  [UserInfo] where zhigonghao='" + TxtUserName.Text.Trim() + "'and Pwd='" + TxtPassword.Text.Trim() + "'  ");
                if (dr.Read())
                {
                    Session["user"] = dr["zhigonghao"].ToString();
                    Session["username"] = dr["UserTruename"].ToString();
                    Session["hetong"] = dr["hetong"].ToString();
                    //Session["userid"] = dr["Userid"].ToString();
                    Response.Redirect("UserManger/Default.aspx");

                }
                else
                {
                    Alert.AlertAndRedirect("账号或者密码不对请重新登录！", "Login.aspx");
                }
 
            }
       
    }
  
}
