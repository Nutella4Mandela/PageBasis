using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ContactUs : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (MessageBox.Text != "www" && MessageBox.Text != "http") {
            HttpCookie cookie = new HttpCookie("Democookie");
            cookie["FirstName"] = fNameBox.Text;
            cookie["LastName"] = lNameBox.Text;
            cookie["EmailAddress"] = AddressBox.Text;
            cookie["Phone"] = PhoneBox.Text;
            cookie["Message"] = MessageBox.Text;
            Response.Cookies.Add(cookie);
            //Redirect the page to other page  
            Response.Redirect("Messages.aspx");
        }
        else
        {

        }
    }
}