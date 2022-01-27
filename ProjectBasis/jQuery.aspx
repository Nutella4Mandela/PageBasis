<%@ Page Title="Pluto" Language="C#" MasterPageFile="~/FrontEnd.master" AutoEventWireup="true" CodeFile="jQuery.aspx.cs" Inherits="jQuery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <input id ="Button1" type="button" value="button" />
    <script>
        $(document).ready(function () {
            $('body').css('background-color', 'green')

            $('#Button1').click(function () {
                $('body').css('background-color', 'red')
                    .animate({ width: '100px', height: '800px' })
            });
        });
    </script>
</asp:Content>

