using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class registrationFormIndex : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

        }
    }

    
    

    protected void btnGoToCouplePage_Click(object sender, EventArgs e)
    {
        string hash = txtboxEnterHash.Text;
        if (hash.Length == 32)
        {
            Response.Redirect(Request.Url.AbsoluteUri + "/?hash=" + hash);
        }
    }
}