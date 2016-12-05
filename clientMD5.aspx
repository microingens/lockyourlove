<%@ Page Language="C#" AutoEventWireup="true" CodeFile="clientMD5.aspx.cs" Inherits="clientMD5" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>

   <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/crypto-js/3.1.2/components/core.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/crypto-js/3.1.2/components/lib-typedarrays.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/crypto-js/3.1.2/components/md5.js"></script>

</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <input type="file" />
        <p>MD5 Hash: <span id="md5"></span></p>

    </div>
    <script type="text/javascript">
        $('input').change(
        function () {

            var reader = new FileReader();
        
            reader.addEventListener(
                'load',
                function () {
                    var wordArray = CryptoJS.lib.WordArray.create(this.result);
                    $('#md5').text(CryptoJS.MD5(wordArray));
                }
            );
        
            alert(this.files[0].type)
            reader.readAsArrayBuffer(this.files[0]);
        })

        function WantToSave() {
            alert('You should save now !');
        }

    </script>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
    </form>
    </body>
</html>
