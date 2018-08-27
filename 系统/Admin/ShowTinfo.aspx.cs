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
public partial class Admin_ShowTinfo : System.Web.UI.Page
{
    SqlHelper data = new SqlHelper();
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            string id = Request.QueryString["zhigonghao"].ToString();
            SqlDataReader dr = data.GetDataReader("select * from UserInfo,BMXX where zhigonghao=" + id+" and BMXX.BMBH=UserInfo.BMXX");
            dr.Read();
            TextBox2.Text = dr["UserTruename"].ToString();
            TextBox3.Text = dr["Birthday"].ToString();
            TextBox4.Text = dr["Education"].ToString();
            TextBox5.Text = dr["tel"].ToString();
            TextBox6.Text = dr["Mobile"].ToString();
            zhigonghao.Text = dr["zhigonghao"].ToString();

            BMXX.Text = dr["BMMC"].ToString();
     
            Image1.ImageUrl = "../uploads/images/" + dr["photo"].ToString();
            xingbie.Text = dr["xingbie"].ToString();
            chushengdi.Text = dr["chushengdi"].ToString();
            jiguan.Text = dr["jiguan"].ToString();
            minzu.Text = dr["minzu"].ToString();
            guoji.Text = dr["guoji"].ToString();
            bumendanwei.Text = dr["bumendanwei"].ToString();

            zhengjianleixing.Text = dr["zhengjianleixing"].ToString();
            zhengjianhaoma.Text = dr["zhengjianhaoma"].ToString();
            gongzuoriqi.Text = dr["gongzuoriqi"].ToString();
            zhengzhimianmao.Text = dr["zhengzhimianmao"].ToString();
            pinrenzhiwu.Text = dr["pinrenzhiwu"].ToString();
         

            jiatingzhuzhi.Text = dr["jiatingzhuzhi"].ToString();
            youzhengbianma.Text = dr["youzhengbianma"].ToString();
            hukousuozaidi.Text = dr["hukousuozaidi"].ToString();
            dianziyouxiang.Text = dr["dianziyouxiang"].ToString();
            QQ.Text = dr["QQ"].ToString();
            Msn.Text = dr["Msn"].ToString();



            gangweileibie.Text = dr["gangweileibie"].ToString();
            gangweidengji.Text = dr["gangweidengji"].ToString();
            Session["hetong"] = dr["hetong"];
        }
    }
}
