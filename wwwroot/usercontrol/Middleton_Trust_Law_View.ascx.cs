using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

public partial class UserControls_Middleton_Trust_Law_View : System.Web.UI.UserControl
{
    Admin fn = new Admin();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            View_Law();
            View_Trust();
        }
    }
    public void View_Law()
    {
        REP_Law.DataSource = fn.View_Law_and_Trust("Law");
        REP_Law.DataBind();
    }
    public void View_Trust()
    {
        Rep_Trust.DataSource = fn.View_Law_and_Trust("Trust");
        Rep_Trust.DataBind();
    }
}
