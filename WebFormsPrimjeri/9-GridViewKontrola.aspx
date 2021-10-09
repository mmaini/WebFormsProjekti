<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="9-GridViewKontrola.aspx.cs" Inherits="WebFormsPrimjeri._9_GridViewKontrola" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            
            <br/>
            Kada kliknemo na GridView kontrolu u kojoj se nalazi lista zaposlenika, u DetailsView kontroli se pojave detalji za odabranog zaposlenika.<br />
            Kako bi omogućili Update/Delete kod konfiguracije je potrebno odabrati Advanced opciju te selektirati prvi radio button.<br />
            GridView nema Insert opciju.<br />
            <br />
            GridView dohvaća sve podatke iz iz baze.<br />
            Na Edit Items postavimo da se prikazuje samo ime zaposlenika.<br />
&nbsp;<asp:GridView ID="gvZaposlenici" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" DataKeyNames="Id" DataSourceID="SqlDataSource1" GridLines="None" OnSelectedIndexChanged="gvZaposlenici_SelectedIndexChanged">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                </Columns>
                <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
                <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
                <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
                <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#594B9C" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#33276A" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:OrganizationDbConnectionString %>" DeleteCommand="DELETE FROM [Employees] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Employees] ([Name], [Salary], [Gender]) VALUES (@Name, @Salary, @Gender)" SelectCommand="SELECT * FROM [Employees]" UpdateCommand="UPDATE [Employees] SET [Name] = @Name, [Salary] = @Salary, [Gender] = @Gender WHERE [Id] = @Id">
                <DeleteParameters>
                    <asp:Parameter Name="Id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter Name="Salary" Type="Decimal" />
                    <asp:Parameter Name="Gender" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter Name="Salary" Type="Decimal" />
                    <asp:Parameter Name="Gender" Type="String" />
                    <asp:Parameter Name="Id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
            <br />
            DetailsView koristi isti DataSource kao i Grid.<br />
            <br />
            <asp:DetailsView ID="dvPodaciOZaposleniku" runat="server" AutoGenerateRows="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" Height="50px" Width="125px">
                <Fields>
                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="Salary" HeaderText="Salary" SortExpression="Salary" />
                    <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                </Fields>
            </asp:DetailsView>
            <br />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
