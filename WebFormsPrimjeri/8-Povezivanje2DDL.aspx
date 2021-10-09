<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="8-Povezivanje2DDL.aspx.cs" Inherits="WebFormsPrimjeri._8_Povezivanje2DDL" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Prvi DDL je napunjen državama, drugi se treba napuniti gradovima iz odabrane države.<br/>
            <br/>
            <asp:DropDownList ID="ddlDrzava" runat="server" AppendDataBoundItems="True" DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="Id" AutoPostBack="True">
                <asp:ListItem Value="0">Odaberi drzavu</asp:ListItem>
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:OrganizationDbConnectionString %>" SelectCommand="SELECT [Id], [Name] FROM [Country]"></asp:SqlDataSource>
            <br />
            <br />
            Kod konfiguracije Data Source možemo postavljati i uvjete filtriranja.<br />
            U ovom slučaju postavljeno da se dohvate gradovi koji pripadaju državi koja je odabrana u prvom DDL.<br />
            <br />
            (EnableViewState postavljen na False kako ne bi pamtio rezultat od ranije već kod svakog odabira države učitao gradove za tu državu)<br />
            <br />
            <asp:DropDownList ID="ddlGrad" runat="server" AppendDataBoundItems="True" DataSourceID="SqlDataSource2" DataTextField="Name" DataValueField="Id" EnableViewState="False">
                <asp:ListItem Value="0">Odaberi grad</asp:ListItem>
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:OrganizationDbConnectionString %>" SelectCommand="SELECT [Name], [Id] FROM [City] WHERE ([CountryId] = @CountryId)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="ddlDrzava" Name="CountryId" PropertyName="SelectedValue" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
        </div>
    </form>
</body>
</html>
