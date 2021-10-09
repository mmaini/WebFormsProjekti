<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="7-DdlDataBinding.aspx.cs" Inherits="WebFormsPrimjeri._7_DdlDataBinding" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            DropDownList kontrolu povezujemo s podacima u bazi OrganizationDb - tablica Employees. Za name uzimamo kolonu Name, za value kolonu Salary.<br />
            Kada se odabere neki zaposlenik u lblPlaca ispisujemo njegovu plaću.<br />
            <br />
            U DDL je osim podataka iz baze dodana i opcija: Odaberi zaposlenika preko Edit items.<br />
            Kako bi se ta ručno dodana opcija pojavila kod učitavanja s ostalim opcijama iz baze, potrebno je postaviti svojstvo AppendDataBoudsItems na True.<br/>
            <br/>
            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="Salary" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AppendDataBoundItems="True" AutoPostBack="True">
                <asp:ListItem Value="0">Odaberi zaposlenika</asp:ListItem>
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:OrganizationDbConnectionString %>" SelectCommand="SELECT [Name], [Salary] FROM [Employees]"></asp:SqlDataSource>
            <br />
            <asp:Label ID="lblPlaca" runat="server"></asp:Label>
            <br />
            <br />
            <br />
            Važno! Da bi mogli napuniti DDL podacimao potrebno je:<br />
            1. Kreirati bazu<br />
            2. Konfigurati SqlDataSource<br />
            3. Povezati SqlDataSource s kontrolom<br />
            4. Ubaciti neke vrijednosti u tablicu Employees<br />
        </div>
    </form>
</body>
</html>
