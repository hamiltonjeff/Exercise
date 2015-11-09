<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Yelena Customer Database</title>

   <script src="Scripts/jquery-2.1.4.min.js"></script>
    <script src="Scripts/knockout-3.3.0.js"></script>
    <script src="Scripts/JavaScriptdriver.js"></script>
    <link href="Scripts/Style.css" rel="stylesheet" />
     
    <style type="text/css">
        .auto-style1 {
            height: 42px;
        }
        .auto-style2 {
            position: absolute;
            top: 84px;
            left: 542px;
            z-index: 1;
            width: 71px;
        }
        .auto-style3 {
            width: 51%;
            height: 88px;
            position: absolute;
            top: 616px;
            left: 476px;
            z-index: 1;
            border: 3px solid #008000;
            background-color: #00FFFF;
        }
    </style>
 

</head>
<body id="PageBody" runat="server">

       <form id="form1" runat="server">
        <span style="align-content:center;margin-bottom:30px;font-size:xx-large;font-weight:bolder;text-decoration:underline;display:block;">Yelena Customer Database<asp:Image ID="Image1" runat="server" BackColor="#66FFFF" BorderStyle="Solid" CssClass="auto-style2" ImageUrl="~/App_Code/images/addnew.jpg" />
           </span>
        &nbsp;<div style="width:25%;float:left;min-width:300px;margin-right:10px;display:inline-block;" >
            <h2>Add New Customer</h2>
        <table style="width:100%;" >
            
            <tr>
                <td>Customer ID :</td>
                <td>
                    <input data-bind="value: CustomerID" /></td> <!--,valueUpdate:'keypress'-->
            
            

            
            </tr>
            <tr>
                <td>CustomerName :</td>
                <td>
                    <input data-bind="value: CustomerName" /></td>
            
            </tr>
            <tr>
                <td>ContactName :</td>
                <td>
                    <input data-bind="value: ContactName" /></td>
            
            </tr>
            
            <tr>
                <td>Address :</td>
                <td>
                    <input data-bind="value: Address" /></td>
            
            </tr>
            <tr>
                <td>City :</td>
                <td>
                    <input data-bind="value: City" /></td>
            
            </tr>
            <tr>
                <td>PostalCode :</td>
                <td>
                    <input data-bind="value: PostCode" /></td>
            
            </tr>
            <tr>
                <td>Country :</td>
                <td>
                    <input data-bind="value: Country" /></td>
            
            </tr>
            
            
            <tr>
                <td colspan="3">
                    &nbsp;</td>
            </tr>

        </table>
            </div>

         <div style="width:70%;float:left;display:inline-block;">
             <h2>All Customers</h2>
        <table style="width:100%;" data-bind="visible: Customer().length > 0" border="0">
            <tr>
                <th class="auto-style1">Customer ID</th>
                <th class="auto-style1">Customer Name</th>
                <th class="auto-style1">Contact Name</th>
                <th class="auto-style1">Address</th>
                <th class="auto-style1">City</th>
                <th class="auto-style1">PostCode</th>
                <th class="auto-style1">Country</th>
                
            </tr>
            <tbody data-bind="foreach: Customer">
                <tr>
                    <td><span data-bind="text: CustomerID" /></td>
                    <td>
                        <input data-bind="value: CustomerName" /></td>
                    <td>
                        <input data-bind="value: ContactName" /></td>
                    <td>
                        <input data-bind="value: Address" /></td>
                                       
                    <td>
                        <input data-bind="value: City" /></td>
                    <td>
                        <input data-bind="value: PostCode" /></td>
                    <td>
                        <input data-bind="value: Country" /></td>
                                       
                </tr>
            </tbody>
        </table>
               </div>
    </form>
       <table class="auto-style3">
           <tr>
               <td>
                    <button type="button" data-bind="click:SaveCustomer">Save Customer Information to Database</button>
                    </td>
               <td>&nbsp;</td>
           </tr>
           <tr>
               <td>
                    <button type="button" data-bind="click:AddCustomer">Add New Customer                      </button>
                     </td>
               <td>&nbsp;</td>
           </tr>
       </table>
</body>
</html>
