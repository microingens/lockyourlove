<%@ Page Language="C#" AutoEventWireup="true" CodeFile="test.aspx.cs" Inherits="test" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Lock Your Love</title>
    
    <script type="text/javascript">
        function UploadFile(fileUpload) {
            if (fileUpload.value != '') {
                document.getElementById("<%=btnUploadDoc.ClientID %>").click();
            }
        }
    </script>
</head>

</head>
<body>
    <form id="form1" runat="server">
    <div>
    
            <asp:FileUpload ID="fuDocument" runat="server" onchange="UploadFile(this);" />
            <br /><br />
            <asp:Label ID="lblMsg" runat="server" Text="Your document has been uploaded successfully." Visible="false" ForeColor="Green" />
            <asp:Button ID="btnUploadDoc" Text="Upload" runat="server" OnClick="UploadDocument" Style="display: none;" />
        <br /><br /><br /><br />
       
    <asp:Image ID="imgLoader" runat="server"
        ImageUrl = "~/images/loader.gif" />
    <br />
   <asp:Label ID="lblMesg" runat="server" Text=""></asp:Label>

    </div>
        <br /><br />
        <asp:Label ID="LabelHash" runat="server" Text="HASH: "></asp:Label>
        <br /><br />
        <asp:Label ID="LabelAddress" runat="server" Text="ADDRESS: "></asp:Label>
    </form>
</body>

    <script type = "text/javascript">
        function uploadComplete(sender) {
            $get("<%=lblMesg.ClientID%>").innerHTML = "File Uploaded Successfully";
        }
 
        function uploadError(sender) {
            $get("<%=lblMesg.ClientID%>").innerHTML = "File upload failed.";
        }
    </script>

</html>
