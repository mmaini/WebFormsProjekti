<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="5-Kalendar.aspx.cs" Inherits="WebFormsPrimjeri._5_Kalendar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            Kalendar inicijalno nije vidljiv. Kad kliknemo na button kalendar se pojavi. Kada odaberemo neki datum u kalendaru, datum se upiše u TextBox i kalendar ponovno nestane.<br />
            <br />
            

            <asp:TextBox ID="tbDatum" runat="server"></asp:TextBox>    <asp:Button ID="btnDatum" runat="server" Text="Button" OnClick="btnDatum_Click" />

            <br />
            <br />

            <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399" Height="200px" Width="220px" Visible="False" OnSelectionChanged="Calendar1_SelectionChanged">
                <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
                <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                <OtherMonthDayStyle ForeColor="#999999" />
                <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
                <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                <WeekendDayStyle BackColor="#CCCCFF" />
            </asp:Calendar>
            <br />
         
            <br />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
