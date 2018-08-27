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
public partial class Admin_ModifyTinfo : System.Web.UI.Page
{
    SqlHelper data = new SqlHelper();
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            BinderKM();
        
            string id = Request.QueryString["zhigonghao"].ToString();
            SqlDataReader dr = data.GetDataReader("select * from UserInfo where zhigonghao=" + id);
            dr.Read();
            zhigonghao.Text = dr["zhigonghao"].ToString();
            TextBox2.Text = dr["UserTruename"].ToString();
            TextBox3.Text = dr["Birthday"].ToString();
            DropDownList2.Items.FindByValue(dr["BMXX"].ToString()).Selected = true;
            DropDownList3.Items.FindByValue(dr["Education"].ToString()).Selected = true;//选项Text    
            TextBox5.Text = dr["tel"].ToString();
            TextBox6.Text = dr["Mobile"].ToString();
            if (dr["Education"].ToString() != "")
                DropDownList3.Items.FindByValue(dr["Education"].ToString()).Selected = true;//选项Text 
 
            Image1.ImageUrl = "../uploads/images/" + dr["photo"].ToString();
            pic.Text =  dr["photo"].ToString();
            pic0.Text = dr["hetong"].ToString();
            if (dr["xingbie"].ToString() != "")
                xingbie.Items.FindByText(dr["xingbie"].ToString()).Selected = true;//选项Text 
            chushengdi.Text = dr["chushengdi"].ToString();
            jiguan.Text = dr["jiguan"].ToString();
            minzu.Text = dr["minzu"].ToString();
            guoji.Text = dr["guoji"].ToString();
            bumendanwei.Text = dr["bumendanwei"].ToString();

            if (dr["zhengzhimianmao"].ToString() != "")
                zhengzhimianmao.Items.FindByValue(dr["zhengzhimianmao"].ToString()).Selected = true;//选项Text
            zhengjianhaoma.Text = dr["zhengjianhaoma"].ToString();
            gongzuoriqi.Text = dr["gongzuoriqi"].ToString();

            zhengzhimianmao.Items.FindByValue(dr["zhengzhimianmao"].ToString()).Selected = true;//选项Text  

            TextBox4.Text = dr["pinrenzhiwu"].ToString();

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
        DropDownList2.DataTextField = "BMMC";
        DropDownList2.DataValueField = "BMBH";
        DropDownList2.DataBind();
    }
   

    protected void Button1_Click(object sender, EventArgs e)
    {
        string id = Request.QueryString["zhigonghao"].ToString();
        SqlDataReader dr = data.GetDataReader("select * from UserInfo,BMXX where zhigonghao='"+id+"'and BMXX.BMBH=UserInfo.BMXX");
        dr.Read();
        SqlHelper update = new SqlHelper();
        if (DropDownList2.SelectedValue.ToString()!=dr["BMXX"].ToString())
        {
            string s = "该员工从" + dr["BMMC"].ToString() + "转到" + DropDownList2.SelectedItem.ToString();
            string sql = "insert into diaodu(zhigonghao,DDBT,DDNR,DDTime) values ('"+id+"','"+id+"的调动信息','"+s+"','"+DateTime.Now.ToString()+"')";
            update.RunSql(sql);
        }
        if (bumendanwei.Text.ToString() != dr["bumendanwei"].ToString())
        {
            string s = "该员工从" + dr["bumendanwei"].ToString() + "转到" + bumendanwei.Text.ToString() ;
            string sql = "insert into diaodu(zhigonghao,DDBT,DDNR,DDTime) values ('" + id + "','" + id + "的调动信息','" + s + "','" + DateTime.Now.ToString() + "')";
            update.RunSql(sql);
        }
        if (psw.Text != "**********")
        {
            string sql = "update  UserInfo set Pwd='" + psw.Text + "',UserTruename='" + TextBox2.Text + "',BMXX='" + DropDownList2.SelectedValue + "',Birthday='" + TextBox3.Text + "',Education='" + DropDownList3.SelectedValue + "',tel='" + TextBox5.Text + "',Mobile='" + TextBox6.Text + "',photo='" + pic.Text + "',xingbie='" + xingbie.SelectedValue + "',chushengdi='" + chushengdi.Text + "',jiguan='" + jiguan.Text + "',minzu='" + minzu.Text + "',guoji='" + guoji.Text + "',bumendanwei='" + bumendanwei.Text + "',zhengjianleixing='" + zhengjianleixing.Text + "',zhengjianhaoma='" + zhengjianhaoma.Text + "',gongzuoriqi='" + gongzuoriqi.Text + "',zhengzhimianmao='" + zhengzhimianmao.SelectedValue + "',pinrenzhiwu='" + TextBox4.Text + "',jiatingzhuzhi='" + jiatingzhuzhi.Text + "',youzhengbianma='" + youzhengbianma.Text + "',hukousuozaidi='" + hukousuozaidi.Text + "',dianziyouxiang='" + dianziyouxiang.Text + "',QQ='" + QQ.Text + "',Msn='" + Msn.Text + "',gangweidengji='" + gangweidengji.Text + "',hetong='"+pic0.Text+"'   where zhigonghao=" + id;
            update.RunSql(sql);
        }
        else
        {
            string sql = "update  UserInfo set UserTruename='" + TextBox2.Text + "',BMXX='" + DropDownList2.SelectedValue + "',Birthday='" + TextBox3.Text + "',Education='" + DropDownList3.SelectedValue + "',tel='" + TextBox5.Text + "',Mobile='" + TextBox6.Text + "',photo='" + pic.Text + "',xingbie='" + xingbie.SelectedValue + "',chushengdi='" + chushengdi.Text + "',jiguan='" + jiguan.Text + "',minzu='" + minzu.Text + "',guoji='" + guoji.Text + "',bumendanwei='" + bumendanwei.Text + "',zhengjianleixing='" + zhengjianleixing.Text + "',zhengjianhaoma='" + zhengjianhaoma.Text + "',gongzuoriqi='" + gongzuoriqi.Text + "',zhengzhimianmao='" + zhengzhimianmao.SelectedValue + "',pinrenzhiwu='" + TextBox4.Text + "',jiatingzhuzhi='" + jiatingzhuzhi.Text + "',youzhengbianma='" + youzhengbianma.Text + "',hukousuozaidi='" + hukousuozaidi.Text + "',dianziyouxiang='" + dianziyouxiang.Text + "',QQ='" + QQ.Text + "',Msn='" + Msn.Text + "',gangweidengji='" + gangweidengji.Text + "' ,hetong='" + pic0.Text + "'  where zhigonghao=" + id;
            update.RunSql(sql);
        }
        Alert.AlertAndRedirect("修改成功", "TInfoManger.aspx");
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
