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

public partial class En_team_details : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["Connection"].ConnectionString);
    SqlCommand cmd = new SqlCommand();

    protected void Page_Load(object sender, EventArgs e)
    {
        getid .Text= Request.QueryString[0].ToString();
        Disp_ourteam();
    }

    public void Disp_ourteam()
    {
        if (con.State == System.Data.ConnectionState.Open)
            con.Close();
        con.Open();
        cmd.Connection = con;
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = "Sp_Our_Team_Retrive_ById";
        cmd.Parameters.Clear();
        cmd.Parameters.AddWithValue("@Id", getid.Text);
        DataSet dset = new DataSet();
        SqlDataAdapter dpt = new SqlDataAdapter(cmd);
        dpt.Fill(dset);
        out_rep.DataSource = dset;
        out_rep.DataBind();
    }
}