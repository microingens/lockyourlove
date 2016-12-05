<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="registrationFormIndex" %>

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


<style type="text/css">
      .box_scale {
                 width:1800px;
                 height:480px;
        -webkit-transform: scale(0.6);  /* Saf3.1+, Chrome */
         -moz-transform: scale(0.6);  /* FF3.5+ */
          -ms-transform: scale(0.6);  /* IE9 */
           -o-transform: scale(0.6);  /* Opera 10.5+ */
              transform: scale(0.6);
                 filter: progid:DXImageTransform.Microsoft.Matrix(/* IE6–IE9 */
                         M11=0.9999619230641713, M12=-0.008726535498373935, M21=0.008726535498373935, M22=0.9999619230641713,SizingMethod='auto expand');
}

</style>

</head>
<body>
    <form id="form1" runat="server">

         <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

    <div style="height:24px; width:100%; background-color:#fff;"></div>
    <div id="custom-bootstrap-menu" class="navbar navbar-default " role="navigation" style="background-color:#339966;">
        <div class="container">
            <div class="navbar-header">
                <!-- <a class="navbar-brand" href="/index.aspx">LOCK YOUR LOVE</a> -->
                 <img id="imgLogo" alt="click me to show the image" src="/img/header_logo2.jpg" 
                        style="width:320px; max-width:600px;  height:70px; " />             
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-menubuilder">
                    <span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span
                        class="icon-bar"></span><span class="icon-bar"></span>
                </button>
            </div>                     
            <div class="collapse navbar-collapse navbar-menubuilder">
                <ul class="nav navbar-nav navbar-right" >
                    <li><a href="/index.aspx" style="color:yellow">Home</a> </li>
                    <li><a href="/newcouple.aspx" style="color:yellow">Add Your Couple</a> </li>
                    <li><a href="/faq.aspx" style="color:yellow">F.A.Q</a> </li>       
                    <li><a href="/contact.aspx" style="color:yellow">Contact</a> </li>              
                </ul>
            </div>
           
        </div>
    </div>
    <div class="container">
        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 text-center">
             <h6 style="margin:8px; color:#222"> Enter your hash / coupleID: </h6>
             <h6 style="margin:8px;">                
                    <asp:TextBox ID="txtboxEnterHash" runat="server" ForeColor="Black" Width="36%"></asp:TextBox>
                 <asp:Button ID="btnGoToCouplePage" runat="server" Text="Go !" BorderWidth="8px" OnClick="btnGoToCouplePage_Click" />
            </h6>
             <br />
                <h3 style="margin:50px;">
                    <strong  style="background-color:transparent; padding-left:12px; padding-right:12px; color:#F93038">Hi, happy couples out there !</strong> 
                    <strong  style="background-color:transparent; padding-left:0px; padding-right:12px; color:#F93038">Want to seal your love forever ?</strong> 
                </h3>
             <br />
                <h5><strong  style="background-color:transparent; padding-left:12px; padding-right:12px; color:#444">stick to the old way ...</strong> </h5>
                <img id="imgPast" alt="click me to show the image" src="/img/oldway.png" 
                        style="width:100%; max-width:600px;  max-height:180px; margin-top:8px; " />
               <div  style="background-color:transparent; padding-left:12px; padding-right:12px; color:#11e;">
                    <strong>EXPIRY DATE:</strong> when the grid breaks, when the rust corrodes, when the Major removes it...
                    <br />
                    <strong>VISIBILITY:</strong> few meters on a bridge somewhere in the world
                    </div>
                <br /> 
                <h5><strong  style="background-color:transparent; padding-left:12px; padding-right:12px; color:#339966">... or enter the future using our blockchain lock</strong> </h5>                
                <img id="imgFuture" alt="click me to show the image" src="/img/newway.jpg" 
                        style="width:100%; max-width:600px;  max-height:2000px; margin-top:32px; " />
             <div  style="background-color:transparent; padding-left:12px; padding-right:12px; margin-top:10px; color:#11e">
                   <strong>EXPIRY DATE:</strong>  the end of Internet.
                    <br />
                    <strong>VISIBILITY:</strong> the worldwide web
                    </div>
                <br />
                <br />
                <hr />
                <h4 style="margin-top:10px;"><strong  style="background-color:transparent; color:#454875;">
                        Blockchain runs endlessly in peer-to-peer mode</strong>
                    <br />
                    <strong style="background-color:transparent; color:#454875;">
                        recording bunch of datas every few seconds.</strong>
                     <br /><br />
                     <strong style="background-color:transparent; color:#F93038;">
                        No one can erase, undo or censor datas:</strong>
                    <br />
                     <strong style="background-color:transparent; color:#F93038;">
                        they will last forever.</strong>
                 </h4>

                <div class="box_scale" style="background-color:#808080; margin-left:-360px;">
                        <iframe width="100%" height="480px" style="overflow-x:scroll; overflow-y:hidden; margin-top:0px;" 
                                        src="https://ethstats.net/"></iframe>
                       
                        <asp:HyperLink ID="hlEtherStats" runat="server" Font-Size="Large" onclick="openNewWindowEtherStats()" 
                            style="cursor:pointer; text-decoration:underline;">Visit EtherStats.net </asp:HyperLink>
    
                </div>

            
                <img id="imgSeal" alt="click me to show the image" src="/img/sealIT.jpg" 
                        style="width:100%; max-width:600px;  max-height:2000px; margin-top:32px; " />
      <br />
      <hr />
            <div style="background-color:#F9F9F9; margin:20px;">
              <br />
                    <h4 style="margin-top:10px;"><strong  style="background-color:transparent; padding-left:12px; 
                            padding-right:12px; color:#F93038; text-decoration:underline;">
                        How it works</strong>
                    </h4>
                <br />

                    <h5  style="color:#339966">1) <strong style="color:#454875">Upload an image</strong> of your couple, we take its digital signature: it will be your couple ID.</h5>
                    <h5  style="color:#339966; padding:8px;">2) <strong style="color:#454875">Fill in the registration form</strong>. No private informations required: no mail, no address, no phone numbers... only the two first-names</h5>  
                    <h5  style="color:#339966; padding:8px;">3) <strong style="color:#454875">Click the 'Submit' button.</strong> This will store the couple ID in the Ethereum blockchain.</h5>   
                
                        <br />
                    <h5><strong  style="background-color:transparent; padding:8px; background-color:#339966; color:#ff0">
                       Saving the signature in the blockchain ledger</strong> </h5>           
                <h5><strong  style="background-color:transparent; padding:8px; background-color:#339966; color:#ff0">
                       seal your love forever</strong> </h5>  
         
                        <br />
                    <h5  style="color:#339966; padding:8px;">4) <strong  style="color:#454875">Save the HASH</strong> in a safe place: it's your permanent couple ID.</h5>            
                    <h5  style="color:#339966; padding:8px;">5) <strong  style="color:#454875">Save the image</strong> in a safe place, as well: it's useful to recover your permanent couple ID (in case you lose it).</h5>                           
        
                 <br />
                    <h4 style="margin-top:10px;"><strong  style="background-color:transparent; padding-left:12px; 
                                padding-right:12px; color:#F93038; text-decoration:underline;">
                        How to use it</strong>
                    </h4>
                <br />
                    <h5  style="color:#339966; padding:8px;">1) <strong style="color:#454875">Enter the couple ID</strong> at the top of this page. Click the GO! button to be redirected to your personal lockyourlove page.</h5>
                    
                    <h5  style="color:#339966">2) <strong style="color:#454875">Share the link</strong> of your personal page on social medias (if you want to let friends know about it) <strong style="color:#F93038">or keep it secret</strong> (if you want your couple's page be confidential).</h5>
                <br />
                <br />
            </div>

                <br />
                <h5  style="color:#222; padding:8px;"><strong style="color:#F93038;">Please note:</strong> your couple's page is a <strong>PRIVATE ONE</strong>. </h5>   
                   <h5 style="color:#222;">  No one can access it unless you give away your secret couple ID.</h5>         

                <h6  style="color:#11e; padding:8px; font-style:italic; font-weight:bold">LockYourLove works exactly as a real lock on a bridge: no one knows, until you tell friends about it.</h6>            

             <hr />
             <img id="imgSend" alt="click me to show the image" src="/img/sendyourlove.jpg" 
                        style="width:100%; max-width:600px;  max-height:2000px; margin-top:32px; " />
            <br />
                <h4  style="color:#339966;  padding:4px;"><strong>Lock it into the Ethereum blockchain.</strong></h4>
            <br />
                <h5  style="color:#444; padding:0px;"><strong>An irreversible act that</strong> <strong style=" color:#F93038; text-decoration :underline;"> can't be undone.</strong></h5>
            <br />
              <img id="imgIsYourLove" alt="click me to show the image" src="/img/isyourlove.jpg" 
                        style="width:100%; max-width:600px;  max-height:2000px; margin-top:32px; " />
            <br />
           
            <br />
            <br />
            <asp:HyperLink ID="hlAddNewCouple" 
                    runat="server" Text="start here ..." Font-Bold="true" Font-Size="Large" NavigateUrl="~/newcouple.aspx">
            </asp:HyperLink>
            <br />
            <br />
            <br />
        </div>
    </div>
    <script src="js/jquery.js" type="text/javascript"></script>
    <script src="js/bootstrap.min.js" type="text/javascript"></script>
    <script src="js/jquery.backstretch.js" type="text/javascript"></script>
    <script type="text/javascript">
        'use strict';

        /* ========================== */
        /* ::::::: Backstrech ::::::: */
        /* ========================== */
        /* "img/44.jpg",
            "img/colorful.jpg",
            "img/34.jpg",
            "img/images.jpg"*/
        // You may also attach Backstretch to a block-level element
 /* $.backstretch(
        [
            "img/34.jpg",
        ],
        {
            duration: 4500,
            fade: 1500
        }
    );*/
        function openNewWindowEtherStats() {
            window.open("https://ethstats.net/");
        }

    </script>

    </form>
</body>

</html>
