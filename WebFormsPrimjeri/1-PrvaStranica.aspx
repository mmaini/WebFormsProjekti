<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="1-PrvaStranica.aspx.cs" Inherits="WebFormsPrimjeri._1_PrvaStranica" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Hello world!</h1>
            <p>
                Unesi neki tekst:
                <asp:TextBox ID="tbTekst" runat="server"></asp:TextBox>
            </p>
            <p>
                <asp:Button ID="btnKlikniMe" runat="server" OnClick="btnKlikniMe_Click" Text="Pošalji" />
            </p>
            <p>
                <asp:Label ID="LblRezultat" runat="server"></asp:Label>
            </p>
            <p>
                &nbsp;</p>
            <p>
                &nbsp;</p>
        </div>
    </form>
</body>
</html>
