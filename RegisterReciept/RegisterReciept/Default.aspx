<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="RegisterReciept.Default" ViewStateMode="Disabled" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Kassakvitto</title>
    <link href="~/Content/Style.css" rel="stylesheet" type="text/css" />
</head>
<body>

    <h1>Kassakvitto</h1>

    <div id="container">

        <form id="form" runat="server" defaultbutton="Submit">
            <div>

                <asp:Label ID="Info" runat="server" Text="Total köpesumma:" CssClass="info"></asp:Label>
                <asp:TextBox ID="Input" runat="server" CssClass="input"></asp:TextBox>

                <asp:Button ID="Submit" runat="server" Text="Beräkna rabatt" OnClick="Submit_Click" CssClass="submit" />
    
            </div>
        </form>

    </div>
</body>
</html>
