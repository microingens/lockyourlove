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
            string hash = Request.QueryString["hash"];
            string account = Request.QueryString["account"];
            string txid = Request.QueryString["txid"];
            if (hash != null)
            {
                string fileinfos = Server.MapPath("~/Couples/" + hash + "/infos.txt");

                if (File.Exists(fileinfos))
                {
                    string[] lines = File.ReadAllLines(fileinfos);

                    txtboxMan.Text = lines[0];
                    txtboxWoman.Text = lines[1];
                    txtboxWelcomeMsg.Text = lines[2];
                    string weddingdate = lines[3];
                    string[] vv = weddingdate.Split(';');

                    txtboxDayMonthYear.Text = string.Format("Married since: {0} {1} {2}", vv[0], vv[1], vv[2]);
        
                    txtboxCountry.Text = "Country: " + lines[4];

                    string date = lines[5];
                    //DateTime dt = new DateTime(date);

                    string msg = string.Format("sealed their love in the BLOCKCHAIN the {0}", date);
                    txtboxSealed.Text = msg;

                    if (account != null)
                    {
                        string fileAccount = Server.MapPath("~/Couples/" + hash + "/account.txt");
                        if (!File.Exists(fileAccount))
                        {
                            File.WriteAllText(fileAccount, account);
                        }
                    }
                    else
                    {
                        string fileAccount = Server.MapPath("~/Couples/" + hash + "/account.txt");
                        if (File.Exists(fileAccount))
                        {
                            account = File.ReadAllText(fileAccount);
                        }
                    }


                    if (txid != null)
                    {
                        string fileTxId = Server.MapPath("~/Couples/" + hash + "/txid.txt");
                        if (!File.Exists(fileTxId))
                        {
                            File.WriteAllText(fileTxId, txid);
                        }                       
                    }
                    else
                    {
                        string fileTxId = Server.MapPath("~/Couples/" + hash + "/txid.txt");
                        if (File.Exists(fileTxId))
                        {
                            txid = File.ReadAllText(fileTxId);
                        }
                    }

                    HiddenFieldTxId.Value = txid;
                    //hlEtherScanIo.NavigateUrl = "http://testnet.etherscan.io/tx/" + txid;
                    //frameEtherScan.Src = "http://testnet.etherscan.io/tx/" + txid;
                }

                var imgfolder = Server.MapPath("~/Couples/" + hash + "/img/");
                string[] files = Directory.GetFiles(imgfolder);

                string the_only_image_path = files[0];

                imgCouple.ImageUrl = "~/Couples/" + hash + "/img/" + Path.GetFileName(files[0]);

                



            }  
        }
    }
    
}
 