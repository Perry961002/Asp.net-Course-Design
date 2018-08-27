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
public partial class TManger_MyTInfo : System.Web.UI.Page
{
    SqlHelper data = new SqlHelper();
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            BinderKM();
            string zhigonghao = Session["user"].ToString();
            SqlDataReader dr = data.GetDataReader("select * from UserInfo where zhigonghao=" + zhigonghao);
            dr.Read();
            lbzhigonghao.Text = zhigonghao;
            TextBox2.Text = dr["UserTruename"].ToString();
            TextBox3.Text = dr["Birthday"].ToString();
            TextBox4.Text = dr["pinrenzhiwu"].ToString();
            DropDownList2.Items.FindByValue(dr["BMXX"].ToString()).Selected =true;
            if (dr["Education"].ToString() !="" )
                DropDownList3.Items.FindByValue(dr["Education"].ToString()).Selected = true;//选项Text
            TextBox5.Text = dr["tel"].ToString();
            TextBox6.Text = dr["Mobile"].ToString();
            Image1.ImageUrl = "../uploads/images/" + dr["photo"].ToString();
            pic.Text = dr["photo"].ToString();
            if (dr["xingbie"].ToString()!="")
                xingbie.Items.FindByText(dr["xingbie"].ToString()).Selected = true;//选项Text  
            chushengdi.Text = dr["chushengdi"].ToString();
            jiguan.Text = dr["jiguan"].ToString();
            minzu.Text = dr["minzu"].ToString();
            guoji.Text = dr["guoji"].ToString();
            bumendanwei.Text = dr["bumendanwei"].ToString();

            zhengjianleixing.Text = dr["zhengjianleixing"].ToString();
            zhengjianhaoma.Text = dr["zhengjianhaoma"].ToString();
            gongzuoriqi.Text = dr["gongzuoriqi"].ToString();
            if (dr["zhengzhimianmao"].ToString()!="")
                zhengzhimianmao.Items.FindByValue(dr["zhengzhimianmao"].ToString()).Selected = true;//选项Text  

            jiatingzhuzhi.Text = dr["jiatingzhuzhi"].ToString();
            youzhengbianma.Text = dr["youzhengbianma"].ToString();
            hukousuozaidi.Text = dr["hukousuozaidi"].ToString();
            dianziyouxiang.Text = dr["dianziyouxiang"].ToString();
            QQ.Text = dr["QQ"].ToString();
            Msn.Text = dr["Msn"].ToString();

            gangweidengji.Text = dr["gangweidengji"].ToString();
        }
    }
    private void BinderKM()
    {

        DropDownList2.DataSource = data.GetDataReader("select * from BMXX ");
        DropDownList2.DataTextField = "BMMC".ToString();
        DropDownList2.DataValueField = "BMBH".ToString();
        DropDownList2.DataBind();
    }
   
    protected void Button1_Click(object sender, EventArgs e)
    {
        //int id = int.Parse(Session["userid"].ToString());
        SqlHelper update = new SqlHelper();

        string sql = "update  UserInfo set UserTruename='" + TextBox2.Text + "',BMXX='" + DropDownList2.SelectedValue + "',Birthday='" + TextBox3.Text + "',Education='" + DropDownList3.SelectedValue + "',tel='" + TextBox5.Text + "',Mobile='" + TextBox6.Text + "',photo='" + pic.Text + "',xingbie='" + xingbie.SelectedValue + "',chushengdi='" + chushengdi.Text + "',jiguan='" + jiguan.Text + "',minzu='" + minzu.Text + "',guoji='" + guoji.Text + "',bumendanwei='" + bumendanwei.Text + "',zhengjianleixing='" + zhengjianleixing.Text + "',zhengjianhaoma='" + zhengjianhaoma.Text + "',gongzuoriqi='" + gongzuoriqi.Text + "',zhengzhimianmao='" + zhengzhimianmao.SelectedValue + "',jiatingzhuzhi='" + jiatingzhuzhi.Text + "',youzhengbianma='" + youzhengbianma.Text + "',hukousuozaidi='" + hukousuozaidi.Text + "',dianziyouxiang='" + dianziyouxiang.Text + "',QQ='" + QQ.Text + "',Msn='" + Msn.Text + "',pinrenzhiwu='"+TextBox4.Text+"',gangweidengji='" + gangweidengji.Text + "'   where zhigonghao=" + Session["user"].ToString();
        update.RunSql(sql);

       Alert.AlertAndRedirect("修改成功", "MyTInfo.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string res;
        upload up = new upload();
        res = up.Up(file1, "../uploads/images/");

        this.Label2.Visible = true;
        this.Label2.Text = up.Resup[Convert.ToInt32(res)];
        this.pic.Text = up.s;
        Image1.ImageUrl = "../uploads/images/"+ pic.Text;
    }
}
