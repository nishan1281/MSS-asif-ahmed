using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class En_PageMaster : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //SetCurrentPage();
    }
    private string GetPageName()
    {
        return Request.Url.ToString().Split('/').Last();
    }
    private void SetCurrentPage()
    {
        var pageName = GetPageName();
        if (pageName == "index.aspx")
        {
            Home.Attributes["class"] = "active1";
        }
        else if (pageName == "about-us.aspx")
        {
            About.Attributes["class"] = "active1";
        }
       
        else if (pageName == "enquiry.aspx")
        {
            Enquiry.Attributes["class"] = "active1";
        }
        else if (pageName == "our-team.aspx")
        {
            Ourteam.Attributes["class"] = "active1";
        }
        else if (pageName == "testimonials.aspx")
        {
            testimonials.Attributes["class"] = "active1";
        }
        else if (pageName == "contact-us.aspx")
        {
            contact.Attributes["class"] = "active1";
        }
    }
}
