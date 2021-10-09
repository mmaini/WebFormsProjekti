<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Disconnected.aspx.cs" Inherits="ADO.NETProjekt.Disconnected" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="gvEmployees" runat="server">
            </asp:GridView>
            <br />
            &nbsp;<asp:Button ID="btnDisplay" runat="server" Text="Display" OnClick="btnDisplay_Click" Width="70px" />
            &nbsp;<br />
            &nbsp;&nbsp;&nbsp;<br />
        </div>
    </form>
</body>
</html>
