<%@ Page Title="Web Services Demo" Language="C#" MasterPageFile="~/MasterPages/Frontend.master" 
    AutoEventWireup="true" CodeFile="WebServices.aspx.cs" 
    Inherits="Demos_WebServices" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">

    <asp:ScriptManagerProxy ID="ScriptManagerProxy1" runat="server">
    <Services>
        <asp:ServiceReference Path="~/WebServices/NameService.asmx" />
        <asp:ServiceReference Path="~/WebServices/HelloService.svc" />
    </Services>
</asp:ScriptManagerProxy>
    <input id="YourName" type="text" />
    <input id="SayHello" type="button" value="Say Hello" />
    <script type="text/javascript">


        function HelloWorld() {

//            var yourName = $get('YourName').value;
//            NameService.HelloWorld(yourName, HelloWorldCallback);
            HelloService.HelloAjaxWCF(HelloWorldCallback);

        }
        function HelloWorldCallback(result) {
            alert(result);
        }

        $addHandler($get('SayHello'), 'click', HelloWorld);
    </script>
</asp:Content>


