/// <reference path="jquery-2.1.4.js" />
/// <reference path="knockout-3.3.0.js" />


function Customer(data) {
    this.CustomerID = ko.observable(data.CustomerID);
    this.CustomerName = ko.observable(data.CustomerName);
    this.ContactName = ko.observable(data.ContactName);
    this.Address = ko.observable(data.Address);
    this.City = ko.observable(data.City);
    this.PostCode = ko.observable(data.PostCode);
    this.Country = ko.observable(data.Country);
    

}


function CustomerViewModel() {
    var self = this;
    self.Customer = ko.observableArray([]);
    self.CustomerID = ko.observable();
    self.CustomerName = ko.observable();
    self.Address = ko.observable();
    self.City = ko.observable();
    self.PostCode = ko.observable();
    self.Country = ko.observable();
     
    
    


    self.AddCustomer = function () {
        self.Customer.push(new Customer({
            CustomerID: self.CustomerID(),
            CustomerName: self.CustomerName(),
            ContactName: self.ContactName(),
            Address: self.Address(),
            City: self.City(),
            PostCode: self.PostCode(),
            Country:self.Country()
                      
            
        }));
        self.CustomerID(""),
        self.CustomerName(""),
        self.ContactName(""),
        self.Address(""),
        self.City(""),
        self.PostCode(""),
        self.Country("")
           
       
    };

    

    self.SaveCustomer = function () {
        $.ajax({
            type: "POST",
            url: 'Default.aspx/SaveCustomer',
            data: ko.toJSON({ data: self.Customer }),
            contentType: "application/json; charset=utf-8",
            success: function (result) {
                alert(result.d);
            },
            error: function (err) {
                alert(err.status + " - " + err.statusText);
            }
        });
    };

    $.ajax({
        type: "POST",
        url: 'Default.aspx/getfromdatabaseCustomer',
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (results) {
            var customer = $.map(results.d, function (item) {
                return new Customer(item)
            });
            self.Customer(customer);
        },
        error: function (err) {
            alert(err.status + " - " + err.statusText);
        }
    })
}

$(document).ready(function () {
    ko.applyBindings(new CustomerViewModel());
});
