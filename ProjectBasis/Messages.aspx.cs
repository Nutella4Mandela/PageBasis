using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Messages : BasePage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        HttpCookie cookie = Request.Cookies["Democookie"];
        if (cookie != null)
        {
            FirstName.Text = cookie["FirstName"];
            LastName.Text = cookie["LastName"];
            EmailAddress.Text = cookie["EmailAddress"];
            Phone.Text = cookie["Phone"];
            Message.Text = cookie["Message"];
        }
    }
}