﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ConvertTemperatures.Default" ViewStateMode="Disabled" %>

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

                <%-- Dynamic table for conversion results presentation. --%>
                <div id="tempTableDiv">
                    <asp:Table ID="TempTable" runat="server" CssClass="tempTablee">
                        <asp:TableRow runat="server" BorderStyle="Solid" BackColor="#333333" ForeColor="White">
                            <asp:TableCell runat="server">ºC</asp:TableCell>
                            <asp:TableCell runat="server">ºF</asp:TableCell>
                        </asp:TableRow>       
                    </asp:Table>
                </div>

                <%-- Presents validation summary --%>
                <div>
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="validation-summary-errors" HeaderText="Fel inträffade, åtgärda och testa igen!"></asp:ValidationSummary>
                </div>
                <%-- KVAR ATT GÖRA: VALIDERA INT --%>
                <%-- Input and validation for starting temperature. --%>
                <div>
                <asp:Label ID="StartTempLabel" runat="server" Text="Starttemperatur:" AssociatedControlID="StartTemp"></asp:Label><br />
                <asp:TextBox ID="StartTemp" runat="server" CssClass="inputSpacing" autofocus="autofocus"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Fyll i en starttemp." Text="*" Display="Dynamic" ControlToValidate="StartTemp" CssClass="field-validation-error"></asp:RequiredFieldValidator>
                </div>
                
                <%-- Input and validation for stopping temperature. --%>
                <div>
                <asp:Label ID="StopTempLabel" runat="server" Text="Sluttemperatur:" AssociatedControlID="StopTemp"></asp:Label><br />
                <asp:TextBox ID="StopTemp" runat="server" CssClass="inputSpacing"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Fyll i en sluttemp." Text="*" Display="Dynamic" ControlToValidate="StopTemp" CssClass="field-validation-error"></asp:RequiredFieldValidator>
                </div>
                
                <%-- Input and validation for temperature steps. --%>
                <div>
                <asp:Label ID="TempStepLabel" runat="server" Text="Temperatursteg:" AssociatedControlID="TempStep"></asp:Label><br />
                <asp:TextBox ID="TempStep" runat="server" CssClass="inputSpacing"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Fyll i tempsteg." Text="*" Display="Dynamic" ControlToValidate="TempStep" CssClass="field-validation-error"></asp:RequiredFieldValidator>
                </div>

                <%-- Input and validation for type of temperature conversion. --%>
                <div>
                <asp:Label ID="TempConvertTypeLabel" runat="server" Text="Typ av konvertering:" AssociatedControlID="TempConvertType"></asp:Label>
                <asp:RadioButtonList ID="TempConvertType" runat="server" BorderStyle="None" BorderWidth="0" CssClass="borderless">
                    <asp:ListItem Selected="false">Celsius till Fahrenheit</asp:ListItem>
                    <asp:ListItem>Fahrenheit till Celsius</asp:ListItem>
                </asp:RadioButtonList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Välj en konverteringstyp." Text="*" Display="Dynamic" ControlToValidate="TempConvertType" CssClass="field-validation-error"></asp:RequiredFieldValidator>
                </div>

                <div>
                <asp:Button ID="ConvertButton" runat="server" Text="Konvertera" CssClass="standardButton" OnClick="ConvertButton_Click"></asp:Button>
                </div>
            </section>
        </main>
    </div>
</form>
</body>
</html>
