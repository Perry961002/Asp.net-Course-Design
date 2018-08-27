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

public partial class Admin_SearchTInfo : System.Web.UI.Page
{
    SqlHelper data = new SqlHelper();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BinderKM();
        }
    }
    private void BinderKM()
    {

        DropDownList2.DataSource = data.GetDataReader("select * from BMXX ");
        DropDownList2.DataTextField = "BMMC";
        DropDownList2.DataValueField = "BMBH";
        DropDownList2.DataBind();
        DropDownList2.Items.Add("所有部门");
        DropDownList2.Items[this.DropDownList2.Items.Count - 1].Value = "-1";
        DropDownList2.SelectedIndex = this.DropDownList2.Items.Count - 1;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("TInfoManger.aspx?" + "zhigonghao=" + zhigonghao.Text + "&xingbie=" + xingbie.SelectedValue + "&BMXX=" + DropDownList2.SelectedValue + "&UserTruename=" + UserTruename.Text + "&Education=" + Education.Text + "&zhengjianhaoma=" + zhengjianhaoma.Text + "&pinrenzhiwu=" + pinrenzhiwu.Text + "&zhengzhimianmao=" + zhengzhimianmao.SelectedValue);
 
    }
}
