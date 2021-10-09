<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ParametriziraniUpiti.aspx.cs" Inherits="ADO.NETProjekt.ParametriziraniUpiti" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox ID="tbUnos" runat="server"></asp:TextBox>
            <asp:Button ID="btnTrazi" runat="server" OnClick="btnTrazi_Click" Text="Trazi" />
            <br />
            <br />
            <asp:GridView ID="gridRezultat" runat="server">
            </asp:GridView>
            <br />
        </div>
    </form>
</body>
</html>
