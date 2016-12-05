<%@ Page Language="C#" AutoEventWireup="true" CodeFile="newcouple_sumbit.aspx.cs" Inherits="registrationFormIndex" %>

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
    <form id="form1" runat="server">

         <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

         <asp:HiddenField ID="HiddenFieldEtherPriceUSD" runat="server" />
         <asp:HiddenField ID="HiddenFieldEtherPriceEUR" runat="server" />

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
            <div class="registrationform" style="background-color:#339966; opacity:1.0;">
                <div class="form-horizontal">
                    <fieldset>
                        <legend>Registration Form <i class="fa fa-pencil pull-right"></i></legend>
                        <br />
                        <center>
                            <asp:Image ID="imgCouple" Width="80%" Height="600px" runat="server" />
                        </center>
                        <br />
                        <br />
                        <center>
                            <asp:Label ID="lblHashMsg" runat="server" Text="Your couple ID is " Font-Bold="true" Font-Size="Large" Width="70%"></asp:Label>
                            <br/>
                            <asp:Label ID="lblHash" runat="server" Text="" Font-Bold="true" Font-Size="Large" Width="70%"></asp:Label>                             
                        </center>                               
                        <br />
                         <br />
                         <br />
                        <div id="divMan" runat="server" class="form-group">
                           <asp:Image ID="imgMan" runat="server" Height="32px" Width="64px" ImageUrl="~/img/man.png" CssClass="col-lg-2" />
                            <div class="col-lg-10">                                
                                <asp:TextBox ID="txtboxMan" runat="server" placeholder="first name here" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                            </div>
                        </div>
                        <div id="divWoman" runat="server" class="form-group">
                            <asp:Image ID="imgWoman" runat="server" Height="32px"  Width="64px" ImageUrl="~/img/woman.png" CssClass="col-lg-2" />
                            <div class="col-lg-10">
                                <asp:TextBox ID="txtboxWoman" runat="server" placeholder="first name here" CssClass="form-control" ReadOnly="true"></asp:TextBox>                                
                            </div>
                        </div>
                        <br />
                        <div class="form-group" id="divWeddingDate" runat="server" >
                            <asp:Label ID="Label3" runat="server" Text="Wedding date" CssClass="col-lg-2 control-label"></asp:Label>
                         
                            <div class="col-lg-10">                                                   
                                <div class="input-group time">   
                                                       
                                     <asp:TextBox ID="txtboxDay" runat="server" placeholder="first name here" CssClass="form-control" ReadOnly="true"></asp:TextBox>                                
                                     <asp:TextBox ID="txtboxMonth" runat="server" placeholder="first name here" CssClass="form-control" ReadOnly="true"></asp:TextBox>                                
                                     <asp:TextBox ID="txtboxYear" runat="server" placeholder="first name here" CssClass="form-control" ReadOnly="true"></asp:TextBox>                                
                                 
                                 </div>
                            </div>
                        </div>
                        <br />                         
                         <div class="form-group" id="divWelcomeMsg" runat="server" >
                            <asp:Label ID="Label1" runat="server" Text="Our Welcome Message" CssClass="col-lg-2 control-label"></asp:Label>
                            <div class="col-lg-10">
                                <asp:TextBox ID="txtboxWelcomeMsg" runat="server" TextMode="MultiLine" Rows="3" CssClass="form-control" 
                                            BackColor="#fafafa" ForeColor="Black" ReadOnly="true"></asp:TextBox>
                            </div>
                        </div>
                        <br />
                      
                                                                 
                        <div class="form-group" id="divNation" runat="server">
                          <asp:Label ID="Label5" runat="server" Text="Country" CssClass="col-lg-2 control-label"></asp:Label>                          
                            <div class="col-lg-10">
                               <asp:TextBox ID="txtboxCountry" runat="server" placeholder="first name here" CssClass="form-control" ReadOnly="true"></asp:TextBox>                                                             
                            </div>
                        </div>
                               
                        <br />
                        <div class="form-group" id="divValidate" runat="server">
                            <div class="col-lg-4 col-lg-offset-2">
                                <button type="button" id="btnRecordinBC" onclick="btnLocalRecordInBC();" style="background-color:yellow; color:forestgreen;">STORE in the BLOCKCHAIN</button>                                                             
                            </div>
                            <div class="col-lg-4 col-lg-offset-8">
                                <asp:Label ID="lblPrice" runat="server" Height="100%"  Width="66%" ForeColor="Yellow" Font-Bold="true" Font-Size="Large" >Price in ETH/$</asp:Label>
                            </div>
                        </div>                 
                        
                    </fieldset>
                </div>
            </div>
        </div>
    </div>
    <script src="js/jquery.js" type="text/javascript"></script>
    <script src="js/bootstrap.min.js" type="text/javascript"></script>
    <script src="js/jquery.backstretch.js" type="text/javascript"></script>
    <script type="text/javascript">

        var contractAddressTestNet = '0x24A47f27b096146391cdbD3019DC6234B40fF16C';
        var contractABI = [{ "constant": true, "inputs": [], "name": "couplesCounter", "outputs": [{ "name": "", "type": "uint256", "value": "0" }], "type": "function" }, { "constant": true, "inputs": [], "name": "thresholdPrice", "outputs": [{ "name": "", "type": "uint256", "value": "1000" }], "type": "function" }, { "constant": false, "inputs": [{ "name": "imageHash", "type": "bytes32" }, { "name": "fisrtnames", "type": "bytes32" }, { "name": "weddingdate", "type": "bytes9" }], "name": "addNewCouplePayInEther", "outputs": [], "type": "function" }, { "constant": false, "inputs": [{ "name": "imageHash", "type": "bytes32" }, { "name": "fisrtnames", "type": "bytes32" }, { "name": "weddingdate", "type": "bytes9" }], "name": "addNewCouplePayInOther", "outputs": [], "type": "function" }, { "constant": false, "inputs": [], "name": "kill", "outputs": [], "type": "function" }, { "constant": true, "inputs": [{ "name": "hashImg", "type": "bytes32" }], "name": "getCouple", "outputs": [{ "name": "blockNumber", "type": "uint256", "value": "0" }, { "name": "from", "type": "address", "value": "0x0000000000000000000000000000000000000000" }, { "name": "first_names", "type": "bytes32", "value": "0x0000000000000000000000000000000000000000000000000000000000000000" }, { "name": "wedding_date", "type": "bytes9", "value": "0x000000000000000000" }], "type": "function" }, { "constant": false, "inputs": [{ "name": "newprice", "type": "uint256" }], "name": "changePriceThreshold", "outputs": [{ "name": "", "type": "uint256" }], "type": "function" }, { "constant": false, "inputs": [], "name": "empty", "outputs": [], "type": "function" }, { "constant": true, "inputs": [{ "name": "", "type": "bytes32" }], "name": "registeredCouples", "outputs": [{ "name": "blockNumber", "type": "uint256", "value": "0" }, { "name": "from", "type": "address", "value": "0x0000000000000000000000000000000000000000" }, { "name": "first_names", "type": "bytes32", "value": "0x0000000000000000000000000000000000000000000000000000000000000000" }, { "name": "wedding_date", "type": "bytes9", "value": "0x000000000000000000" }], "type": "function" }, { "inputs": [], "type": "constructor" }];

        var priceInFinney = parseInt(-1);

        var lockyourloveContract;
        var lockyourlove; // contract Instance 
        
        var vContracts = [];

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


            web3.eth.getCode(contractAddressTestNet, function (e, r) {

                if (!e && r.length > 3) {
                    //alert('loadContract now');
                    loadContract();
                }
            })
        }

        function btnLocalRecordInBC() {

            addNewCouple();
        }


         var priceETH = parseFloat(1.0);
         function addNewCouple() {

             
            var man = document.getElementById('<%=txtboxMan.ClientID%>').value;
            var woman = document.getElementById('<%=txtboxWoman.ClientID%>').value;
            var firstnames = man + ";" + woman;

            var day = document.getElementById('<%=txtboxDay.ClientID%>').value;
            var month = document.getElementById('<%=txtboxMonth.ClientID%>').value;
            var year = document.getElementById('<%=txtboxYear.ClientID%>').value;
            var weddingdate = day  + month + year;

            var imghash = document.getElementById('<%=lblHash.ClientID%>').innerText;
            //var imghash = "03d4f622b43cc1211978e330502ae201";  // !!! tmp !!! tmp !!!tmp !!!!!!!!!!!!!!!!!!!!!!!!!!           
            //alert('imghash = ' + imghash);
          
            if (imghash !== null && imghash.length == 32) {
         
                //alert('lockyourlove = ' + lockyourlove);
/*
    struct CoupleInfos {
    uint blockNumber;
    address from;
    bytes32 first_names; // "dave;sanny"    // attention cette partie est publique
    bytes9 wedding_date; // "05012002"      // d'autre appli tierce pourraient s'en servir (ou alors il faut les crypter)
}*/
                var coupleInfos = lockyourlove.registeredCouples(imghash);
                var blocknumber = coupleInfos[0];
                var address = coupleInfos[1];
                //alert('blocknumber = ' + blocknumber + '  --  address = ' + address);
                if (address.substring(0, 10) === '0x00000000') {
                    //alert('addNewCouplePayInEther NOW => ' + firstnames + ' - ' + weddingdate);

                    //PageMethods.setTransactionInfosFromJS(web3.eth.defaultAccount);
                    //alert('PageMethods OK');

                    txid = lockyourlove.addNewCouplePayInEther.sendTransaction(imghash, firstnames, weddingdate,
                                    { from: web3.eth.defaultAccount, value: web3.toWei(priceETH, 'ether') });
                    alert('the couple is added for the hash ' + imghash + '  ret value = ' + txid);
                    
                    window.location.replace("waitconfirm.aspx?account=" + web3.eth.defaultAccount + "&hash=" + imghash);

                   
                } else {
                    alert('The hash  ' + imghash + '  is already registered in the blockchain for the account ' + address);
                }

            }else{
                alert('please upload an image');
            }    
        }

        function loadContract() {

            // load the contract to javascript
            lockyourloveContract = web3.eth.contract(contractABI);
            lockyourlove = lockyourloveContract.at(contractAddressTestNet);
            //alert('lockyourlove ok = ' + lockyourlove);

            price = 0;
            //lockyourlove.getTestValue();
            //alert('price 000 = ' + price);
            web3.eth.getAccounts(function (e, accounts) {

                //alert('num accounts  = ' + accounts.length);

                // Check if there are accounts available
                if (!e && accounts && accounts.length > 0) {
                    web3.eth.defaultAccount = accounts[0];
                    priceInFinney = lockyourlove.thresholdPrice();

                    var etherUSD = document.getElementById('<%=HiddenFieldEtherPriceUSD.ClientID%>').value;
                    var etherEUR = document.getElementById('<%=HiddenFieldEtherPriceEUR.ClientID%>').value;

                    priceETH = priceInFinney / 1000.0;
                    var priceUSD = parseFloat(priceETH * parseFloat(etherUSD)).toFixed(2);
                    var priceEUR = parseFloat(priceETH * parseFloat(etherEUR)).toFixed(2);
                    
                    alert('priceETH = ' + priceETH + ' priceUSD = ' + etherUSD + 'priceETH = ' + etherEUR)

                    var strprice = "Price = " + priceETH + " eth  ( "+priceUSD+" $ - "+priceEUR +" € )";
                    document.getElementById('<%=lblPrice.ClientID%>').innerText = strprice;

                    /*aaaa = lockyourlove.registeredCouples('03d4f622b43cc1211978e330502ae200');
                    alert('aaaa = ' + aaaa);
                    alert('transactionHash = ' + lockyourlove.transactionHash)*/
                } else {
                    mist.requestAccount(function (e, account) {
                        if (!e) {
                            // Create a dialog requesting the transaction
                            web3.eth.defaultAccount = accounts[0];
                            price = lockyourlove.thresholdPrice();
                            priceInFinney = price;
                        }
                    });
                }
            });

        }

        window.onload = initAll;

    </script>

    </form>
</body>

</html>
