<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Showtable.aspx.cs" Inherits="Showtable" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            position: absolute;
            top: 327px;
            left: 368px;
            z-index: 1;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <asp:Label ID="Label1" runat="server" BackColor="#99CCFF" BorderStyle="Solid" Font-Bold="True" Font-Size="Large" Text="Show all Customers"></asp:Label>
        <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1">
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:YelenacustomerConnectionString %>" SelectCommand="SELECT * FROM [Customers]"></asp:SqlDataSource>
        <p>
            &nbsp;</p>
        <p>
            <asp:Button ID="Button1" runat="server" CssClass="auto-style1" OnClick="Button1_Click" Text="Back to Main" />
        </p>
    </form>
</body>
</html>
