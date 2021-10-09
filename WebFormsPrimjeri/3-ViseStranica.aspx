<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="3-ViseStranica.aspx.cs" Inherits="WebFormsPrimjeri._3_ViseStranica" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    </head>
<body>
    <form id="form1" runat="server">
        <div>
            Kako se možemo prebaciti na neku drugu stranicu:<br />
            <br />
            1 - Pomoću hyperlink kontrole:
            <asp:HyperLink ID="hlDummyPage" runat="server" NavigateUrl="~/DummyPage.aspx">HyperLink</asp:HyperLink>
            <br />
            <br />
            2 - <a href="DummyPage.aspx">Pomoću alatne trake</a><br />
            <br />
            3 - Pomoću slike (ImageButton) - može se i obična slika dodati i dodijeliti joj link <br />
            <asp:ImageButton ID="imgLink" runat="server" Height="123px" ImageUrl="~/images/sampleImage.jpg" OnClick="imgLink_Click" Width="182px" />
            <br />
            <br />
            <br />
            4 - Drag&nbsp; &amp; Drop stranice <a href="DummyPage.aspx">DummyPage</a><br />
            <br />
            5 - Pomoću Code Behind
            <asp:Button ID="btnDummy" runat="server" OnClick="btnDummy_Click" Text="Klikni me" />
            <br />
            <br />
            6 - Pomoću LinkButton kontrole:
            <asp:LinkButton ID="lbDummy" runat="server" OnClick="lbDummy_Click">LinkButton</asp:LinkButton>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
