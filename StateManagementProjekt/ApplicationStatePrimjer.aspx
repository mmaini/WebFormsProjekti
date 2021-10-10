<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ApplicationStatePrimjer.aspx.cs" Inherits="StateManagementProjekt.ApplicationStatePrimjer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        <div>
            <asp:Label ID="lblApplicationState" runat="server"></asp:Label>
            <br />
            <br />
            <asp:Button ID="btnHome" runat="server" OnClick="btnHome_Click" Text="Home" />
        </div>
    </form>
</body>
</html>
