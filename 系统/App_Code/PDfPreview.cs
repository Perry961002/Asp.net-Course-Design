
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
//using System.Linq;
using System.Web;

/// <summary>
/// Summary description for WordPreview
/// </summary>
public class PDFPreview
{
    public static void Priview(System.Web.UI.Page p, string inFilePath)
    {
        p.Response.ContentType = "Application/pdf";

        string fileName = inFilePath.Substring(inFilePath.LastIndexOf('\\') + 1);
        p.Response.AddHeader("content-disposition", "filename=" + fileName);
        p.Response.WriteFile(inFilePath);
        p.Response.End();
    }
}