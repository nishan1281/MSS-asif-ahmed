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

public partial class usercontrol_index : System.Web.UI.UserControl
{
    SqlConnection con = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["Connection"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    private object icon;

    protected void Page_Load(object sender, EventArgs e)
    {
        Disp_Banner();
        if (!Page.IsPostBack)
        {
            load_news();
        }
    }

    private void load_news()
    {
        try
        {
            if (con.State == System.Data.ConnectionState.Open)
                con.Close();
            con.Open();
            cmd.Connection = con;
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "Sp_newsinfo";
            cmd.Parameters.Clear();
            DataSet dset = new DataSet();
            SqlDataAdapter dpt = new SqlDataAdapter(cmd);
            dpt.Fill(dset);
            int count = dset.Tables[0].Rows.Count;
            rptr_news.DataSource = dset;
            rptr_news.DataBind();
        }
        catch (Exception ex)
        {

        }
    }

    public void Disp_Banner()
    {
        if (con.State == System.Data.ConnectionState.Open)
            con.Close();
        cmd.Connection = con;
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = "Sp_Retrive_Home_Banner";
        cmd.Parameters.Clear();
        DataSet dset = new DataSet();
        SqlDataAdapter dpt = new SqlDataAdapter(cmd);
        dpt.Fill(dset);
        outerRep.DataSource = dset;
        outerRep.DataBind();
    }
    protected void outerRep_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {

        if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
        {
            if (con.State == System.Data.ConnectionState.Open)
                con.Close();
            con.Open();
            HiddenField filenameid = e.Item.FindControl("filenameid") as HiddenField;
            string str = filenameid.Value.ToString();

            DataRowView drv = e.Item.DataItem as DataRowView;
            Repeater innerRep = e.Item.FindControl("innerRep") as Repeater;
            cmd.Connection = con;
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "Sp_Banner_View_Menu";
            cmd.Parameters.Clear();
            cmd.Parameters.AddWithValue("Id", Convert.ToInt32(str));
            //cmd = new SqlCommand("select * from tbl_Category inner join tbl_MasterCategory on tbl_Category.CategoryId=tbl_MasterCategory.Shopping_Id where tbl_MasterCategory.Shopping_Id='" + str + "'", db);
            SqlDataAdapter dpt = new SqlDataAdapter();
            dpt.SelectCommand = cmd;
            DataSet dset = new DataSet();
            dpt.Fill(dset);
            innerRep.DataSource = dset;
            innerRep.DataBind();
        }
    }
}