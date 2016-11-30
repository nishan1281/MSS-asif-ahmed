using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class En_enquiry : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        var page = (Page)HttpContext.Current.Handler;
        page.Title = "Enquiry-Middleton Solicitors";
    }
}