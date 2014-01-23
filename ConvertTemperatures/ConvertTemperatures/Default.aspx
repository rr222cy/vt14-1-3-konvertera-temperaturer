<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ConvertTemperatures.Default" ViewStateMode="Disabled" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Konvertera temperaturer</title>
    <link rel="stylesheet" href="~/Style.css">
</head>
<body>
 <form id="form1" runat="server">
    <div id="container">
        <header id="header">
            <h1>Konvertera temperaturer</h1>
        </header>           
        <main>
            <section>
                <div id="tempTableDiv">
                    <asp:Table ID="TempTable" runat="server" CssClass="tempTablee">
                        <asp:TableRow runat="server" BorderStyle="Solid" BackColor="#333333" ForeColor="White">
                            <asp:TableCell runat="server">ºC</asp:TableCell>
                            <asp:TableCell runat="server">ºF</asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow runat="server" BorderStyle="Solid">
                            <asp:TableCell runat="server">-5</asp:TableCell>
                            <asp:TableCell runat="server">23</asp:TableCell>
                        </asp:TableRow>       
                    </asp:Table>

                </div>

                <asp:Label ID="StartTempLabel" runat="server" Text="Starttemperatur:"></asp:Label><br />
                <asp:TextBox ID="StartTemp" runat="server" CssClass="inputSpacing"></asp:TextBox><br />
                
                <asp:Label ID="StopTempLabel" runat="server" Text="Sluttemperatur:"></asp:Label><br />
                <asp:TextBox ID="StopTemp" runat="server" CssClass="inputSpacing"></asp:TextBox><br />
                
                <asp:Label ID="TempStepLabel" runat="server" Text="Temperatursteg:"></asp:Label><br />
                <asp:TextBox ID="TempStep" runat="server" CssClass="inputSpacing"></asp:TextBox><br />
                <p>Typ av konvertering:</p>
                <asp:RadioButton ID="CToFRadioButton" runat="server"></asp:RadioButton> Celsius till Fahrenheit<br />
                <asp:RadioButton ID="FToCRadioButton" runat="server"></asp:RadioButton> Fahrenheit till Celsius<br />
                <asp:Button ID="ConvertButton" runat="server" Text="Konvertera" CssClass="standardButton" OnClick="ConvertButton_Click"></asp:Button>
            </section>
        </main>
    </div>
</form>
</body>
</html>
