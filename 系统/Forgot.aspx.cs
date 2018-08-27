using System;
using System.Collections.Generic;
using System.Data;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Data.SqlClient;
using System.Web.Mail;


public partial class Forgot : System.Web.UI.Page
{
    SqlHelper data = new SqlHelper();
    SqlDataReader dr;
    string yzm = null;
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlDataReader dr = data.GetDataReader("select dianziyouxiang from  [UserInfo] where zhigonghao='" + txtzgh.Text.Trim() + "'");
        dr.Read();
        //发送邮件的地址，标题，内容
        string to = dr["dianziyouxiang"].ToString();
        Random r = new Random();
        yzm = null;
        for (int i = 0; i < 4; i++)
        {
            yzm += r.Next(0, 100);
        }
        Session["yzm"] = yzm;
        MailMessage mmsg = new MailMessage();
        //邮件主题
        mmsg.Subject = "你的验证码";
        mmsg.BodyFormat = MailFormat.Html;
        //邮件正文
        mmsg.Body = "验证码："+yzm;
        //正文编码
        //mmsg.BodyEncoding = UTF8;
        //优先级
        mmsg.Priority = MailPriority.Normal;
        //发件者邮箱地址
        mmsg.From = "2792571728@qq.com";
        //收件人收箱地址
        mmsg.To = to;

        mmsg.Fields.Add("http://schemas.microsoft.com/cdo/configuration/smtpauthenticate", "1");
        //用户名
        mmsg.Fields.Add("http://schemas.microsoft.com/cdo/configuration/sendusername", 2792571728);
        //密码
        mmsg.Fields.Add("http://schemas.microsoft.com/cdo/configuration/sendpassword", "obmokimrvbxtdehd");
        //端口 
        mmsg.Fields.Add("http://schemas.microsoft.com/cdo/configuration/smtpserverport", 465);
        //是否ssl
        mmsg.Fields.Add("http://schemas.microsoft.com/cdo/configuration/smtpusessl",true);
        //Smtp服务器
        System.Web.Mail.SmtpMail.SmtpServer = "smtp.qq.com";

        try
        {
            SmtpMail.Send(mmsg);
            Response.Write("<script>window.alert('验证码已发送！')</script>");
        }
        catch (Exception ex)
        {
            Response.Write("发送失败，失败原因：" + ex.Message);
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string aa = TextBox1.Text;
        if (aa == Session["yzm"].ToString())
        {
            SqlHelper mypsw = new SqlHelper();
            string sql = "update [UserInfo]  set [Pwd] ='" + TextBox2.Text.ToString() + "' where [zhigonghao]='" + txtzgh.Text.ToString() + "' ";
            mypsw.RunSql(sql);
            //Server.Transfer("login.aspx", true);
            Response.Write("<script>window.alert('你已经重置了密码！');location.href='login.aspx';</script>");
        }
        else 
        { 
            Label1.Text = "重置失败"; 
        }
    }
}