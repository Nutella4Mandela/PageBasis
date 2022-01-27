<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ContactUs.ascx.cs" Inherits="ContactUs" %>
<style type="text/css">
    .auto-style1 {
        width: 100%;
    }
    .auto-style2 {
        height: 23px;
    }
</style>
<div id="Wrapper">
<table class="auto-style1">
    <tr>
        <td class="ContactUs" colspan="3" >Use the contact form to to let us know if there is anything you need!</td>
    </tr>
    <tr>
        <td class="ContactUs">First Name</td>
        <td>
            <asp:TextBox ID="fNameBox" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" CssClass="ErrorMessage" ErrorMessage="Enter Your First Name" ControlToValidate ="fNameBox"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="ContactUs">Last Name</td>
        <td id="LNameWrapper">
            <asp:TextBox ID="lNameBox" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" CssClass="ErrorMessage" ErrorMessage="Enter Your Last Name" ControlToValidate ="lNameBox"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="ContactUs">Email Address</td>
        <td>
            <asp:TextBox ID="AddressBox" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:RegularExpressionValidator ID="RequiredFieldValidator3" runat="server" CssClass="ErrorMessage" ErrorMessage="Enter a valid Email Address" ControlToValidate ="AddressBox" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" CssClass="ErrorMessage" ErrorMessage="Enter your Email Address" ControlToValidate ="AddressBox"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class ="ContactUs">Phone Number</td>
        <td>
            <asp:TextBox ID="PhoneBox" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:RegularExpressionValidator ID="RequiredFieldValidator4" runat="server" CssClass="ErrorMessage" ErrorMessage="Enter a valid Phone Number" ControlToValidate="PhoneBox" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}"></asp:RegularExpressionValidator>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" CssClass="ErrorMessage" ErrorMessage="Enter your Phone Number" ControlToValidate ="PhoneBox"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="ContactUs">Message</td>
        <td>
            <asp:TextBox ID="MessageBox" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" CssClass="ErrorMessage" ErrorMessage="www and http are not allowed" ControlToValidate="MessageBox"></asp:RegularExpressionValidator>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" CssClass="ErrorMessage" ErrorMessage="Don't you have something to say?" ControlToValidate ="MessageBox"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>
            <asp:Button ID="Send" runat="server" OnClick="Button1_Click" Text="Send" />
        </td>
        <td>&nbsp;</td>
    </tr>
</table>
    <script src="main.js"></script>
    </div>

