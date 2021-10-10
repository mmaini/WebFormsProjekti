<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HiddenFieldPrimjer.aspx.cs" Inherits="StateManagementProjekt.HiddenFieldPrimjer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:HiddenField ID="HiddenField1" runat="server" Value="10" />
            <br />
            Hidden field vrijednost: <asp:Label ID="lblHidden" runat="server"></asp:Label>
            <br />
            <br />
            <asp:Button ID="btnHome" runat="server" OnClick="btnHome_Click" Text="Home" />
            <br />
        </div>
    </form>
</body>
</html>
