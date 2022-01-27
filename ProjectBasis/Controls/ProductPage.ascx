<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ProductPage.ascx.cs" Inherits="_ProductPage" %>
<asp:UpdatePanel ID="ProductPanel" runat="server" class="Intro">
    <ContentTemplate>
        <div id="ProductWrap">
        <asp:Label ID="ProductName" runat="server" Width="400" Font-Size="Larger" Font-Bold="True"/>
            </div>
        <br />
        <div id ="ImageWrap">
        <asp:Image ID="LargeImage" runat="server" ImageUrl="~/Images/1.jpg" Width="400" Height="400" BorderWidth="2" BorderStyle="Solid" BorderColor="Crimson" />
        <br />
        <asp:Label id="Price" runat="server" Width="400" Font-Size="Medium" />
        <br />
        <asp:UpdateProgress ID="UpdateProgress1" runat="server" AssociatedUpdatePanelID ="ProductPanel">
            <ProgressTemplate>
                Please Wait...
            </ProgressTemplate>
        </asp:UpdateProgress>
        &emsp;
        <br />
        <asp:ImageButton ID="Thumbnail1" runat="server" ImageUrl="~/Images/1.jpg" Height ="50" Width="50" BorderWidth="1" BorderColor="Crimson" OnClick="Thumbnail1_Click" />
        &emsp;
        <asp:ImageButton ID="Thumbnail2" runat="server" ImageUrl="~/Images/2.jpg" Height ="50" Width="50" BorderWidth="1" BorderColor="Crimson" OnClick="Thumbnail2_Click" />
        &emsp;
        <asp:ImageButton ID="Thumbnail3" runat="server" ImageUrl="~/Images/3.jpg" Height ="50" Width="50" BorderWidth="1" BorderColor="Crimson" OnClick="Thumbnail3_Click" />
        <br />
        <br />
            </div>
        <div id ="DescriptionWrap">
        <asp:Label ID="Description" runat="server" Width="600" />
            </div>
        <script>
        $(document).ready(function () {
            $('h1').animate({opacity: 1}, 1500 );
            $('#ProductWrap').css('opacity', '0').animate({opacity: 1}, 1500 );
            $('#ImageWrap').css('opacity', '0').animate({ opacity: 1 }, 4000);
            $('#DescriptionWrap').css('opacity', '0').animate({opacity: 1}, 5000 );
        });
    </script>
    </ContentTemplate>
</asp:UpdatePanel>