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
using System.Web.Services;

public partial class registrationFormIndex : System.Web.UI.Page
{
    const string URLethprice = "https://www.cryptocompare.com/api/data/price?fsym=ETH&tsyms=USD,EUR";

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string hash = Request.QueryString["hash"];
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

                    txtboxDay.Text = vv[0];
                    txtboxMonth.Text = vv[1];
                    txtboxYear.Text = vv[2];

                    txtboxCountry.Text = lines[4];
                }

                var imgfolder = Server.MapPath("~/Couples/" + hash + "/img/");
                string[] files = Directory.GetFiles(imgfolder);

                string the_only_image_path = files[0];

                imgCouple.ImageUrl = "~/Couples/" + hash + "/img/" + Path.GetFileName(files[0]);

                lblHash.Text = hash;
            }

           

            // retrieve ETH price
            List<double> vPrices = retrieveEtherPrice();
            HiddenFieldEtherPriceUSD.Value = vPrices[0].ToString("#.##");
            HiddenFieldEtherPriceEUR.Value = vPrices[1].ToString("#.##");
            lblPrice.Text = "";
        }
    }

    private List<double> retrieveEtherPrice()
    {
        double jsonPriceUSD = -1;
        double jsonPriceEUR = -1;
        HttpClient client = new HttpClient();
        client.BaseAddress = new Uri(URLethprice);

        // Add an Accept header for JSON format.
        client.DefaultRequestHeaders.Accept.Add(
        new MediaTypeWithQualityHeaderValue("application/json"));

        // List data response.
        HttpResponseMessage response = client.GetAsync("").Result;  // Blocking call!
        if (response.IsSuccessStatusCode)
        {
            // Parse the response body. Blocking!
            //var dataObjects = response.Content.Re<IEnumerable<DataObjectEthPrice>>().Result;
            string strjson = response.Content.ReadAsStringAsync().Result;

            int posUSD = strjson.IndexOf("USD");
            int posendUSD = strjson.IndexOf(":", posUSD);
            int posCommaUSD = strjson.IndexOf(",", posendUSD);
            string strJsonPriceUSD = strjson.Substring(posendUSD+1, posCommaUSD-posendUSD-1);
            jsonPriceUSD = Convert.ToDouble(strJsonPriceUSD.Replace('.',','));

            int posEUR = strjson.IndexOf("EUR");
            int posendEUR = strjson.IndexOf(":", posEUR);
            int posCommaEUR = strjson.IndexOf(",", posendEUR);
            string strJsonPriceEUR = strjson.Substring(posendEUR+1, posCommaEUR - posendEUR-1);
            jsonPriceEUR = Convert.ToDouble(strJsonPriceEUR.Replace('.', ','));
        }
        
        List<double> list = new List<double>(2);
        list.Add(jsonPriceUSD);
        list.Add(jsonPriceEUR);

        return list;
    }


    [WebMethod]
    public bool setTransactionInfosFromJS(string account)
    {
        string fileTx = Server.MapPath("~/Couples/" + lblHash.Text + "/account.txt");
        File.WriteAllText(fileTx, account);

        return true;
    }
}
 