using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;



public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        PageBody.Attributes.Add("bgcolor", "lightblue");


    }


    public static Customer[] getfromdatabaseCustomer()
    {
        Customer2Entities dbEntities = new Customer2Entities();
        var data = (from item in dbEntities.Customers
                    orderby item.CustomerID
                    select item).Take(6);
        return data.ToArray();
    }

    public static string SaveCustomer(Customer[] data)
    {
        try
        {
            var dbContext = new Customer2Entities();
            var customerList = from dbCustomer in dbContext.Customers select dbCustomer;
            foreach (Customer tcust in data)
            {
                var customer = new Customer();
                if (tcust != null)
                {
                    customer.CustomerID = tcust.CustomerID;
                    customer.CustomerName = tcust.CustomerName ;
                    customer.Address = tcust.Address;
                    customer.City = tcust.City;
                    customer.PostCode = tcust.PostCode;
                    customer.ContactName = tcust.ContactName;
                    customer.Country = tcust.Country;
                    
                }
                Customer cust = (from ct in customerList where ct.CustomerID == customer.CustomerID select ct).FirstOrDefault();
                if (cust == null)
                    dbContext.Customers.Add(customer);
                dbContext.SaveChanges();
            }
            return "Data saved to database!";
        }
        catch (Exception ex)
        {
            return "Error: " + ex.Message;
        }
    }

}