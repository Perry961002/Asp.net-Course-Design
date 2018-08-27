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

public partial class loginout : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            ViewState["BackUrl"] = Request.UrlReferrer.ToString();
        } 


    }
    protected void btnOK_Click(object sender, EventArgs e)
    {
        Session.Clear();
        Session.Abandon();
        Session["user"] = null;
        Session["username"] = null;
        Session["userid"] = null;
        Response.Redirect("login.aspx");
    }
    protected void btnCancel_Click(object sender, EventArgs e)
    {

        Response.Redirect(ViewState["BackUrl"].ToString()); 
        
    }
}
