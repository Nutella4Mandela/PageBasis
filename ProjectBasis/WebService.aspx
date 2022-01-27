<%@ Page Title="Pluto" Language="C#" MasterPageFile="~/FrontEnd.master" AutoEventWireup="true" CodeFile="WebService.aspx.cs" Inherits="WebService" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <input id="YourName" type="text" />
    <input id="SayHello" type="button" value="Say Hello" onclick="helloWorld();" />
    <script>
        function helloWorld()
        {
            var yourName = document.getElementById('YourName').value;
            NameService.HelloWorld(yourName, helloWorldCallback);
        }
        function helloWorldCallback(result)
        {
            alert(result);
        }
    </script>
</asp:Content>

