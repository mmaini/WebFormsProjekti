<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="2-PostBack.aspx.cs" Inherits="WebFormsPrimjeri._2_PostBack" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            PostBack primjer<br />
&nbsp;- Želimo da se samo kod prvog učitavanja u Textbox upiše &quot;Unesi svoje ime&quot;<br />
            <p>
&nbsp;<asp:TextBox ID="tbTekst" runat="server"></asp:TextBox>
            </p>
            <p>
                <asp:Button ID="btnKlikniMe" runat="server" OnClick="btnKlikniMe_Click" Text="Pošalji" />
            </p>
            <p>
                <asp:Label ID="lblRezultat" runat="server"></asp:Label>
            </p>
            <br />
        </div>
    </form>
</body>
</html>
