using System; 
using System.IO;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
/// <summary>
/// upload 的摘要说明
/// </summary>
public class upload
{
	public upload()
	{
		//
		// TODO: 在此处添加构造函数逻辑
		//
	} public string[] Resup ={ "上传失败或指定的文件不存在", "图片大于1000K，重新传图片！", "格式不对，限制上传（只允许gif/jpg格式文件）！", "上传成功！" };
        public string s = string.Empty;

        public string Up(System.Web.UI.HtmlControls.HtmlInputFile File2, string Pa)
        {
            //
            // TODO: 在此处添加构造函数逻辑
            //

            if (File2.PostedFile.ContentLength.ToString() == "0")
            {
                return "0";
            }
            else
            {
                //获取文件名称
                string ss;
                ss = System.DateTime.Now.Day.ToString() + DateTime.Now.Hour.ToString() + DateTime.Now.Minute.ToString() + DateTime.Now.Second.ToString() + DateTime.Now.Millisecond.ToString() + Path.GetExtension(File2.PostedFile.FileName);
                if (File2.PostedFile.ContentLength / 1024 > 1000)
                { return "1"; }
                else
                {
                        File2.PostedFile.SaveAs(System.Web.HttpContext.Current.Server.MapPath(Pa) + ss);
                        s =  ss;
                        return "3";
                        //Up= ss;
                }
            }

        }
    }

