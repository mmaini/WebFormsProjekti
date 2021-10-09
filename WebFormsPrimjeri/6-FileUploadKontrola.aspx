<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="6-FileUploadKontrola.aspx.cs" Inherits="WebFormsPrimjeri._6_FileUploadKontrola" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:FileUpload ID="fileUpload" runat="server" />
            <asp:Button ID="btnFile" runat="server" OnClick="btnFile_Click" Text="Kopiraj" />
            <br />
            <asp:Label ID="lblRezultat" runat="server"></asp:Label>
            <br />
            <br />
            Na klik buttona spremamo dohvaćenu datoteku na drugu lokaciju.</div>
    </form>
</body>
</html>
