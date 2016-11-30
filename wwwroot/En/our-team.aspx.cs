using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class En_our_team : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        var page = (Page)HttpContext.Current.Handler;
        page.Title = "Our Team-Middleton Solicitors";
    }
}