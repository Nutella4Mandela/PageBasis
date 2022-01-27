<%@ Page Title="Pluto" Language="C#" MasterPageFile="~/FrontEnd.master" AutoEventWireup="true" CodeFile="ProductPage.aspx.cs" Inherits="ProductPage" %>
<%@ Register TagPrefix="uc" TagName="ProductPage" Src="~/Controls/ProductPage.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>Product Page</h1>
    <div><uc:ProductPage id="ProductPageUserControl" runat="server" /></div>
    <p class="Intro"></p>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server"></asp:UpdatePanel>
</asp:Content>

