using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class addcustomer : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection connection = new SqlConnection(@"Data Source=.\SQLEXPRESS;Initial Catalog=Yelenacustomer;Integrated Security=True;Pooling=False");
        SqlCommand insert = new SqlCommand("insert into Customers (CustomerName, ContactName, Addres,City,PostalCode,Country) values (@CustomerName, @ContactName, @Addres,@City,@PostalCode,@Country)", connection);
        insert.Parameters.AddWithValue("@CustomerName", TextName.Text);
        insert.Parameters.AddWithValue("@ContactName", TextContact.Text);
        insert.Parameters.AddWithValue("@Addres", TextAddress.Text);
        insert.Parameters.AddWithValue("@City", TextCity.Text);
        insert.Parameters.AddWithValue("@PostalCode", TextCode.Text);
        insert.Parameters.AddWithValue("@Country", TextCountry.Text);
        try
        {
            connection.Open();
            insert.ExecuteNonQuery();
            
        }
        catch (Exception Err)
        {
            Response.Write(Err.Message);
            
            connection.Close();
        }
    
}

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/default.aspx");
    }
}