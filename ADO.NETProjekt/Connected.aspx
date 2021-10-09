<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Connected.aspx.cs" Inherits="ADO.NETProjekt.Connected" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            ID:<asp:TextBox ID="tbId" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Name:<asp:TextBox ID="tbName" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Salary:<asp:TextBox ID="tbSalary" runat="server"></asp:TextBox>
            &nbsp; Gender:<asp:TextBox ID="tbGender" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:GridView ID="gvEmployees" runat="server">
            </asp:GridView>
            <br />
            <asp:Button ID="btnInsert" runat="server" Text="Insert" OnClick="btnInsert_Click" />
            &nbsp; <asp:Button ID="btnDelete" runat="server" Text="Delete" OnClick="btnDelete_Click" />
            &nbsp;<asp:Button ID="btnUpdate" runat="server" Text="Update" OnClick="btnUpdate_Click" />
            &nbsp;<asp:Button ID="btnSearch" runat="server" Text="Search" OnClick="btnSearch_Click" />
            &nbsp;<asp:Button ID="btnDisplay" runat="server" Text="Display" OnClick="btnDisplay_Click" />
            &nbsp;<asp:Button ID="btnTotal" runat="server" Text="Total" OnClick="btnTotal_Click" />
            <br />
            <br />
            <asp:Label ID="lblTotal" runat="server"></asp:Label>
            <br />
            <br />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
