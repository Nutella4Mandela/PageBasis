using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Threading;

public partial class _ProductPage : System.Web.UI.UserControl
{
    public int currentPicture
    {
        get
        {
            return (int)ViewState["ImageNumber"];
        }
        set
        {
            ViewState["ImageNumber"] = value;
        }
    }
    public int Product
    {
        get
        {
            return (int)ViewState["Product"];
        }
        set
        {
            ViewState["Product"] = value;
        }
    }
    protected void Page_LoadComplete(object sender, EventArgs e)
    {

    }

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Product = 10000;
            this.ViewState["ImageNumber"] = 1;
            this.ViewState["Product"] = Product;
        }
        else
        {
            try
            {
                currentPicture = (int)ViewState["ImageNumber"];
                Product = (int)ViewState["ProductNumber"];
                Trace.Write("Postback: " + currentPicture.ToString());
            }
            catch
            {

            }
        }
        loadText();
        string ImageURLLocation = "~/Images/Products/" + Product.ToString() + "_" + currentPicture + ".jpg";
        LargeImage.ImageUrl = ImageURLLocation;
        Thumbnail1.ImageUrl = "~/Images/Products/" + Product.ToString() + "_" + "1.jpg";
        Thumbnail2.ImageUrl = "~/Images/Products/" + Product.ToString() + "_" + "2.jpg";
        Thumbnail3.ImageUrl = "~/Images/Products/" + Product.ToString() + "_" + "3.jpg";
    }

    [System.Security.Permissions.PermissionSet(System.Security.Permissions.SecurityAction.Demand, Name = "FullTrust")]
    protected override void LoadViewState(object savedState)
    {
        if (savedState != null)
        {
            base.LoadViewState(savedState);
        }
    }

    [System.Security.Permissions.PermissionSet(System.Security.Permissions.SecurityAction.Demand, Name = "FullTrust")]
    protected override object SaveViewState()
    {
        object baseState = base.SaveViewState();
        return baseState;
    }

    protected void Thumbnail1_Click(object sender, ImageClickEventArgs e)
    {
        currentPicture = 1;
        LargeImage.ImageUrl = "~/Images/Products/" + Product.ToString() + "_" + "1.jpg";
    }

    protected void Thumbnail2_Click(object sender, ImageClickEventArgs e)
    {
        this.ViewState["ImageNumber"] = 2;
        string ImageURLLocation = "~/Images/Products/" + Product.ToString() + "_" + "2.jpg";
        LargeImage.ImageUrl = ImageURLLocation;
        Thread.Sleep(5000);
    }

    protected void Thumbnail3_Click(object sender, ImageClickEventArgs e)
    {
        this.ViewState["ImageNumber"] = 3;
        string ImageURLLocation = "~/Images/Products/" + Product.ToString() + "_" + "3.jpg";
        LargeImage.ImageUrl = ImageURLLocation;
    }
    protected void loadText()
    {

        using (var reader = new StreamReader(System.Web.HttpContext.Current.Request.PhysicalApplicationPath + "/Images/Products/" + Product.ToString() + "_text.txt"))
        {
            string productName = reader.ReadLine();
            string productPrice = reader.ReadLine();
            string descriptionhasNext = reader.ReadLine();
            string description = descriptionhasNext;
            while (descriptionhasNext != null)
            {
                descriptionhasNext = reader.ReadLine();
                description += "<br/>" + descriptionhasNext;
            }

            ProductName.Text = productName;
            Price.Text = productPrice;
            Description.Text = description;
        }
    }
}

