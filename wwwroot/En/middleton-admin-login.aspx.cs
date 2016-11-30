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

public partial class En_Middleton_Admin_Login : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["Connection"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    Admin fn = new Admin();

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_submit_Click(object sender, EventArgs e)
    {
        if (UserLogin(txt_Name.Text.ToString(), txt_Password.Text.ToString()))
        {
            Response.Redirect("middleton-banner-save.aspx");
        }
        else
        {
            ScriptManager.RegisterClientScriptBlock(this.Page, this.Page.GetType(), "alert", "alert('Incorrect Username or Password')", true);
        }

    }


    public bool UserLogin(string UName, string Password)
    {
        con.Open();
        cmd.Connection = con;
        cmd.CommandType = System.Data.CommandType.StoredProcedure;
        cmd.CommandText = "sp_User_Login";
        cmd.Parameters.Clear();
        cmd.Parameters.AddWithValue("Uname", UName);
        cmd.Parameters.AddWithValue("Password", Password);
        int a = 0;
        a = int.Parse(cmd.ExecuteScalar().ToString());
        con.Close();
        if (a == 0)
        {
            return false;
        }
        else
        {
            return true; 
        }
        
    }
}
