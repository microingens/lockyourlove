<%@ Page Language="C#" AutoEventWireup="true" CodeFile="newcouple.aspx.cs" Inherits="registrationFormIndex" %>

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

   <asp:Label ID="lblMissingField" runat="server" Text="" Visible="false" ForeColor="Red" Font-Size="Large" Font-Bold="True" Height="60px"></asp:Label>

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
                        <br /><br />
                          <div class="form-group">
                            <asp:Label ID="Label2" runat="server" Text="Upload image" CssClass="col-lg-2 control-label"></asp:Label>
                            <div class="col-lg-10">
                                
                                    <cc1:AsyncFileUpload runat="server"
                                        OnClientUploadError="uploadError"
                                        OnClientUploadComplete="uploadComplete" 
                                        ID="AsyncFileUpload1" Width="400px" UploaderStyle="Modern"
                                        CompleteBackColor = "DimGray"
                                        ForeColor ="Yellow"
                                        UploadingBackColor="#CCFFFF"  ThrobberID="imgLoader"
                                        OnUploadedComplete = "FileUploadComplete"
                                         />
                                    <br />       
                                    <asp:Image ID="imgLoader" runat="server" Width="24px" Height="24px" ImageUrl = "~/img/gallery-loader.gif" />
                                   <asp:Label ID="lblMesg" runat="server" Text=""></asp:Label>                                    
                                    <br />
                                    <img id="imgClientUploaded" alt="click me to show the image" src="" onclick="showImagClientClick();" 
                                        style="width:92%; max-width:400px;   min-height:80px; max-height:400px; visibility:collapse;" /></div>
                                    <br />
                                  
                        </div>       
                        <br />
                        <br /><br />      
                       
                    </fieldset>
                </div>
            </div>
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
        /*$.backstretch(
        [
            "img/34.jpg",
        ],
        {
            duration: 4500,
            fade: 1500
        }
    );*/


        var filenameUploaded = '';
        function uploadComplete(sender, args) {
            filenameUploaded = args.get_fileName();
            $get("<%=lblMesg.ClientID%>").innerHTML = "File uploaded successfully";
            var img = document.getElementById('imgClientUploaded');
            img.style.visibility = 'visible';

            window.location.replace("newcouple2.aspx?filename=" + filenameUploaded);
        }
 
        function uploadError(sender) {
            $get("<%=lblMesg.ClientID%>").innerHTML = "File upload failed.";
        }

      

    </script>

    </form>
</body>

</html>
