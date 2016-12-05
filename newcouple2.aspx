<%@ Page Language="C#" AutoEventWireup="true" CodeFile="newcouple2.aspx.cs" Inherits="registrationFormIndex" %>

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


<center>
   <asp:Label ID="lblMissingField" runat="server" Text="" Visible="false" ForeColor="Red" Font-Size="Large" Font-Bold="True" Height="60px"></asp:Label>
</center>

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
                        <asp:Label ID="lblPrice" runat="server" Height="100%"  Width="66%" ForeColor="Yellow" Font-Bold="true" Font-Size="Large" >Price in ETH/$</asp:Label>
                        <br />
                        <br />
                        <center>
                            <asp:Image ID="imgCouple" Width="80%" Height="600px" runat="server" />
                        </center>
                        <br />
                        <br />
                        <center>
                            <asp:Label ID="lblHashMsg" runat="server" Text="" Font-Bold="true" Font-Size="Large" Width="70%"></asp:Label>                             
                            <asp:Label ID="lblHash" runat="server" Text="" Font-Bold="true" Font-Size="Large" Width="70%"></asp:Label>                             
                        </center>                               
                        <br />
                         <br />
                         <br />
                        <div id="divMan" runat="server" class="form-group">
                           <asp:Image ID="imgMan" runat="server" Height="32px" Width="64px" ImageUrl="~/img/man.png" CssClass="col-lg-2" />
                            <div class="col-lg-10">                                
                                <asp:TextBox ID="txtboxMan" runat="server" placeholder="first name here" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                        <div id="divWoman" runat="server" class="form-group">
                            <asp:Image ID="imgWoman" runat="server" Height="32px"  Width="64px" ImageUrl="~/img/woman.png" CssClass="col-lg-2" />
                            <div class="col-lg-10">
                                <asp:TextBox ID="txtboxWoman" runat="server" placeholder="first name here" CssClass="form-control"></asp:TextBox>
                                <!--<div class="checkbox">
                                    <label>
                                        <asp:CheckBox ID="CheckBoxAnonymous" runat="server" Text="please keep me anonymous" />
                                    </label>
                                </div> -->
                            </div>
                        </div>
                        <br />
                        <div class="form-group" id="divWeddingDate" runat="server" >
                            <asp:Label ID="Label3" runat="server" Text="Wedding date" CssClass="col-lg-2 control-label"></asp:Label>
                         
                            <div class="col-lg-10">                                                   
                                <div class="input-group time">   
                                                       
                                      
                                     <asp:dropdownlist id="drpDay" Runat="server" CssClass="col-lg-2"  
                                                        Width="60" ForeColor="#222222"  style="margin:6px">
                                         <asp:ListItem Selected="True" Value="1">----</asp:ListItem>
                                         <asp:ListItem Value="01"></asp:ListItem>
                                         <asp:ListItem Value="02"></asp:ListItem>
                                         <asp:ListItem Value="03"></asp:ListItem>
                                         <asp:ListItem Value="04"></asp:ListItem>
                                         <asp:ListItem Value="05"></asp:ListItem>
                                         <asp:ListItem Value="06"></asp:ListItem>
                                         <asp:ListItem Value="07"></asp:ListItem>
                                         <asp:ListItem Value="08"></asp:ListItem>
                                         <asp:ListItem Value="09"></asp:ListItem>
                                         <asp:ListItem Value="10"></asp:ListItem>
                                         <asp:ListItem Value="11"></asp:ListItem>
                                         <asp:ListItem Value="12"></asp:ListItem>
                                         <asp:ListItem Value="13"></asp:ListItem>
                                         <asp:ListItem Value="14"></asp:ListItem>
                                         <asp:ListItem Value="15"></asp:ListItem>
                                         <asp:ListItem Value="16"></asp:ListItem>
                                         <asp:ListItem Value="17"></asp:ListItem>
                                         <asp:ListItem Value="18"></asp:ListItem>
                                         <asp:ListItem Value="19"></asp:ListItem>
                                         <asp:ListItem Value="20"></asp:ListItem>
                                         <asp:ListItem Value="21"></asp:ListItem>
                                         <asp:ListItem Value="22"></asp:ListItem>
                                         <asp:ListItem Value="23"></asp:ListItem>
                                         <asp:ListItem Value="24"></asp:ListItem>
                                         <asp:ListItem Value="25"></asp:ListItem>
                                         <asp:ListItem Value="26"></asp:ListItem>
                                         <asp:ListItem Value="27"></asp:ListItem>
                                         <asp:ListItem Value="28"></asp:ListItem>
                                         <asp:ListItem Value="29"></asp:ListItem>
                                         <asp:ListItem Value="30"></asp:ListItem>
                                         <asp:ListItem Value="31"></asp:ListItem>
                                     </asp:dropdownlist>
                                              
                                     <asp:DropDownList ID="drpMonth" runat="server" CssClass="col-lg-2" 
                                                            Width="80" ForeColor="#222222" style="margin:6px">
                                         <asp:ListItem Selected="True" Value="1">----</asp:ListItem>
                                         <asp:ListItem  Value="1">Jan</asp:ListItem>
                                         <asp:ListItem Value="2">Feb</asp:ListItem>
                                         <asp:ListItem Value="3">Mar</asp:ListItem>
                                         <asp:ListItem Value="4">Apr</asp:ListItem>
                                         <asp:ListItem Value="5">May</asp:ListItem>
                                         <asp:ListItem Value="6">Jun</asp:ListItem>
                                         <asp:ListItem Value="7">Jul</asp:ListItem>
                                         <asp:ListItem Value="8">Aug</asp:ListItem>
                                         <asp:ListItem Value="9">Sep</asp:ListItem>
                                         <asp:ListItem Value="10">Oct</asp:ListItem>
                                         <asp:ListItem Value="11">Nov</asp:ListItem>
                                         <asp:ListItem Value="12">Dec</asp:ListItem>
                                     </asp:DropDownList>
                                  
                          

                                      <asp:dropdownlist id="drpYearB" runat="server" CssClass="col-lg-2"  
                                                        Width="100" ForeColor="#222222"  
                                                        style="margin:6px;">                      
                                      </asp:dropdownlist>
                                 </div>
                            </div>
                        </div>
                        <br />                         
                         <div class="form-group" id="divWelcomeMsg" runat="server" >
                            <asp:Label ID="Label1" runat="server" Text="Our Welcome Message" CssClass="col-lg-2 control-label"></asp:Label>
                            <div class="col-lg-10">
                                <asp:TextBox ID="txtboxWelcomeMsg" runat="server" TextMode="MultiLine" Rows="3" CssClass="form-control" 
                                            BackColor="#fafafa" ForeColor="Black"></asp:TextBox>
                            </div>
                        </div>
                        <br />
                      
                      
                        <div class="form-group" id="divNation" runat="server">
                          <asp:Label ID="Label5" runat="server" Text="Country" CssClass="col-lg-2 control-label"></asp:Label>                          
                            <div class="col-lg-10">
                                <asp:DropDownList ID="ddlCountry" runat="server" ForeColor="Black" >
                                        <asp:ListItem Selected="True"  Value="XX">-------</asp:ListItem>    
                                        <asp:ListItem Value="AF">Afghanistan</asp:ListItem>
                                        <asp:ListItem Value="AL">Albania</asp:ListItem>
                                        <asp:ListItem Value="DZ">Algeria</asp:ListItem>
                                        <asp:ListItem Value="AS">American Samoa</asp:ListItem>
                                        <asp:ListItem Value="AD">Andorra</asp:ListItem>
                                        <asp:ListItem Value="AO">Angola</asp:ListItem>
                                        <asp:ListItem Value="AI">Anguilla</asp:ListItem>
                                        <asp:ListItem Value="AQ">Antarctica</asp:ListItem>
                                        <asp:ListItem Value="AG">Antigua And Barbuda</asp:ListItem>
                                        <asp:ListItem Value="AR">Argentina</asp:ListItem>
                                        <asp:ListItem Value="AM">Armenia</asp:ListItem>
                                        <asp:ListItem Value="AW">Aruba</asp:ListItem>
                                        <asp:ListItem Value="AU">Australia</asp:ListItem>
                                        <asp:ListItem Value="AT">Austria</asp:ListItem>
                                        <asp:ListItem Value="AZ">Azerbaijan</asp:ListItem>
                                        <asp:ListItem Value="BS">Bahamas</asp:ListItem>
                                        <asp:ListItem Value="BH">Bahrain</asp:ListItem>
                                        <asp:ListItem Value="BD">Bangladesh</asp:ListItem>
                                        <asp:ListItem Value="BB">Barbados</asp:ListItem>
                                        <asp:ListItem Value="BY">Belarus</asp:ListItem>
                                        <asp:ListItem Value="BE">Belgium</asp:ListItem>
                                        <asp:ListItem Value="BZ">Belize</asp:ListItem>
                                        <asp:ListItem Value="BJ">Benin</asp:ListItem>
                                        <asp:ListItem Value="BM">Bermuda</asp:ListItem>
                                        <asp:ListItem Value="BT">Bhutan</asp:ListItem>
                                        <asp:ListItem Value="BO">Bolivia</asp:ListItem>
                                        <asp:ListItem Value="BA">Bosnia And Herzegowina</asp:ListItem>
                                        <asp:ListItem Value="BW">Botswana</asp:ListItem>
                                        <asp:ListItem Value="BV">Bouvet Island</asp:ListItem>
                                        <asp:ListItem Value="BR">Brazil</asp:ListItem>
                                        <asp:ListItem Value="IO">British Indian Ocean Territory</asp:ListItem>
                                        <asp:ListItem Value="BN">Brunei Darussalam</asp:ListItem>
                                        <asp:ListItem Value="BG">Bulgaria</asp:ListItem>
                                        <asp:ListItem Value="BF">Burkina Faso</asp:ListItem>
                                        <asp:ListItem Value="BI">Burundi</asp:ListItem>
                                        <asp:ListItem Value="KH">Cambodia</asp:ListItem>
                                        <asp:ListItem Value="CM">Cameroon</asp:ListItem>
                                        <asp:ListItem Value="CA">Canada</asp:ListItem>
                                        <asp:ListItem Value="CV">Cape Verde</asp:ListItem>
                                        <asp:ListItem Value="KY">Cayman Islands</asp:ListItem>
                                        <asp:ListItem Value="CF">Central African Republic</asp:ListItem>
                                        <asp:ListItem Value="TD">Chad</asp:ListItem>
                                        <asp:ListItem Value="CL">Chile</asp:ListItem>
                                        <asp:ListItem Value="CN">China</asp:ListItem>
                                        <asp:ListItem Value="CX">Christmas Island</asp:ListItem>
                                        <asp:ListItem Value="CC">Cocos (Keeling) Islands</asp:ListItem>
                                        <asp:ListItem Value="CO">Colombia</asp:ListItem>
                                        <asp:ListItem Value="KM">Comoros</asp:ListItem>
                                        <asp:ListItem Value="CG">Congo</asp:ListItem>
                                        <asp:ListItem Value="CK">Cook Islands</asp:ListItem>
                                        <asp:ListItem Value="CR">Costa Rica</asp:ListItem>
                                        <asp:ListItem Value="CI">Cote D'Ivoire</asp:ListItem>
                                        <asp:ListItem Value="HR">Croatia (Local Name: Hrvatska)</asp:ListItem>
                                        <asp:ListItem Value="CU">Cuba</asp:ListItem>
                                        <asp:ListItem Value="CY">Cyprus</asp:ListItem>
                                        <asp:ListItem Value="CZ">Czech Republic</asp:ListItem>
                                        <asp:ListItem Value="DK">Denmark</asp:ListItem>
                                        <asp:ListItem Value="DJ">Djibouti</asp:ListItem>
                                        <asp:ListItem Value="DM">Dominica</asp:ListItem>
                                        <asp:ListItem Value="DO">Dominican Republic</asp:ListItem>
                                        <asp:ListItem Value="TP">East Timor</asp:ListItem>
                                        <asp:ListItem Value="EC">Ecuador</asp:ListItem>
                                        <asp:ListItem Value="EG">Egypt</asp:ListItem>
                                        <asp:ListItem Value="SV">El Salvador</asp:ListItem>
                                        <asp:ListItem Value="GQ">Equatorial Guinea</asp:ListItem>
                                        <asp:ListItem Value="ER">Eritrea</asp:ListItem>
                                        <asp:ListItem Value="EE">Estonia</asp:ListItem>
                                        <asp:ListItem Value="ET">Ethiopia</asp:ListItem>
                                        <asp:ListItem Value="FK">Falkland Islands (Malvinas)</asp:ListItem>
                                        <asp:ListItem Value="FO">Faroe Islands</asp:ListItem>
                                        <asp:ListItem Value="FJ">Fiji</asp:ListItem>
                                        <asp:ListItem Value="FI">Finland</asp:ListItem>
                                        <asp:ListItem Value="FR">France</asp:ListItem>
                                        <asp:ListItem Value="GF">French Guiana</asp:ListItem>
                                        <asp:ListItem Value="PF">French Polynesia</asp:ListItem>
                                        <asp:ListItem Value="TF">French Southern Territories</asp:ListItem>
                                        <asp:ListItem Value="GA">Gabon</asp:ListItem>
                                        <asp:ListItem Value="GM">Gambia</asp:ListItem>
                                        <asp:ListItem Value="GE">Georgia</asp:ListItem>
                                        <asp:ListItem Value="DE">Germany</asp:ListItem>
                                        <asp:ListItem Value="GH">Ghana</asp:ListItem>
                                        <asp:ListItem Value="GI">Gibraltar</asp:ListItem>
                                        <asp:ListItem Value="GR">Greece</asp:ListItem>
                                        <asp:ListItem Value="GL">Greenland</asp:ListItem>
                                        <asp:ListItem Value="GD">Grenada</asp:ListItem>
                                        <asp:ListItem Value="GP">Guadeloupe</asp:ListItem>
                                        <asp:ListItem Value="GU">Guam</asp:ListItem>
                                        <asp:ListItem Value="GT">Guatemala</asp:ListItem>
                                        <asp:ListItem Value="GN">Guinea</asp:ListItem>
                                        <asp:ListItem Value="GW">Guinea-Bissau</asp:ListItem>
                                        <asp:ListItem Value="GY">Guyana</asp:ListItem>
                                        <asp:ListItem Value="HT">Haiti</asp:ListItem>
                                        <asp:ListItem Value="HM">Heard And Mc Donald Islands</asp:ListItem>
                                        <asp:ListItem Value="VA">Holy See (Vatican City State)</asp:ListItem>
                                        <asp:ListItem Value="HN">Honduras</asp:ListItem>
                                        <asp:ListItem Value="HK">Hong Kong</asp:ListItem>
                                        <asp:ListItem Value="HU">Hungary</asp:ListItem>
                                        <asp:ListItem Value="IS">Icel And</asp:ListItem>
                                        <asp:ListItem Value="IN">India</asp:ListItem>
                                        <asp:ListItem Value="ID">Indonesia</asp:ListItem>
                                        <asp:ListItem Value="IR">Iran (Islamic Republic Of)</asp:ListItem>
                                        <asp:ListItem Value="IQ">Iraq</asp:ListItem>
                                        <asp:ListItem Value="IE">Ireland</asp:ListItem>
                                        <asp:ListItem Value="IL">Israel</asp:ListItem>
                                        <asp:ListItem Value="IT">Italy</asp:ListItem>
                                        <asp:ListItem Value="JM">Jamaica</asp:ListItem>
                                        <asp:ListItem Value="JP">Japan</asp:ListItem>
                                        <asp:ListItem Value="JO">Jordan</asp:ListItem>
                                        <asp:ListItem Value="KZ">Kazakhstan</asp:ListItem>
                                        <asp:ListItem Value="KE">Kenya</asp:ListItem>
                                        <asp:ListItem Value="KI">Kiribati</asp:ListItem>
                                        <asp:ListItem Value="KP">Korea, Dem People'S Republic</asp:ListItem>
                                        <asp:ListItem Value="KR">Korea, Republic Of</asp:ListItem>
                                        <asp:ListItem Value="KW">Kuwait</asp:ListItem>
                                        <asp:ListItem Value="KG">Kyrgyzstan</asp:ListItem>
                                        <asp:ListItem Value="LA">Lao People'S Dem Republic</asp:ListItem>
                                        <asp:ListItem Value="LV">Latvia</asp:ListItem>
                                        <asp:ListItem Value="LB">Lebanon</asp:ListItem>
                                        <asp:ListItem Value="LS">Lesotho</asp:ListItem>
                                        <asp:ListItem Value="LR">Liberia</asp:ListItem>
                                        <asp:ListItem Value="LY">Libyan Arab Jamahiriya</asp:ListItem>
                                        <asp:ListItem Value="LI">Liechtenstein</asp:ListItem>
                                        <asp:ListItem Value="LT">Lithuania</asp:ListItem>
                                        <asp:ListItem Value="LU">Luxembourg</asp:ListItem>
                                        <asp:ListItem Value="MO">Macau</asp:ListItem>
                                        <asp:ListItem Value="MK">Macedonia</asp:ListItem>
                                        <asp:ListItem Value="MG">Madagascar</asp:ListItem>
                                        <asp:ListItem Value="MW">Malawi</asp:ListItem>
                                        <asp:ListItem Value="MY">Malaysia</asp:ListItem>
                                        <asp:ListItem Value="MV">Maldives</asp:ListItem>
                                        <asp:ListItem Value="ML">Mali</asp:ListItem>
                                        <asp:ListItem Value="MT">Malta</asp:ListItem>
                                        <asp:ListItem Value="MH">Marshall Islands</asp:ListItem>
                                        <asp:ListItem Value="MQ">Martinique</asp:ListItem>
                                        <asp:ListItem Value="MR">Mauritania</asp:ListItem>
                                        <asp:ListItem Value="MU">Mauritius</asp:ListItem>
                                        <asp:ListItem Value="YT">Mayotte</asp:ListItem>
                                        <asp:ListItem Value="MX">Mexico</asp:ListItem>
                                        <asp:ListItem Value="FM">Micronesia, Federated States</asp:ListItem>
                                        <asp:ListItem Value="MD">Moldova, Republic Of</asp:ListItem>
                                        <asp:ListItem Value="MC">Monaco</asp:ListItem>
                                        <asp:ListItem Value="MN">Mongolia</asp:ListItem>
                                        <asp:ListItem Value="MS">Montserrat</asp:ListItem>
                                        <asp:ListItem Value="MA">Morocco</asp:ListItem>
                                        <asp:ListItem Value="MZ">Mozambique</asp:ListItem>
                                        <asp:ListItem Value="MM">Myanmar</asp:ListItem>
                                        <asp:ListItem Value="NA">Namibia</asp:ListItem>
                                        <asp:ListItem Value="NR">Nauru</asp:ListItem>
                                        <asp:ListItem Value="NP">Nepal</asp:ListItem>
                                        <asp:ListItem Value="NL">Netherlands</asp:ListItem>
                                        <asp:ListItem Value="AN">Netherlands Ant Illes</asp:ListItem>
                                        <asp:ListItem Value="NC">New Caledonia</asp:ListItem>
                                        <asp:ListItem Value="NZ">New Zealand</asp:ListItem>
                                        <asp:ListItem Value="NI">Nicaragua</asp:ListItem>
                                        <asp:ListItem Value="NE">Niger</asp:ListItem>
                                        <asp:ListItem Value="NG">Nigeria</asp:ListItem>
                                        <asp:ListItem Value="NU">Niue</asp:ListItem>
                                        <asp:ListItem Value="NF">Norfolk Island</asp:ListItem>
                                        <asp:ListItem Value="MP">Northern Mariana Islands</asp:ListItem>
                                        <asp:ListItem Value="NO">Norway</asp:ListItem>
                                        <asp:ListItem Value="OM">Oman</asp:ListItem>
                                        <asp:ListItem Value="PK">Pakistan</asp:ListItem>
                                        <asp:ListItem Value="PW">Palau</asp:ListItem>
                                        <asp:ListItem Value="PA">Panama</asp:ListItem>
                                        <asp:ListItem Value="PG">Papua New Guinea</asp:ListItem>
                                        <asp:ListItem Value="PY">Paraguay</asp:ListItem>
                                        <asp:ListItem Value="PE">Peru</asp:ListItem>
                                        <asp:ListItem Value="PH">Philippines</asp:ListItem>
                                        <asp:ListItem Value="PN">Pitcairn</asp:ListItem>
                                        <asp:ListItem Value="PL">Poland</asp:ListItem>
                                        <asp:ListItem Value="PT">Portugal</asp:ListItem>
                                        <asp:ListItem Value="PR">Puerto Rico</asp:ListItem>
                                        <asp:ListItem Value="QA">Qatar</asp:ListItem>
                                        <asp:ListItem Value="RE">Reunion</asp:ListItem>
                                        <asp:ListItem Value="RO">Romania</asp:ListItem>
                                        <asp:ListItem Value="RU">Russian Federation</asp:ListItem>
                                        <asp:ListItem Value="RW">Rwanda</asp:ListItem>
                                        <asp:ListItem Value="KN">Saint K Itts And Nevis</asp:ListItem>
                                        <asp:ListItem Value="LC">Saint Lucia</asp:ListItem>
                                        <asp:ListItem Value="VC">Saint Vincent, The Grenadines</asp:ListItem>
                                        <asp:ListItem Value="WS">Samoa</asp:ListItem>
                                        <asp:ListItem Value="SM">San Marino</asp:ListItem>
                                        <asp:ListItem Value="ST">Sao Tome And Principe</asp:ListItem>
                                        <asp:ListItem Value="SA">Saudi Arabia</asp:ListItem>
                                        <asp:ListItem Value="SN">Senegal</asp:ListItem>
                                        <asp:ListItem Value="SC">Seychelles</asp:ListItem>
                                        <asp:ListItem Value="SL">Sierra Leone</asp:ListItem>
                                        <asp:ListItem Value="SG">Singapore</asp:ListItem>
                                        <asp:ListItem Value="SK">Slovakia (Slovak Republic)</asp:ListItem>
                                        <asp:ListItem Value="SI">Slovenia</asp:ListItem>
                                        <asp:ListItem Value="SB">Solomon Islands</asp:ListItem>
                                        <asp:ListItem Value="SO">Somalia</asp:ListItem>
                                        <asp:ListItem Value="ZA">South Africa</asp:ListItem>
                                        <asp:ListItem Value="GS">South Georgia , S Sandwich Is.</asp:ListItem>
                                        <asp:ListItem Value="ES">Spain</asp:ListItem>
                                        <asp:ListItem Value="LK">Sri Lanka</asp:ListItem>
                                        <asp:ListItem Value="SH">St. Helena</asp:ListItem>
                                        <asp:ListItem Value="PM">St. Pierre And Miquelon</asp:ListItem>
                                        <asp:ListItem Value="SD">Sudan</asp:ListItem>
                                        <asp:ListItem Value="SR">Suriname</asp:ListItem>
                                        <asp:ListItem Value="SJ">Svalbard, Jan Mayen Islands</asp:ListItem>
                                        <asp:ListItem Value="SZ">Sw Aziland</asp:ListItem>
                                        <asp:ListItem Value="SE">Sweden</asp:ListItem>
                                        <asp:ListItem Value="CH">Switzerland</asp:ListItem>
                                        <asp:ListItem Value="SY">Syrian Arab Republic</asp:ListItem>
                                        <asp:ListItem Value="TW">Taiwan</asp:ListItem>
                                        <asp:ListItem Value="TJ">Tajikistan</asp:ListItem>
                                        <asp:ListItem Value="TZ">Tanzania, United Republic Of</asp:ListItem>
                                        <asp:ListItem Value="TH">Thailand</asp:ListItem>
                                        <asp:ListItem Value="TG">Togo</asp:ListItem>
                                        <asp:ListItem Value="TK">Tokelau</asp:ListItem>
                                        <asp:ListItem Value="TO">Tonga</asp:ListItem>
                                        <asp:ListItem Value="TT">Trinidad And Tobago</asp:ListItem>
                                        <asp:ListItem Value="TN">Tunisia</asp:ListItem>
                                        <asp:ListItem Value="TR">Turkey</asp:ListItem>
                                        <asp:ListItem Value="TM">Turkmenistan</asp:ListItem>
                                        <asp:ListItem Value="TC">Turks And Caicos Islands</asp:ListItem>
                                        <asp:ListItem Value="TV">Tuvalu</asp:ListItem>
                                        <asp:ListItem Value="UG">Uganda</asp:ListItem>
                                        <asp:ListItem Value="UA">Ukraine</asp:ListItem>
                                        <asp:ListItem Value="AE">United Arab Emirates</asp:ListItem>
                                        <asp:ListItem Value="GB">United Kingdom</asp:ListItem>
                                        <asp:ListItem Value="US">United States</asp:ListItem>
                                        <asp:ListItem Value="UM">United States Minor Is.</asp:ListItem>
                                        <asp:ListItem Value="UY">Uruguay</asp:ListItem>
                                        <asp:ListItem Value="UZ">Uzbekistan</asp:ListItem>
                                        <asp:ListItem Value="VU">Vanuatu</asp:ListItem>
                                        <asp:ListItem Value="VE">Venezuela</asp:ListItem>
                                        <asp:ListItem Value="VN">Viet Nam</asp:ListItem>
                                        <asp:ListItem Value="VG">Virgin Islands (British)</asp:ListItem>
                                        <asp:ListItem Value="VI">Virgin Islands (U.S.)</asp:ListItem>
                                        <asp:ListItem Value="WF">Wallis And Futuna Islands</asp:ListItem>
                                        <asp:ListItem Value="EH">Western Sahara</asp:ListItem>
                                        <asp:ListItem Value="YE">Yemen</asp:ListItem>
                                        <asp:ListItem Value="YU">Yugoslavia</asp:ListItem>
                                        <asp:ListItem Value="ZR">Zaire</asp:ListItem>
                                        <asp:ListItem Value="ZM">Zambia</asp:ListItem>
                                        <asp:ListItem Value="ZW">Zimbabwe</asp:ListItem>
                                </asp:DropDownList>                              
                            </div>
                        </div>
                               
                         <div class="form-group" id="divValidate" runat="server">
                            <div class="col-lg-10 col-lg-offset-2">
                                <button type="button" id="btnValidate" onclick="btnLocalValidate();" style="background-color:yellow; color:forestgreen;">Validate</button>                                                             
                            </div>
                        </div>                 
                        <div class="form-group" id="divSubmit" runat="server" style="visibility:collapse">
                            <div class="col-lg-10 col-lg-offset-2"> 
                                <asp:Button ID="btnSubmit" runat="server" CssClass="btn btn-primary" Text="Submit" OnClick="btnSubmit_Click" />
                                <asp:Button ID="btnCancel" runat="server" CssClass="btn btn-warning" Text="Cancel" />                              
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

        function saveHashToLocalStorage(imgHash, img_filename) {

            //alert(imgHash + ' - saveHashToLocalStorage img_filename = ' + img_filename);
            localStorage.setItem('imgHash', imgHash);   
            
            var imgCouple = document.getElementById('<%=imgCouple.ClientID%>');
            imgCouple.setAttribute('src', "/Couples/" + imgHash + "/img/" + img_filename);
            //console.log(imgCouple.ImageUrl);
        }

        function setHashFromLocalStorageAndImage(img_filename) {

            var retrievedHash = localStorage.getItem('imgHash');
            $get("<%=lblHash.ClientID%>").innerHTML = retrievedHash;

            var imgCouple = document.getElementById('<%=imgCouple.ClientID%>');
            imgCouple.setAttribute('src', "/Couples/" + retrievedHash + "/img/" + img_filename);
            //console.log(imgCouple.ImageUrl);
        }

        function btnLocalValidate() {

            var man = document.getElementById('<%=txtboxMan.ClientID%>').value;
            var woman = document.getElementById('<%=txtboxWoman.ClientID%>').value;

            var drpDayControl = document.getElementById('<%=drpDay.ClientID%>');
            var drpMonthControl = document.getElementById('<%=drpMonth.ClientID%>');
            var drpYearBControl = document.getElementById('<%=drpYearB.ClientID%>');
            var day = '-';
            var month = '-';
            var year = '-';
            if (drpDayControl.selectedIndex != undefined &&
                                drpMonthControl.selectedIndex != undefined &&
                                        drpYearBControl.selectedIndex != undefined)
            {
                day = drpDayControl.options[drpDayControl.selectedIndex].innerHTML;
                month = drpMonthControl.options[drpMonthControl.selectedIndex].innerHTML;
                year = drpYearBControl.options[drpYearBControl.selectedIndex].innerHTML;
            }
           
            var drpCountry = document.getElementById('<%=ddlCountry.ClientID%>');
            var country = drpCountry.options[ddlCountry.selectedIndex].innerHTML;
            var strWedDate = day + month + year;

            var welcmsg = document.getElementById('<%=txtboxWelcomeMsg.ClientID%>').value;

            if (man.length < 2 || woman.length < 2 || strWedDate.length != 9 ||
                    day.startsWith("--") || month.startsWith("--") || year.startsWith("--") ||
                    welcmsg.length < 2 ||
                    country.startsWith("--") )
            {
                alert('please fill all the fields')
            }           
            else
            {
                document.getElementById('<%=txtboxMan.ClientID%>').readOnly = "readonly";
                document.getElementById('<%=txtboxWoman.ClientID%>').readOnly = "readonly";
                document.getElementById('<%=txtboxWelcomeMsg.ClientID%>').readOnly = "readonly";

              


                alert('The form is correctly filled. \nPlease check again all the fields before clicking on the Submit button.')
                document.getElementById('divValidate').style.visibility = "collapse";
                document.getElementById('divSubmit').style.visibility = "visible";
            }
        }
        

    </script>

    </form>
</body>

</html>
