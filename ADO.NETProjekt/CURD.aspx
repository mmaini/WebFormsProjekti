﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CURD.aspx.cs" Inherits="ADO.NETProjekt.CURD" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            <asp:Button ID="btnRead" runat="server" OnClick="btnRead_Click" Text="Read" />
            <asp:Button ID="btnInsert" runat="server" OnClick="btnInsert_Click" Text="Insert" />
            <asp:Button ID="btnUpdate" runat="server" OnClick="btnUpdate_Click" Text="Update" />
            <asp:Button ID="btnDelete" runat="server" OnClick="btnDelete_Click" Text="Delete" />
            <br />
            <asp:GridView ID="gridZaposlenici" runat="server">
            </asp:GridView>
            <br />
        </div>
    </form>
</body>
</html>
