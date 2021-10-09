<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="11-ValidacijskeKontrole.aspx.cs" Inherits="WebFormsPrimjeri._11_ValidacijskeKontrole" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Validacijske kontrole<br />
            <br />
            Korisničko ime:
            <asp:TextBox ID="tbKorisnickoIme" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="tbKorisnickoIme" ErrorMessage="Korisničko ime je obavezno" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
            <br />
            <br />
            DDL je napunjen ručno kroz Edit Items. Opcija Odaberi označava da nije ništa odabrano. Da bi validator znao koja je to opcija<br />
            treba postaviti svojstvo na validatoru InitialValue na Value te opcije (U ovom slučaju 0)<br />
            <br />
            Stručna sprema:
            <asp:DropDownList ID="ddlSprema" runat="server">
                <asp:ListItem Value="0">Odaberi</asp:ListItem>
                <asp:ListItem Value="1">SSS</asp:ListItem>
                <asp:ListItem Value="2">VŠS</asp:ListItem>
                <asp:ListItem Value="3">VSS</asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="ddlSprema" ErrorMessage="Potrebno je odabrati spremu" ForeColor="Red" InitialValue="0" SetFocusOnError="True">*</asp:RequiredFieldValidator>
            <br />
            <br />
            Lozinka:
            <asp:TextBox ID="tbLozinka" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="tbLozinka" ErrorMessage="Lozinka je obavezna" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
            <br />
            <br />
            Ponovi lozinku:
            <asp:TextBox ID="tbPonovljenaLozinka" runat="server"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="tbLozinka" ControlToValidate="tbPonovljenaLozinka" ErrorMessage="Lozinke se ne podudaraju" ForeColor="Red" SetFocusOnError="True">*</asp:CompareValidator>
            <br />
            <br />
            Email adresa:
            <asp:TextBox ID="tbEmail" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="tbEmail" ErrorMessage="Neipravna email adresa" ForeColor="Red" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
&nbsp;<br />
            <br />
            Godine:
            <asp:TextBox ID="tbGodine" runat="server"></asp:TextBox>
            <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="tbGodine" ErrorMessage="Neispravan unos" ForeColor="Red" MaximumValue="100" MinimumValue="0" SetFocusOnError="True" Type="Integer">*</asp:RangeValidator>
            <br />
            <br />
            <asp:Button ID="btnValidate" runat="server" Text="Pošalji" />
            <br />
            <br />
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
            <br />
        </div>
    </form>
</body>
</html>
