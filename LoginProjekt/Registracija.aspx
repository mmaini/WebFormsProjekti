﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registracija.aspx.cs" Inherits="LoginProjekt.Registracija" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h4>Registriraj se</h4>
            <asp:Label ID="Label1" runat="server" Text="Korisničko ime:"></asp:Label>
            <asp:TextBox ID="tb_kime" runat="server"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Korisničko ime je obavezan podatak!" ForeColor="Red" ControlToValidate="tb_kime"></asp:RequiredFieldValidator><br />
            <asp:Label ID="Label4" runat="server" Text="Puno ime:"></asp:Label>
            <asp:TextBox ID="tb_punoime" runat="server"></asp:TextBox><br />
            <asp:Label ID="Label2" runat="server" Text="Lozinka:"></asp:Label>
            <asp:TextBox ID="tb_lozinka" runat="server" TextMode="Password"></asp:TextBox><br />
            <asp:Label ID="Label3" runat="server" Text="Ponovljena lozinka:"></asp:Label>
            <asp:TextBox ID="tb_lozinka2" runat="server" TextMode="Password"></asp:TextBox><br />
            <asp:Button ID="Button1" runat="server" Text="Registriraj" OnClick="Button1_Click" />

        </div>
    </form>
</body>
</html>
