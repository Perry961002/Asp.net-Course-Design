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
public partial class Admin_AddT : System.Web.UI.Page
{
    SqlHelper insert = new SqlHelper();
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
    }
 
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlDataReader dr = data.GetDataReader("select * from UserInfo where zhigonghao='"+zhigonghao.Text+"'");
    if (dr.Read())
    {
        Label1.Text = "职工号或者登录账号重复请更换";
        return;
    }
    else
    {
        string sql = "insert into UserInfo(zhigonghao,Pwd,UserTruename,BMXX,Birthday,Education,tel,Mobile,photo,xingbie,chushengdi,jiguan,minzu,guoji,bumendanwei,zhengjianleixing,zhengjianhaoma,gongzuoriqi,zhengzhimianmao,pinrenzhiwu,jiatingzhuzhi,youzhengbianma,hukousuozaidi,dianziyouxiang,QQ,Msn,gangweileibie,gangweidengji,hetong)values('"+zhigonghao.Text+ "','" + TextBox1.Text + "','" + TextBox2.Text + "','" + DropDownList2.SelectedValue.ToString() + "','" + TextBox3.Text + "','" + DropDownList3.SelectedValue + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + pic.Text + "','" + xingbie.SelectedValue + "','" + chushengdi.Text + "','" + jiguan.Text + "','" + minzu.Text + "','" + guoji.Text + "','" + bumendanwei.Text + "','" + zhengjianleixing.Text + "','" + zhengjianhaoma.Text + "','" + gongzuoriqi.Text + "','" + zhengzhimianmao.SelectedValue + "','" + TextBox4.Text + "','" + jiatingzhuzhi.Text + "','" + youzhengbianma.Text + "','" + hukousuozaidi.Text + "','" + dianziyouxiang.Text + "','" + QQ.Text + "','" + Msn.Text + "','普通员工','" + gangweidengji.Text + "','"+pic0.Text+"') ";
        insert.RunSql(sql);
        Label1.Text = "";

        Alert.AlertAndRedirect("添加成功", "TInfoManger.aspx");
    }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string res;
        upload up = new upload();
        res = up.Up(file1, "../uploads/images/");

        this.Label2.Visible = true;
        this.Label2.Text = up.Resup[Convert.ToInt32(res)];
        this.pic.Text = up.s;
        Image1.ImageUrl = "../uploads/images/" + pic.Text;
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        string res;
        upload up = new upload();
        res = up.Up(file2, "../uploads/hetong/");

        this.Label3.Visible = true;
        this.Label3.Text = up.Resup[Convert.ToInt32(res)];
        this.pic0.Text = up.s;
        Image1.ImageUrl = "../uploads/hetong/" + pic0.Text;
    }
}
