using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Xml.Linq;

public partial class Admin : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SetCurrentPage();
    }

    private string GetPageName()
    {
        return Request.Url.ToString().Split('/').Last();
    }

    private void SetCurrentPage()
    {
        var pageName = GetPageName();
        if (pageName == "middleton-banner-save.aspx")
        {
            Banner.Attributes["class"] = "active1";
        }
       
        else if (pageName == "middleton-trust-law-save.aspx")
        {
            trustandlaw.Attributes["class"] = "active1";
        }
        else if (pageName == "middleton-our-team.aspx")
        {
            Ourteam.Attributes["class"] = "active1";
        }
        else if (pageName == "middleton-enquiry-details.aspx")
        {
            enquiry.Attributes["class"] = "active1";
        }
        else if (pageName == "middleton-contactus-view.aspx")
        {
            Contact.Attributes["class"] = "active1";
        }
        else if (pageName == "middleton-newsletter.aspx")
        {
            newsletter.Attributes["class"] = "active1";
        }
    }
}
