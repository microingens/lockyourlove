using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Security.Cryptography;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using NBitcoin;
using System.Numerics;
using NBitcoin.DataEncoders;
using System.Text;
using System.Net;

public partial class test : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       // timeStampTheDoc();

        /*Key key = new Key(); //generates a new private key.
        PubKey pubKey = key.PubKey; //gets the matching public key.
        Console.WriteLine("Public Key: {0}", pubKey);
        KeyId hash = pubKey.Hash; //gets a hash of the public key.
        Console.WriteLine("Hashed public key: {0}", hash);
        BitcoinPubKeyAddress address = pubKey.GetAddress(Network.Main); //retrieves the bitcoin address.
 Console.WriteLine("Address: {0}", address);
        Script scriptPubKeyFromAddress = address.ScriptPubKey;
        Console.WriteLine("ScriptPubKey from address: {0}", scriptPubKeyFromAddress);
        Script scriptPubKeyFromHash = hash.ScriptPubKey;
        Console.WriteLine("ScriptPubKey from hash: {0}", scriptPubKeyFromHash);
        */


    }

    static byte[] GetBytes(string str)
    {
        byte[] bytes = new byte[str.Length * sizeof(char)];
        System.Buffer.BlockCopy(str.ToCharArray(), 0, bytes, 0, bytes.Length);
        return bytes;
    }

    /*public static string Base58Encode(byte[] array)
    {
        const string ALPHABET = "123456789ABCDEFGHJKLMNPQRSTUVWXYZabcdefghijkmnopqrstuvwxyz";
        string retString = string.Empty;
        BigInteger encodeSize = ALPHABET.Length;
        BigInteger arrayToInt = 0;
        for (int i = 0; i < array.Length; ++i)
        {
            arrayToInt = arrayToInt * 256 + array[i];
        }
        while (arrayToInt > 0)
        {
            int rem = (int)(arrayToInt % encodeSize);
            arrayToInt /= encodeSize;
            retString = ALPHABET[rem] + retString;
        }
        for (int i = 0; i < array.Length && array[i] == 0; ++i)
            retString = ALPHABET[0] + retString;

        return retString;
    }*/


    public void UploadDocument(object sender, EventArgs e)
    {
        string filename = Path.GetFileName(fuDocument.FileName);
        string filepath = Server.MapPath("~/UPLOADS/" + filename);
        fuDocument.SaveAs(filepath);
        lblMsg.Visible = true;

        string hash = string.Empty;
        using (FileStream stream = File.OpenRead(filepath))
        {
            SHA1Managed sha = new SHA1Managed();
            byte[] byteshash = sha.ComputeHash(stream);
            hash = BitConverter.ToString(byteshash).Replace("-", String.Empty);
        }

        string filehash = Path.ChangeExtension(filename, ".hash");
        //File.WriteAllText(filehash, hash);
        LabelHash.Text = hash;

        // ce hash
        //hash = "6B4B823F0FE565A281F6E1E81259447D67129D04315EAD0FA4B5FCB9E7B987A8";
        /*// doit donner 1pFhvokRWu8MEftWUQY2Ub4ZEjW6rd5LzhS9WDfci1HSMEq525
        Base58Encoder base58enc = new Base58Encoder();
        string base58 = base58enc.EncodeData(GetBytes(hash), 0, hash.Length);
        BitcoinAddress address = BitcoinAddress.Create(base58);
        LabelAddress.Text = base58; // address.ToString();*/

        string url = @"https://blockchain.info/q/hashtoaddress/" + hash;
        WebClient wc = new WebClient();
        string addressToPay = wc.DownloadString(url);

        LabelAddress.Text = addressToPay;


        /*Transaction payment = new Transaction();
        payment.Inputs.Add(new TxIn()
        {
            PrevOut = new OutPoint(fundingTransaction.GetHash(), 1)
        });


        var programmingBlockchain =BitcoinAddress.Create(addressToPay);
        payment.Outputs.Add(new TxOut()
        {
            Value = Money.Coins(0.004m),
            ScriptPubKey = programmingBlockchain.ScriptPubKey
        });
        payment.Outputs.Add(new TxOut()
        {
            Value = Money.Coins(0.0059m),
            ScriptPubKey = paymentAddress.ScriptPubKey
        });

        // Now add your feedback!This must be less than 40 bytes, or it will crash the application.
        // Feedback !
        var message = "Thanks ! :)";
        var bytes = Encoding.UTF8.GetBytes(message);
        payment.Outputs.Add(new TxOut()
        {
            Value = Money.Zero,
            ScriptPubKey = TxNullDataTemplate.Instance.GenerateScriptPubKey(bytes)
        });
        Console.WriteLine(payment);   */     
    }

    private bool payUsingMyHashAsUnknownAddress(string hash)
    {
        /*//nb: this will burn the btc forever (they become unspendables) 
        //var programmingBlockchain = BitcoinAddress.Create("1KF8kUVHK42XzgcmJF4Lxz4wcL5WDL97PB");
        var programmingBlockchain = BitcoinAddress.Create(hash);        
        payment.Outputs.Add(new TxOut()
        {
            Value = Money.Coins(0.004m),
            ScriptPubKey = programmingBlockchain.ScriptPubKey
        });
        payment.Outputs.Add(new TxOut()
        {
            Value = Money.Coins(0.0059m),
            ScriptPubKey = paymentAddress.ScriptPubKey
        });*/

        return true;
    }

    private void timeStampTheDoc()
    {
        // Ask the user for the document to timestamp -------------------------------------------------------------------------------------------------
        string filepath = Server.MapPath("~/UPLOADS/imgA1.jpg"); // !!!tmp


        // Hash it ------------------------------------------------------------------------------------------------------------------------------------    
        string hash = string.Empty;
        using (FileStream stream = File.OpenRead(filepath))
        {
            SHA1Managed sha = new SHA1Managed();
            byte[] byteshash = sha.ComputeHash(stream);
            hash = BitConverter.ToString(byteshash).Replace("-", String.Empty);
        }

        // Create a tx with an OP_RETURN output -------------------------------------------------------------------------------------------------------
        Transaction payment_tx = new Transaction();
        var bytes = Encoding.UTF8.GetBytes(hash);
        payment_tx.Outputs.Add(new TxOut()
        {
            Value = Money.Zero,
            ScriptPubKey = TxNullDataTemplate.Instance.GenerateScriptPubKey(bytes)
        });
        Console.WriteLine(payment_tx);


        // Send it to the bitcoin network ----------------------------------------------------------------------------------------------------
        // in BitcoinJ c'est =>  Main.bitcoin.wallet().sendCoins(Wallet.SendRequest.forTx(tx));        
        // Network.Main.        
        // payment_tx.Sign();


        // add the new couple info to the local Database (save in SAFE, StorJ or Ethereum later)

        // Grab the merkle branch when it appears in the blockchain
        // Wait for configurations (3)
        // Save the Proof (structure) to disk
        // Notify the user that it's done 
    }

    private void verifyADoc()
    {
        // Ask the user for the document to verify
        // Load the Proof (structure) from disk
        // Hash the document
        // Verify that this hash is in the OP_RETURN of the tx
        // Verify that the tx is in the Merkle proof
        // Find the block given the hash
        // Verify the Merkle proof
        // Notify the user that the proof is valid and what the timestamp is
    }

    
}
