<%@ Page Language="C#" AutoEventWireup="true" CodeFile="waitconfirm.aspx.cs" Inherits="registrationFormIndex" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <!--[if lt IE 7]> <html class="no-js ie6 oldie" lang="en"> <![endif]-->
    <!--[if IE 7]>    <html class="no-js ie7 oldie" lang="en"> <![endif]-->
    <!--[if IE 8]>    <html class="no-js ie8 oldie" lang="en"> <![endif]-->
    <!--[if IE 9]> <html class="no-js ie9 oldie" lang="en"> <![endif]-->
    <meta charset="utf-8">
    <!-- Set the viewport width to device width for mobile -->
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="description" content="Coming soon, Bootstrap, Bootstrap 3.0, Free Coming Soon, free coming soon, free template, coming soon template, Html template, html template, html5, Code lab, codelab, codelab coming soon template, bootstrap coming soon template">
    <title>Lock Your Love</title>
    <!-- ============ Google fonts ============ -->
    <link href='http://fonts.googleapis.com/css?family=EB+Garamond' rel='stylesheet'
        type='text/css' />
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,600,700,300,800'
        rel='stylesheet' type='text/css' />
    <!-- ============ Add custom CSS here ============ -->
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="css/style.css" rel="stylesheet" type="text/css" />
    <link href="css/font-awesome.css" rel="stylesheet" type="text/css" />


     

