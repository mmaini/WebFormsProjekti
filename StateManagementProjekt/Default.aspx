<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="StateManagementProjekt.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Linkovi na primjere:<br />
            <a href="ViewStatePrimjer.aspx">ViewState primjer</a><br />
            <a href="HiddenFieldPrimjer.aspx">Hidden Field primjer</a><br />
            <br />
            <hr />
            <br />
            Query string primjer:<br />
            Login:
            <asp:TextBox ID="tbLogin" runat="server"></asp:TextBox>
            &nbsp; Password:
            <asp:TextBox ID="tbPass" runat="server"></asp:TextBox>
            <asp:Button ID="btnLogin" runat="server" OnClick="btnLogin_Click" Text="Login" />
            <br />
            <br />
            <hr />
            <br />
            Cookies primjer:<br />
            Neki tekst:
            <asp:TextBox ID="tbUnos" runat="server"></asp:TextBox>
            <asp:Button ID="btnCookie" runat="server" OnClick="btnCookie_Click" Text="Klikni me" />
            <br />
            <br />
            <hr />
            <br />
            Session state primjer:<br />
            Login:
            <asp:TextBox ID="tbLogin1" runat="server"></asp:TextBox>
            &nbsp; Password:
            <asp:TextBox ID="tbPass1" runat="server"></asp:TextBox>
            <asp:Button ID="btnLogin1" runat="server" OnClick="btnLogin1_Click" Text="Login" />
            <br />
            <br />
            <hr />
            <br />
            Application state primjer:<br />
            Neki tekst:
            <asp:TextBox ID="tbUnos1" runat="server"></asp:TextBox>
            <asp:Button ID="btnApplicationState" runat="server" OnClick="btnApplicationState_Click" Text="Klikni me" />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
