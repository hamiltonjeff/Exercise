<%@ Page Language="C#" AutoEventWireup="true" CodeFile="addcustomer.aspx.cs" Inherits="addcustomer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 23px;
        }
        .auto-style3 {
            margin-left: 0px;
        }
        .auto-style4 {
            width: 241px;
        }
        .auto-style5 {
            height: 23px;
            width: 241px;
        }
    </style>
</head>
<script>
    </script>



<script src="~/Scripts/jquery-2.1.4.js"></script>
<script src="~/Scripts/bootstrap.min.js"></script>
<script src="~/Scripts/knockout-3.3.0.js"></script>
<script src="~/Scripts/knockout.validation.min.js"></script>

<body>
    <form id="form1" runat="server">
    <div class="auto-style3">
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label1" runat="server" BackColor="#3399FF" BorderStyle="Double" Height="39px" Text="Add New Customer" Width="191px"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label2" runat="server" Text="Customer Name"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextName" runat="server" Width="242px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextName" ErrorMessage="Name is Required" ForeColor="#FF66CC"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label5" runat="server" Text="Contact Name"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextContact" runat="server" Width="249px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextContact" ErrorMessage="Contact Name Required" ForeColor="#FF3399"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label6" runat="server" Text="Address"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="TextAddress" runat="server" Width="253px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextAddress" ErrorMessage="Address is Required" ForeColor="#FF66CC"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label7" runat="server" Text="City"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextCity" runat="server" Width="258px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextCity" ErrorMessage="City is Required" ForeColor="#FF6699"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label8" runat="server" Text="Postal Code"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextCode" runat="server" Width="254px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextCode" ErrorMessage="Postal Code Required" ForeColor="#FF66CC"></asp:RequiredFieldValidator>
                </td>
            </tr>
   
                     <tr>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
   
            
                 <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label9" runat="server" Text="Country"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextCountry" runat="server" Width="244px"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextCountry" ErrorMessage="Country is Required" ForeColor="#FF6699"></asp:RequiredFieldValidator>
                     </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
      <tr>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
               <tr>
                <td class="auto-style4">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Add New Customer" Width="165px" />
                   </td>
                <td>
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Back to Menu" Width="134px" />
                   </td>
            </tr>

                 </table>
    
    </div>
        
    </form>
</body>
</html>
