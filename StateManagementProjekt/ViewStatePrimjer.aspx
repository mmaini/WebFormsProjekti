<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewStatePrimjer.aspx.cs" Inherits="StateManagementProjekt.ViewStatePrimjer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Broj poziva:
            <asp:Label ID="lblBrojac" runat="server"></asp:Label>
            <br />
            <br />
            <asp:Button ID="btnKlikniMe" runat="server" OnClick="btnKlikniMe_Click" Text="Klikni me" />
            <br />
            <br />
            <asp:Button ID="btnHome" runat="server" OnClick="btnHome_Click" Text="Home" />
            <br />
        </div>
    </form>
</body>
</html>
