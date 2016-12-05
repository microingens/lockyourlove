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
            string account = Request.QueryString["account"];
            string hash = Request.QueryString["hash"];
            
            if (hash != null && account != null)
            {
                HiddenFieldAccount.Value = account;
                HiddenFieldImgHash.Value = hash;

                string fileinfos = Server.MapPath("~/Couples/" + hash + "/infos.txt");

                if (File.Exists(fileinfos))
                {
                    string[] lines = File.ReadAllLines(fileinfos);

                    txtboxManWoman.Text = string.Format("{0} and {1}", lines[0] , lines[1]);                   
                    string weddingdate = lines[3];
                    string[] vv = weddingdate.Split(';');

                    string day = vv[0];
                    string month = vv[1];
                    string year = vv[2];

                    txtboxWedDate.Text =string.Format("{0} {1} {2}", day, month, year);
                }
                
                lblHash.Text = hash;
            }  
        }
    }
    
}
 