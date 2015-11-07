<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 80%;
            height: 184px;
            position: absolute;
            top: 271px;
            left: 150px;
            z-index: 1;
            border-left-style: solid;
            border-left-width: 2px;
            border-right: 2px solid #C0C0C0;
            border-top-style: solid;
            border-top-width: 2px;
            border-bottom: 2px solid #C0C0C0;
            background-color: #00FFFF;
        }
        .auto-style2 {
            height: 30px;
        }
        .auto-style3 {
            position: absolute;
            top: 81px;
            left: 143px;
            z-index: 1;
        }
        .auto-style4 {
            height: 84px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <asp:Label ID="Label1" runat="server" BackColor="#33CCFF" BorderStyle="Double" CssClass="auto-style3" Font-Bold="True" Font-Italic="True" Font-Size="Large" Height="80px" Text="Yelena Database " Width="534px"></asp:Label>
        <table align="center" class="auto-style1">
            <tr>
                <td class="auto-style2">
                    <asp:Button ID="Button1" runat="server" Height="55px" OnClick="Button1_Click" Text="List  All Customer" Width="408px" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Button ID="Button2" runat="server" Height="59px" OnClick="Button2_Click" Text="Add New Customer" Width="409px" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
