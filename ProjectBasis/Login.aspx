<%@ Page Title="Pluto" Language="C#" MasterPageFile="~/FrontEnd.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <script type="text/javascript">
        function Validate() {
    var password = document.getElementById("Password").value;
    var cPassword = document.getElementById("cPassword").value;
    var message = document.getElementById("message");
            if (password.length > 0 && cPassword.length > 0) {
                if (password == cPassword) {
                    message.textContent = "Passwords match";
                    message.style.backgroundColor = "#3ae374";
                }
                else {
                    message.textContent = "Passwords don't match";
                    message.style.backgroundColor = "#ff4d4d";
                }
            }
            else {
                alert("You need to input a password")
            }
    }
    </script>
    <h1>Password Test</h1>
    <p>
    <label for="Password">Password</label>
    <asp:TextBox ID="Password" runat="server" ></asp:TextBox>
    <br />
    <label for="cPassword">Confirm Password</label>
    <asp:TextBox ID="cPassword" runat="server" ></asp:TextBox>
    <br />
        </p>
    <p id="message"></p>
    <asp:Button ID="btnValidate" runat="server" Text="SUBMIT" OnClientClick="javascript:Validate();" />
</asp:Content>

