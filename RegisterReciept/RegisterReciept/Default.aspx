<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="RegisterReciept.Default" ViewStateMode="Disabled" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Kassakvitto</title>
    <link href="~/Content/Style.css" rel="stylesheet" type="text/css" />
    <script>
        function focus() {
            
            var input = document.getElementById("input");
            input.focus();
            input.select();

        }
</script>
</head>
<body onload="focus()">

    <h1>Kassakvitto</h1>

    <div id="container">

        <form id="form" runat="server" defaultbutton="submit">

            <div>

                <asp:Label ID="info" runat="server" Text="Total köpesumma:" CssClass="info"></asp:Label>
                <asp:TextBox ID="input" runat="server" CssClass="input"></asp:TextBox>
                <asp:RequiredFieldValidator ID="required" runat="server" ErrorMessage="Ange en total köpesumma." ControlToValidate="input" Display="Dynamic" CssClass="error"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="compare" runat="server" ErrorMessage="Ange en total köpesumma större än 0." Display="Dynamic" ControlToValidate="input" Operator="GreaterThan" Type="Double" ValueToCompare="0" CssClass="error"></asp:CompareValidator>

                <asp:Button ID="submit" runat="server" Text="Beräkna rabatt" CssClass="submit" OnClick="submit_Click" />
    
            </div>

        </form>

        <asp:Panel ID="receipt" runat="server" Visible="False">

            <div class="textalign">
                <h2>Splupp</h2>
            
                <p>Tel: 0123-45 67 89</p>
            
                <p>Öppettider 8-23</p>
            </div>

            <div id="receiptNumbers">

                <p>
                <span>Totalt: </span>
                <asp:Label ID="total" runat="server" Text="" CssClass="floatright"></asp:Label>
                </p>

                <p>
                <span>Rabattsats: </span>
                <asp:Label ID="discountRate" runat="server" Text="" CssClass="floatright"></asp:Label>
                </p>

                <p>
                <span>Rabatt: </span>
                <asp:Label ID="discount" runat="server" Text="" CssClass="floatright"></asp:Label>
                </p>

                <p>
                <span>Att betala: </span>
                <asp:Label ID="toPay" runat="server" Text="" CssClass="floatright"></asp:Label>
                </p>

            </div>

            <div class="textalign">

                <p>VÄLKOMMEN ÅTER</p>

            </div>

        </asp:Panel>

    </div>

</body>
</html>
