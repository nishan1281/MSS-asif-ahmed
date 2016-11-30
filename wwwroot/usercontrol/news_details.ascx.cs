using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class usercontrol_news_details : System.Web.UI.UserControl
{
    SqlConnection con = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["Connection"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {
        int id=0;
        if(!string.IsNullOrEmpty(Request.QueryString["id"]))
         id=Convert.ToInt32(Request.QueryString["id"]);
        if (!Page.IsPostBack)
            load_details(id);
       
    }

    private void load_details(int id)
    {
        try
        {
            if (con.State == System.Data.ConnectionState.Open)
                con.Close();
            con.Open();
            cmd.Connection = con;
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "Sp_fetchnews";
            cmd.Parameters.Clear();
            cmd.Parameters.AddWithValue("@id",id);
            DataSet dset = new DataSet();
            SqlDataAdapter dpt = new SqlDataAdapter(cmd);
            dpt.Fill(dset);
            int count = dset.Tables[0].Rows.Count;
            rptr_news.DataSource = dset;
            rptr_news.DataBind();
        }
        catch(Exception ex)
        {

        }
    }

}