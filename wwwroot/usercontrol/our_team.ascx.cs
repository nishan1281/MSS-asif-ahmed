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
using System.Data.SqlClient;


public partial class usercontrol_our_team : System.Web.UI.UserControl
{
    SqlConnection con = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["Connection"].ConnectionString);
    SqlCommand cmd = new SqlCommand();

    protected void Page_Load(object sender, EventArgs e)
    {
        Disp_ourteam();
        Disp_ourteam2();
    }
    public void Disp_ourteam()
    {
        if (con.State == System.Data.ConnectionState.Open)
            con.Close();
        con.Open();
        cmd.Connection = con;
        cmd.CommandType = CommandType.StoredProcedure;        
        cmd.CommandText = "sp_ourteam_view_top3";
        cmd.Parameters.Clear();
        cmd.Parameters.AddWithValue("@Status", "Active");
        DataSet dset = new DataSet();
        SqlDataAdapter dpt = new SqlDataAdapter(cmd);
        dpt.Fill(dset);
        //rep1.DataSource = dset;
        //rep1.DataBind();
    }

    public void Disp_ourteam2()
    {
        if (con.State == System.Data.ConnectionState.Open)
            con.Close();
        con.Open();
        cmd.Connection = con;
        cmd.CommandType = CommandType.StoredProcedure;
       
        cmd.CommandText = "sp_ourteam_view_other";
        cmd.Parameters.Clear();
        cmd.Parameters.AddWithValue("@Status", "Active");
        DataSet dset = new DataSet();
        SqlDataAdapter dpt = new SqlDataAdapter(cmd);
        dpt.Fill(dset);
        //rep2.DataSource = dset;
        //rep2.DataBind();
    }
}