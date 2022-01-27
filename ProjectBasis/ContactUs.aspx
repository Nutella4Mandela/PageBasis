<%@ Page Title="Pluto" Language="C#" MasterPageFile="FrontEnd.master" AutoEventWireup="true" CodeFile="ContactUs.aspx.cs" Inherits="_ContactUs" %>
<%@ Register TagPrefix="uc" TagName="ContactUs" Src="~/Controls/ContactUs.ascx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="server">
     <h1>Contact Us</h1>
    <uc:ContactUs id="ContactUsUserControl" runat="server" />
</asp:Content>