</head>
<body>
    <form id="form1" runat="server" >

         <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

   <div style="height:24px; width:100%; background-color:#fff;"></div>
    <div id="custom-bootstrap-menu" class="navbar navbar-default " role="navigation" style="background-color:#339966;">
        <div class="container">
            <div class="navbar-header">
                <a class="navbar-brand" href="/index.aspx">LOCK YOUR LOVE</a>                
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-menubuilder">
                    <span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span
                        class="icon-bar"></span><span class="icon-bar"></span>
                </button>
            </div>                     
            <div class="collapse navbar-collapse navbar-menubuilder">
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="/index.aspx">Home</a> </li>
                    <li><a href="/newcouple.aspx">Add Your Couple</a> </li>
                    <li><a href="/faq.aspx">F.A.Q</a> </li>   
                    <li><a href="/contact.aspx">Contact</a> </li>                    
                </ul>
            </div>
        </div>
    </div>

    <div class="container">
        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
            <div class="registrationform" style="background-color:#fff; opacity:1.0; color:#00f">
                <div class="form-horizontal">

                    <asp:HiddenField ID="HiddenFieldImgHash" runat="server" />
                    <asp:HiddenField ID="HiddenFieldAccount" runat="server" />

                    
                    <legend style="color:#00f">Blockchain confirmation pending for...<i class="fa fa-heart pull-right" ></i></legend>                   
                       
                    <br />                           
                    <asp:Label ID="txtboxManWoman" runat="server"  CssClass="form-control" Font-Bold="true" ForeColor="RoyalBlue" style="text-align:center" Font-Size="X-Large" ReadOnly="true"></asp:Label>
                                               
                        <br />                           
                    <asp:Label ID="txtboxWedDate" runat="server"  CssClass="form-control" Font-Bold="false" ForeColor="RoyalBlue" style="text-align:center" Font-Size="Large" Font-Italic="true" ReadOnly="true"></asp:Label>
                    <br/>
                    <center>
                         <img src="img/spiffygif_90x90.gif" alt="waiting for confirmation" />
                        <br/><br/>
                         <asp:Label ID="Label1" runat="server"  CssClass="form-control" Font-Bold="true" ForeColor="Red" 
                             style="text-align:center" Font-Size="Medium" Font-Italic="false" ReadOnly="true">
                             Don't quit this page!   You should wait less then 30 seconds before confirmation. 
                         </asp:Label>
                    </center>
                     <br/>
                     <asp:Label ID="lblBlockNumber" runat="server" Text="#" Font-Bold="true" Font-Size="Large" 
                            Width="100%" BackColor="DimGray" style="text-align:center"></asp:Label> 
                    
                    <br />
                    
                    <table id="TableTransactions" style="background-color:#bbb; min-height:80px">
                      
                    </table>
              
                       <br />
                        <center>
                            <asp:Label ID="lblHashMsg" runat="server" Text="Our couple ID is " Font-Bold="true" Font-Size="Large" Width="70%"></asp:Label>
                            <br/>
                            <asp:Label ID="lblHash" runat="server" Text="" Font-Bold="true" Font-Size="Large" Width="70%"></asp:Label> 
                            
                            <br/>
                            <asp:Label ID="Label4" runat="server" Text="" Font-Bold="true" Font-Size="Large" Width="70%"></asp:Label>                                
                        </center>                               
                        <br />                
                  
                </div>
            </div>
        </div>
    </div>
    <script src="js/jquery.js" type="text/javascript"></script>
    <script src="js/bootstrap.min.js" type="text/javascript"></script>
    <script src="js/jquery.backstretch.js" type="text/javascript"></script>
    <script type="text/javascript">

      

        function initAll() {

            // Checks Web3 support
            if (typeof web3 !== 'undefined' && typeof Web3 !== 'undefined') {
                // If there's a web3 library loaded, then make your own web3
                alert('web3 ok 1');
                web3 = new Web3(web3.currentProvider);
            } else if (typeof Web3 !== 'undefined') {
                // If there isn't then set a provider
                alert('web3 ok localhost');
                web3 = new Web3(new Web3.providers.HttpProvider("http://localhost:8545"));
            } else if (typeof web3 == 'undefined') {
                // Alert the user he is not in a web3 compatible browser
                alert('Warning : your browser is not web3 compatible. \n\nPlease launch this page from the MIST ethereum wallet. \n\nYou can install it from here \nhttps://github.com/ethereum/mist/releases.');
                return;
            } else {
                //alert('??? kesako web3 =' + web3);            // Load the contract
                // ca passe par ici mais ça va: ça marche
            }


           /* web3.eth.getCode(contractAddressTestNet, function (e, r) {

                if (!e && r.length > 3) {
                    //alert('loadContract now');
                    //loadContract();

                    //retrieveCouple();

                    
                }
            })*/
        }

        var hash = document.getElementById('<%=HiddenFieldImgHash.ClientID%>').value;
        var account = document.getElementById('<%=HiddenFieldAccount.ClientID%>').value;
        var weddingdate = document.getElementById('<%=txtboxWedDate.ClientID%>').innerText;
        var weddingdate2 = weddingdate.replace(/\s/g, ''); // remove spaces
        alert("account = " + account + "  hash = " + hash)

        //var ttt = "2©eef132101dc6d774fda65f9730bf1075mario;betty15May2008";
        //pp = ttt.indexOf(weddingdate2);
       // alert("pp = " + pp + " - " + ttt.endsWith(weddingdate2));

        //alert("filter.watch TO CALL...")
        //var options = { address: "0xde570f27bff3526ea3a42c3b099ac5b50cf6cd31" };
        var myoptions = { fromBlock: 1397940, toBlock: 'latest' };
        //var myfilter = web3.eth.filter(myoptions);
        var filter = web3.eth.filter('latest');
        filter.watch(function (error, result) {

            //alert("filter.watch called...")
            var block = web3.eth.getBlock(result, true);

            document.getElementById('<%=lblBlockNumber.ClientID%>').innerText = 'block #' + block.number;            

            var table = document.getElementById("TableTransactions");
            table.innerHTML = ""; // remove all rows
            for (i = 0; i < block.transactions.length; i++) {
                var row = table.insertRow(0);

                // Insert new cells (<td> elements) at the 1st and 2nd position of the "new" <tr> element:
                var cell1 = row.insertCell(0);
                var cell2 = row.insertCell(1);

                // Add some text to the new cells:
                cell1.innerHTML = "Transaction OK from: "; //+block.transactions[i].hash;
                cell2.innerHTML = "Acc=" + block.transactions[i].from;

                //alert(" window.location.replace...")
                //window.location.replace("mylokedlove.aspx");

                if (block.transactions[i].from === account) {
                    alert("FOUND !!")
                    var strdata = String(web3.toAscii(block.transactions[i].input));
                    
                    document.getElementById('<%=txtboxWedDate.ClientID%>').innerText = strdata;

                    var strdata2 = document.getElementById('<%=txtboxWedDate.ClientID%>').innerText;

                    //alert(strdata.length);

                    var pos = strdata2.indexOf(weddingdate2);
                    var ipos = parseInt(pos);
                    alert(ipos);
                    if (ipos > 32) {
                        //alert('into > 32');
                        var txhash = block.transactions[i].hash;
                        //alert('xxxxxxxx');
                        //alert(hash + ' - ' + txhash);
                        //alert('account =' + account);
                        window.location.replace("mylokedlove.aspx?account=" + account + "&hash=" + hash + "&txid=" + txhash);
                    }
                }
            }
        });

       
        

        window.onload = initAll;

    </script>

    </form>
</body>

</html>
