<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Sklep_komputerowy.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Strona_rejestracja</title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 26px;
        }
        .auto-style3 {
            height: 26px;
            width: 420px;
        }
        .auto-style4 {
            width: 420px;
        }
        .auto-style5 {
            height: 26px;
            width: 204px;
        }
        .auto-style6 {
            width: 204px;
        }
        .auto-style7 {
            width: 420px;
            height: 29px;
        }
        .auto-style8 {
            width: 204px;
            height: 29px;
        }
        .auto-style9 {
            height: 29px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <h1 style="text-align: center">REJESTRACJA</h1>
    <div>
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style3" style="text-align: right">Nazwa użytkownika:</td>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBox1" runat="server" Width="200px"></asp:TextBox>
                </td>
                <td class="auto-style2" style="text-align: left">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Nazwa użytkownika jest wymagana" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4" style="text-align: right">E-mail:</td>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBox2" runat="server" Width="200px"></asp:TextBox>
                </td>
                <td style="text-align: left">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="E-mail jest wymagany" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style7" style="text-align: right">Hasło:</td>
                <td class="auto-style8">
                    <asp:TextBox ID="TextBox3" runat="server" TextMode="Password" Width="200px"></asp:TextBox>
                </td>
                <td class="auto-style9" style="text-align: left">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Hasło jest wymagane" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style7" style="text-align: right">Potwierdź hasło:</td>
                <td class="auto-style8">
                    <asp:TextBox ID="TextBox4" runat="server" Width="200px"></asp:TextBox>
                </td>
                <td class="auto-style9" style="text-align: left">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="Hasło nie jest identyczne" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4" style="text-align: right">Kraj:</td>
                <td class="auto-style6">
                    <asp:DropDownList ID="DropDownList1" runat="server" Width="200px">
                        <asp:ListItem>Wybierz kraj</asp:ListItem>
                        <asp:ListItem>Anglia</asp:ListItem>
                        <asp:ListItem>Niemcy</asp:ListItem>
                        <asp:ListItem>Ukraina</asp:ListItem>
                        <asp:ListItem>Czechy</asp:ListItem>
                        <asp:ListItem>Słowacja</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td style="text-align: left">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="DropDownList1" ErrorMessage="Wybierz kraj" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
