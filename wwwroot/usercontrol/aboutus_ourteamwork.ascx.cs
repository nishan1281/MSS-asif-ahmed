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

public partial class usercontrol_aboutus_ourteamwork : System.Web.UI.UserControl
{
    Admin fn = new Admin();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            View_OurTeam_Work();
        }
    }
    public void View_OurTeam_Work()
    {
        Rep_Our_Team_Work.DataSource = fn.View_Ourteam();
        Rep_Our_Team_Work.DataBind();
    }
    protected void Rep_Our_Team_Work_ItemCommand(object source, RepeaterCommandEventArgs e)
    {

    }
}