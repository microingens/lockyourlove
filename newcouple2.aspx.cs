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
using System.Globalization;

public partial class registrationFormIndex : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            PopulateYear();
         
            string filename = Request.QueryString["filename"];
            string err = Request.QueryString["err"];           
            if (err != null)
            {
                lblMissingField.Text = "Please fill all the fields before uploading the image. ";
                lblMissingField.Visible = true;
            }

            if (filename != null)
            {
                string imgpathTemp = Server.MapPath("~/Couples/Temp/") + filename;

                string hash = calcMD5(imgpathTemp);                

                if (hash.Length == 32)
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "MyKey", "saveHashToLocalStorage('" + hash + "', '" + filename + "');", true);

                    var folder = Server.MapPath("~/Couples/" + hash + "/");
                    if (!Directory.Exists(folder))
                    {
                        Directory.CreateDirectory(folder);
                    }

                    var folderImg = folder + "img/";
                    if (!Directory.Exists(folderImg))
                    {
                        Directory.CreateDirectory(folderImg);
                    }                   

                    string imgpath = folderImg + filename;
                    if (File.Exists(imgpathTemp) && !File.Exists(imgpath))
                    {
                        File.Move(imgpathTemp, imgpath);
                    }
                    //AsyncFileUpload1.SaveAs(imgpath);                   

                    File.Delete(imgpathTemp);

                    // marche pas imgCouple.ImageUrl = Server.MapPath("~/Couples/" + hash+"/img/" + filename); 
                    lblHashMsg.Text = "Your Couple ID is:  ";
                    lblHash.Text = hash;

                    imgCouple.ImageUrl = imgpath;
                }
                else
                {            
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "MyKey", "setHashFromLocalStorageAndImage('" + filename + "');", true);
                }
                
                //imgCouple.ImageUrl = "~/Couples/" + hash + "/img/" + filename;

            }          

            // try to fill fields with info file (if it exists)
            string hashLabel = lblHash.Text;

            if (hashLabel.Length == 32)
            {
                string fileinfos = Server.MapPath("~/Couples/" + hashLabel + "/infos.txt");

                if (File.Exists(fileinfos))
                {

                    string[] lines = File.ReadAllLines(fileinfos);

                    txtboxMan.Text = lines[0];
                    txtboxWoman.Text = lines[1];
                    txtboxWelcomeMsg.Text = lines[2];
                    string weddingdate = lines[3];
                    string[] vv = weddingdate.Split(';');

                    drpDay.SelectedIndex = -1;
                    drpDay.Items.FindByText(vv[0]).Selected = true;
                    drpMonth.SelectedIndex = -1;
                    drpMonth.Items.FindByText(vv[1]).Selected = true;
                    drpYearB.SelectedIndex = -1;
                    drpYearB.Items.FindByText(vv[2]).Selected = true;

                    ddlCountry.SelectedIndex = -1;
                    ddlCountry.Items.FindByText(lines[4]).Selected = true;
                }
            }
            
        }
    }

   

    private void PopulateYear()
    {
        drpYearB.Items.Clear();
        ListItem lt0 = new ListItem();
        lt0.Text = "----";
        lt0.Value = "0";
        lt0.Selected = true;
        drpYearB.Items.Add(lt0);
        for (int i = DateTime.Now.Year; i >= 1900; i--)
        {
            ListItem lt = new ListItem();
            lt.Text = i.ToString();
            lt.Value = i.ToString();
            drpYearB.Items.Add(lt);
        }
        //drpYearB.Items.FindByValue(DateTime.Now.Year.ToString()).Selected = true;
    }

    public string calcMD5(string imgpath)
    {
        var s = new StringBuilder();
        if (File.Exists(imgpath))
        {
            byte[] myFileData;
            using (var md5 = MD5.Create())
            using (var stream = File.OpenRead(imgpath))
                myFileData = md5.ComputeHash(stream);
            
            foreach (byte b in myFileData)
                s.Append(b.ToString("x2").ToLower());
        }
        return s.ToString();
    }


    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        string month = drpMonth.SelectedItem.Text;
        string day = drpDay.SelectedItem.Text;
        string year = drpYearB.SelectedItem.Text;

        string country = ddlCountry.SelectedItem.Text;

        string hash = lblHash.Text;

        string fileinfos = Server.MapPath("~/Couples/" + hash + "/infos.txt");

        string[] lines = new string[6];
        lines[0] = txtboxMan.Text;
        lines[1] = txtboxWoman.Text;
        lines[2] = txtboxWelcomeMsg.Text;
        lines[3] = string.Format("{0};{1};{2}", day, month, year);
        lines[4] = country;
        DateTime dtnow = DateTime.Now;
        lines[5] = dtnow.ToShortDateString();

        File.WriteAllLines(fileinfos, lines);

        if (txtboxMan.Text.Equals("") || txtboxWoman.Text.Equals("") || 
            txtboxWelcomeMsg.Text.Equals(""))
        {           
            Response.Redirect(Request.Url.AbsoluteUri + "&err=MISSING_FIELD");
        }
        else
        {           
            string host = Request.Url.Authority;   // attention: newcouple_suMBit 
            Response.Redirect("http://" + host + "/newcouple_sumbit.aspx?hash=" + hash);
        }
    }
}
 