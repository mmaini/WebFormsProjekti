﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SessionStatePrimjer.aspx.cs" Inherits="StateManagementProjekt.SessionStatePrimjer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lblRezultat" runat="server"></asp:Label>
            <br />
            <br />
            <asp:Button ID="btnHome" runat="server" OnClick="btnHome_Click" Text="Home" />
        </div>
    </form>
</body>
</html>
