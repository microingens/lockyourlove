<%@ Application Language="C#" %>

<script runat="server">

    void Application_Start(object sender, EventArgs e) 
    {
        // Code qui s’exécute au démarrage de l’application

    }
    
    void Application_End(object sender, EventArgs e) 
    {
        //  Code qui s’exécute à l’arrêt de l’application

    }
        
    void Application_Error(object sender, EventArgs e) 
    { 
        // Code qui s'exécute lorsqu'une erreur non gérée se produit

    }

    void Session_Start(object sender, EventArgs e) 
    {
        // Code qui s’exécute lorsqu’une nouvelle session démarre

    }

    void Session_End(object sender, EventArgs e) 
    {
        // Code qui s’exécute lorsqu’une session se termine. 
        // Remarque : l'événement Session_End est déclenché uniquement lorsque le mode sessionstate
        // a la valeur InProc dans le fichier Web.config. Si le mode de session a la valeur StateServer 
        // ou SQLServer, l’événement n’est pas déclenché.

    }

    protected void Application_PreSendRequestHeaders()
    {
        // pour pouvoir afficher la page etherscan.io/tx/... dans le iframe
        //Response.Headers.Remove("X-Frame-Options");
        //Response.AddHeader("X-Frame-Options", "AllowAll");
    }
       
</script>
