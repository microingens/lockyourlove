<%@ Page Language="C#" AutoEventWireup="true" CodeFile="mylokedlove.aspx.cs" Inherits="registrationFormIndex" %>

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

        <asp:HiddenField ID="HiddenFieldTxId" runat="server" />


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
                    <fieldset>
                     
            <asp:Table ID="TableCouple" runat="server" Height="120px" Width="100%"  Font-Size="X-Large" 
            Font-Names="Palatino"
            BackColor="Transparent"
            BorderColor="Transparent"
            BorderWidth="0"
            ForeColor="Black"
            CellPadding="0"
            CellSpacing="0">
                <asp:TableRow 
                runat="server" 
                ForeColor="RoyalBlue"
                BackColor="Transparent"
                Font-Bold="true"
                >
                <asp:TableCell>                                
                   <asp:Label ID="txtboxDayMonthYear" runat="server"  FontSize="Large" 
                                         ForeColor="RoyalBlue" CssClass="form-control" style="text-align:center;"  ReadOnly="true"></asp:Label>  
                </asp:TableCell>
                <asp:TableCell Width="100px">
                    
                </asp:TableCell>
                <asp:TableCell>
                   <asp:Label ID="txtboxCountry" runat="server"  FontSize="Large" 
                                        ForeColor="RoyalBlue"  CssClass="form-control" style="text-align:center"  ReadOnly="true"></asp:Label>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow 
                runat="server" 
                ForeColor="RoyalBlue"
                BackColor="Transparent"
                Font-Bold="true">
                <asp:TableCell Width="45%">                                
                    <asp:Label ID="txtboxMan" runat="server"  CssClass="form-control" Font-Bold="true" 
                        ForeColor="DimGray" style="text-align:center; margin-top:16px;" Font-Size="X-Large" ReadOnly="true"></asp:Label>
                </asp:TableCell>
                <asp:TableCell Width="10%">
                    <asp:Label ID="Label2" runat="server"  CssClass="form-control" Font-Bold="true" 
                        ForeColor="DimGray" style="text-align:center; margin-top:16px;" Font-Size="X-Large" ReadOnly="true">and</asp:Label>
                </asp:TableCell>
                <asp:TableCell Width="45%">
                    <asp:Label ID="txtboxWoman" runat="server"  CssClass="form-control" Font-Bold="true" 
                        ForeColor="DimGray" style="text-align:center; margin-top:16px;" Font-Size="X-Large" ReadOnly="true"></asp:Label>                                
                </asp:TableCell>
            </asp:TableRow>
               
            <asp:TableRow 
                runat="server" 
                ForeColor="RoyalBlue"
                BackColor="Transparent"
                Font-Bold="true"
                >
                <asp:TableCell ColumnSpan="3">                                
                     <asp:Label ID="txtboxSealed" runat="server" CssClass="form-control" ForeColor="RoyalBlue" 
                         style="text-align:center; margin-top:24px;"
                          Font-Size="X-Large" ReadOnly="true">
                         sealed their love in the BLOCKCHAIN the XX Jan 20XX</asp:Label>
                </asp:TableCell>                              
            </asp:TableRow>
            <asp:TableRow
                runat="server" 
                ForeColor="RoyalBlue"
                BackColor="Transparent"
                Font-Bold="true">
                 <asp:TableCell ColumnSpan="3">                                
                     <asp:Label ID="Label4" runat="server" CssClass="form-control" ForeColor="Red" 
                         style="text-align:center; margin-top:16px;"
                          Font-Size="X-Large" ReadOnly="true">
                         FOREVER !</asp:Label>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
     
       
                     <br /><br />
                                             
                         <div class="form-group" id="divWelcomeMsg" runat="server" style="text-align:center">
                            <asp:Label ID="Label1" runat="server" ForeColor="RoyalBlue" Text="Our Message" 
                                        CssClass="col-lg-12 control-label"  Font-Size="Large" Font-Italic="true"></asp:Label>
                            <div class="col-lg-10">
                                <asp:TextBox ID="txtboxWelcomeMsg" runat="server"  ForeColor="RoyalBlue" Font-Bold="true"
                                        TextMode="MultiLine" Rows="3" CssClass="form-control" Font-Size="Large"
                                            BackColor="#fafafa" ReadOnly="true" style="text-align:center"></asp:TextBox>
                            </div>
                        </div>
                        <br />
                      
                                                                 
                             
                        <br />
                        <center>
                            <asp:Image ID="imgCouple" Width="80%"  runat="server" />
                        
                            <br />
                           <br /> <br />
                           <asp:HyperLink ID="hlEtherScanIo" runat="server" Font-Size="X-Large" onclick="openNewWindowEtherScanIo()" 
                                style="cursor:pointer; text-decoration:underline;">Please visit the EtherScan.io page containing our PERMANENT record. </asp:HyperLink>
                               
                             <br />
                             <br />      
                             <asp:Label ID="Label3" runat="server" ForeColor="RoyalBlue" 
                                 Text="Click the 'Convert To Ascii' button" 
                                        CssClass="col-lg-12 control-label"  Font-Size="Medium" Font-Italic="true"></asp:Label>

                             <asp:Image ID="imgEtherScan" ImageUrl="~/img/etherscan.jpg" Width="60%"  runat="server" />
                                       
                        <br />                
                        </center>
                    </fieldset>
                </div>
            </div>
        </div>
    </div>
    <script src="js/jquery.js" type="text/javascript"></script>
    <script src="js/bootstrap.min.js" type="text/javascript"></script>
    <script src="js/jquery.backstretch.js" type="text/javascript"></script>
    <script type="text/javascript">

        function openNewWindowEtherScanIo() {

            var txid = document.getElementById('<%=HiddenFieldTxId.ClientID%>').value;
            var url = "http://testnet.etherscan.io/tx/" + txid;
            window.open(url);
        }

    </script>

    </form>
</body>

</html>
