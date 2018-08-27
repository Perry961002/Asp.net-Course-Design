using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserManger_PdfViewer : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string filePath = "../uploads/hetong/" +Session["hetong"].ToString();

        PDFPreview.Priview(this, filePath);
    }
}