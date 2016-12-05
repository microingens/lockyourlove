using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Security.Cryptography;
using System.Text;

public partial class registrationFormIndex : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
        }
    }

   

    protected void FileUploadComplete(object sender, EventArgs e)
    {
        if (AsyncFileUpload1.HasFile)
        {
            string filename = System.IO.Path.GetFileName(AsyncFileUpload1.FileName);
            string imgpathTemp = Server.MapPath("~/Couples/Temp/") + filename;
            AsyncFileUpload1.SaveAs(imgpathTemp);
        }
    }
    
}