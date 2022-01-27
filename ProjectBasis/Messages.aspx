<%@ Page Title="Pluto" Language="C#" MasterPageFile="FrontEnd.master" AutoEventWireup="true" CodeFile="Messages.aspx.cs" Inherits="_Messages" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="server">
    <h1>Messages</h1>
    <p> First Name: 
        <asp:Label ID="FirstName" runat="server"></asp:Label><br />
        Last Name: 
    <asp:Label ID="LastName" runat="server"></asp:Label><br />
        Email Address: 
    <asp:Label ID="EmailAddress" runat="server"></asp:Label><br />
        Phone Number: 
    <asp:Label ID="Phone" runat="server"></asp:Label><br />
        Message: 
    <asp:Label ID="Message" runat="server"></asp:Label></p>
</asp:Content>

