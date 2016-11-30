using System;
using System.Data;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;


public class Admin
{
    SqlConnection con = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["Connection"].ConnectionString);
    SqlCommand cmd = new SqlCommand();

	public Admin()
	{
		
	}
    // Connecting the Database
    public void connect()
    {
        if (con.State == System.Data.ConnectionState.Open)
            con.Close();
        con.Open();
    }
    // Disconnecting from Database
    public void Disconnect()
    {
        con.Close();
    }
    //Banner Save
    public void Banner_Save(string Banner_name, string Banner_image, string username, string status,string Menu, string LinkPage)
    {
        connect();
        cmd.Connection = con;
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = "Sp_Banner_Save";
        cmd.Parameters.Clear();
        cmd.Parameters.AddWithValue("Banner_Name", Banner_name);
        cmd.Parameters.AddWithValue("Banner_Image", Banner_image);
        cmd.Parameters.AddWithValue("Created_On", System.DateTime.Today.ToString());
        cmd.Parameters.AddWithValue("Created_By", username);
        cmd.Parameters.AddWithValue("Modified_On", System.DateTime.Today.ToString());
        cmd.Parameters.AddWithValue("Modified_By", username);
        cmd.Parameters.AddWithValue("Status", status);
        cmd.Parameters.AddWithValue("Menu", Menu);
        cmd.Parameters.AddWithValue("LinkPage", LinkPage);
        cmd.ExecuteNonQuery();
        Disconnect();
    }
    //Specialist Area Save
    public void Spc_Area_Save(string Title, string Image, string SDesc, string Desc, string username, string Status)        
    {
        connect();
        cmd.Connection = con;
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = "Sp_Specialist_Area_Save";
        cmd.Parameters.Clear();
        cmd.Parameters.AddWithValue("Title", Title);
        cmd.Parameters.AddWithValue("Image", Image);
        cmd.Parameters.AddWithValue("Short_Desc", SDesc);
        cmd.Parameters.AddWithValue("Description", Desc);
        cmd.Parameters.AddWithValue("Created_On", System.DateTime.Today.ToString());
        cmd.Parameters.AddWithValue("Created_By", username);
        cmd.Parameters.AddWithValue("Modified_On", System.DateTime.Today.ToString());
        cmd.Parameters.AddWithValue("Modified_By", username);
        cmd.Parameters.AddWithValue("Status", Status);
        cmd.ExecuteNonQuery();
        Disconnect();
    }
    //Specialist Area Save
    public void Our_Team_Save(string Title, string Image, string SDesc, string Desc, string username, string Status,string Contact,string Name)
    {
        connect();
        cmd.Connection = con;
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = "Sp_Our_Team_Save";
        cmd.Parameters.Clear();
        cmd.Parameters.AddWithValue("Title", Title);
        cmd.Parameters.AddWithValue("Image", Image);
        cmd.Parameters.AddWithValue("Short_Desc", SDesc);
        cmd.Parameters.AddWithValue("Description", Desc);
        cmd.Parameters.AddWithValue("Created_On", System.DateTime.Today.ToString());
        cmd.Parameters.AddWithValue("Created_By", username);
        cmd.Parameters.AddWithValue("Modified_On", System.DateTime.Today.ToString());
        cmd.Parameters.AddWithValue("Modified_By", username);
        cmd.Parameters.AddWithValue("Status", Status);
        cmd.Parameters.AddWithValue("Contact", Contact);
        cmd.Parameters.AddWithValue("Name", Name);
        cmd.ExecuteNonQuery();
        Disconnect();
    }
    //Trust Law Save
    public void Trust_Law_Save(string Title, string Name,string Image,string sDesc,string Desc, string username, string status)
    {
        connect();
        cmd.Connection = con;
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = "Sp_Trust_Law_Save";
        cmd.Parameters.Clear();
        cmd.Parameters.AddWithValue("Title", Title);
        cmd.Parameters.AddWithValue("Name", Name);
        cmd.Parameters.AddWithValue("Image", Image);
        cmd.Parameters.AddWithValue("Short_Desc", sDesc);
        cmd.Parameters.AddWithValue("Description", Desc);
        cmd.Parameters.AddWithValue("Created_On", System.DateTime.Today.ToString());
        cmd.Parameters.AddWithValue("Created_By", username);
        cmd.Parameters.AddWithValue("Modified_On", System.DateTime.Today.ToString());
        cmd.Parameters.AddWithValue("Modified_By", username);
        cmd.Parameters.AddWithValue("Status", status);
        cmd.ExecuteNonQuery();
        Disconnect();
    }
    //Contact us Save
    public void Contactus_Save(string Name, string Phone, string Email, string Subject, string Message, string username, string status)
    {
        connect();
        cmd.Connection = con;
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = "Sp_Contactus_Save";
        cmd.Parameters.Clear();
        cmd.Parameters.AddWithValue("Name", Name);
        cmd.Parameters.AddWithValue("Phone", Phone);
        cmd.Parameters.AddWithValue("Email", Email);
        cmd.Parameters.AddWithValue("Subject", Subject);
        cmd.Parameters.AddWithValue("Message", Message);
        cmd.Parameters.AddWithValue("Created_On", System.DateTime.Today.ToString());
        cmd.Parameters.AddWithValue("Created_By", username);
        cmd.Parameters.AddWithValue("Modified_On", System.DateTime.Today.ToString());
        cmd.Parameters.AddWithValue("Modified_By", username);
        cmd.Parameters.AddWithValue("Status", status);
        cmd.ExecuteNonQuery();
        Disconnect();
    }
    //Enquiry Save
    public void Enquiry_Save(string Name, string Phone, string Email, string Message, string username, string status)
    {
        connect();
        cmd.Connection = con;
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = "Sp_Enquiry_Save";
        cmd.Parameters.Clear();
        cmd.Parameters.AddWithValue("Name", Name);
        cmd.Parameters.AddWithValue("Phone", Phone);
        cmd.Parameters.AddWithValue("Email", Email);
        cmd.Parameters.AddWithValue("Message", Message);
        cmd.Parameters.AddWithValue("Created_On", System.DateTime.Today.ToString());
        cmd.Parameters.AddWithValue("Created_By", username);
        cmd.Parameters.AddWithValue("Modified_On", System.DateTime.Today.ToString());
        cmd.Parameters.AddWithValue("Modified_By", username);
        cmd.Parameters.AddWithValue("Status", status);
        cmd.ExecuteNonQuery();
        Disconnect();
    }
    //Newsletter Save
    public void Newsletter_Save(string Name, string Email, string username, string status)
    {
        connect();
        cmd.Connection = con;
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = "Sp_Newsletter_Save";
        cmd.Parameters.Clear();
        cmd.Parameters.AddWithValue("Name", Name);
        cmd.Parameters.AddWithValue("Email", Email);
        cmd.Parameters.AddWithValue("Created_On", System.DateTime.Today.ToString());
        cmd.Parameters.AddWithValue("Created_By", username);
        cmd.Parameters.AddWithValue("Modified_On", System.DateTime.Today.ToString());
        cmd.Parameters.AddWithValue("Modified_By", username);
        cmd.Parameters.AddWithValue("Status", status);
        cmd.ExecuteNonQuery();
        Disconnect();
    }
    //View Law and Trust
    public DataSet View_Law_and_Trust(string Title)
    {
        connect();
        cmd.Connection = con;
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = "Sp_Trust_Law_Retrive";
        cmd.Parameters.Clear();
        cmd.Parameters.AddWithValue("Title", Title);
        cmd.Parameters.AddWithValue("Status", "Active");
        DataSet dset = new DataSet();
        SqlDataAdapter dpt = new SqlDataAdapter(cmd);
        dpt.Fill(dset);
        return dset;
    }
    //View Specialist area
    public DataSet View_Specialist_Area()
    {
        connect();
        cmd.Connection = con;
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = "Sp_Specialist_Area_Retrive";
        cmd.Parameters.Clear();
        cmd.Parameters.AddWithValue("Status", "Active");
        DataSet dset = new DataSet();
        SqlDataAdapter dpt = new SqlDataAdapter(cmd);
        dpt.Fill(dset);
        return dset;
    }
    //View Our Team
    public DataSet View_Ourteam()
    {
        connect();
        cmd.Connection = con;
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = "Sp_Our_Team_Retrive";
        cmd.Parameters.Clear();
        cmd.Parameters.AddWithValue("Status", "Active");
        DataSet dset = new DataSet();
        SqlDataAdapter dpt = new SqlDataAdapter(cmd);
        dpt.Fill(dset);
        return dset;
    }
    //Update with Image
    public void Banner_Update(string Banner_name, string Banner_image, string username, string status, int Id,string Menu,string LinkPage)
    {
        connect();
        cmd.Connection = con;
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = "Sp_Banner_Update";
        cmd.Parameters.Clear();
        cmd.Parameters.AddWithValue("Id", Id);
        cmd.Parameters.AddWithValue("Banner_Name", Banner_name);
        cmd.Parameters.AddWithValue("Banner_Image", Banner_image);
        cmd.Parameters.AddWithValue("Modified_On", System.DateTime.Today.ToString());
        cmd.Parameters.AddWithValue("Modified_By", username);
        cmd.Parameters.AddWithValue("Status", status);
        cmd.Parameters.AddWithValue("Menu", Menu);
        cmd.Parameters.AddWithValue("LinkPage", LinkPage);
        cmd.ExecuteNonQuery();
        Disconnect();
    }
    //Update without Image
    public void Banner_Update_Noimage(string Banner_name, string username, string status, int Id,string Menu,string LinkPage)
    {
        connect();
        cmd.Connection = con;
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = "Sp_Banner_Update_noimage";
        cmd.Parameters.Clear();
        cmd.Parameters.AddWithValue("Id", Id);
        cmd.Parameters.AddWithValue("Banner_Name", Banner_name);
        cmd.Parameters.AddWithValue("Modified_On", System.DateTime.Today.ToString());
        cmd.Parameters.AddWithValue("Modified_By", username);
        cmd.Parameters.AddWithValue("Status", status);
        cmd.Parameters.AddWithValue("Menu", Menu);
        cmd.Parameters.AddWithValue("LinkPage", LinkPage);
        cmd.ExecuteNonQuery();
        Disconnect();
    }
    //Update with Image
    public void Spe_Area_Update(string Title, string Image,string Short_Desc,string Description, string username, string status, int Id)
    {
        connect();
        cmd.Connection = con;
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = "Sp_Spe_Area_Update";
        cmd.Parameters.Clear();
        cmd.Parameters.AddWithValue("Id", Id);
        cmd.Parameters.AddWithValue("Title", Title);
        cmd.Parameters.AddWithValue("Image", Image);
        cmd.Parameters.AddWithValue("Short_Desc",Short_Desc);
        cmd.Parameters.AddWithValue("Description", Description);
        cmd.Parameters.AddWithValue("Modified_On", System.DateTime.Today.ToString());
        cmd.Parameters.AddWithValue("Modified_By", username);
        cmd.Parameters.AddWithValue("Status", status);
        cmd.ExecuteNonQuery();
        Disconnect();
    }
    //Update without Image
    public void Spe_Area_Update_Noimage(string Title, string Short_Desc, string Description, string username, string status, int Id)
    {
        connect();
        cmd.Connection = con;
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = "Sp_Spe_Area_Update_noimage";
        cmd.Parameters.Clear();
        cmd.Parameters.AddWithValue("Id", Id);
        cmd.Parameters.AddWithValue("Title", Title);
        cmd.Parameters.AddWithValue("Short_Desc", Short_Desc);
        cmd.Parameters.AddWithValue("Description", Description);
        cmd.Parameters.AddWithValue("Modified_On", System.DateTime.Today.ToString());
        cmd.Parameters.AddWithValue("Modified_By", username);
        cmd.Parameters.AddWithValue("Status", status);
        cmd.ExecuteNonQuery();
        Disconnect();
    }
    //Update with Image
    public void Our_Team_Update(string Title, string Image, string Short_Desc, string Description, string username, string status, int Id,string Contact,string Name)
    {
        connect();
        cmd.Connection = con;
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = "Sp_Our_Team_Update";
        cmd.Parameters.Clear();
        cmd.Parameters.AddWithValue("Id", Id);
        cmd.Parameters.AddWithValue("Title", Title);
        cmd.Parameters.AddWithValue("Image", Image);
        cmd.Parameters.AddWithValue("Short_Desc", Short_Desc);
        cmd.Parameters.AddWithValue("Description", Description);
        cmd.Parameters.AddWithValue("Modified_On", System.DateTime.Today.ToString());
        cmd.Parameters.AddWithValue("Modified_By", username);
        cmd.Parameters.AddWithValue("Status", status);
        cmd.Parameters.AddWithValue("Contact", Contact);
        cmd.Parameters.AddWithValue("Name", Name);
        cmd.ExecuteNonQuery();
        Disconnect();
    }
    //Update without Image
    public void Our_Team_Update_Noimage(string Title, string Short_Desc, string Description, string username, string status, int Id,string Contact,string Name)
    {
        connect();
        cmd.Connection = con;
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = "Sp_Our_Team_Update_noimage";
        cmd.Parameters.Clear();
        cmd.Parameters.AddWithValue("Id", Id);
        cmd.Parameters.AddWithValue("Title", Title);
        cmd.Parameters.AddWithValue("Short_Desc", Short_Desc);
        cmd.Parameters.AddWithValue("Description", Description);
        cmd.Parameters.AddWithValue("Modified_On", System.DateTime.Today.ToString());
        cmd.Parameters.AddWithValue("Modified_By", username);
        cmd.Parameters.AddWithValue("Status", status);
        cmd.Parameters.AddWithValue("Contact", Contact);
        cmd.Parameters.AddWithValue("Name", Name);
        cmd.ExecuteNonQuery();
        Disconnect();
    }
    //Update with Image
    public void Trust_Law_Update(string Title,string Name, string Image, string Short_Desc, string Description, string username, string status, int Id)
    {
        connect();
        cmd.Connection = con;
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = "Sp_Trust_Law_Update";
        cmd.Parameters.Clear();
        cmd.Parameters.AddWithValue("Id", Id);
        cmd.Parameters.AddWithValue("Title", Title);
        cmd.Parameters.AddWithValue("Name", Name);
        cmd.Parameters.AddWithValue("Image", Image);
        cmd.Parameters.AddWithValue("Short_Desc", Short_Desc);
        cmd.Parameters.AddWithValue("Description", Description);
        cmd.Parameters.AddWithValue("Modified_On", System.DateTime.Today.ToString());
        cmd.Parameters.AddWithValue("Modified_By", username);
        cmd.Parameters.AddWithValue("Status", status);
        cmd.ExecuteNonQuery();
        Disconnect();
    }
    //Update without Image
    public void Trust_Law_Update_Noimage(string Title, string Name, string Short_Desc, string Description, string username, string status, int Id)
    {
        connect();
        cmd.Connection = con;
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = "Sp_Trust_Law_Update_noimage";
        cmd.Parameters.Clear();
        cmd.Parameters.AddWithValue("Id", Id);
        cmd.Parameters.AddWithValue("Title", Title);
        cmd.Parameters.AddWithValue("Name", Name);
        cmd.Parameters.AddWithValue("Short_Desc", Short_Desc);
        cmd.Parameters.AddWithValue("Description", Description);
        cmd.Parameters.AddWithValue("Modified_On", System.DateTime.Today.ToString());
        cmd.Parameters.AddWithValue("Modified_By", username);
        cmd.Parameters.AddWithValue("Status", status);
        cmd.ExecuteNonQuery();
        Disconnect();
    }
    //Delete fun
    public void Delete(int id, string stored_procedure)
    {
        connect();
        SqlCommand cmd_delete = new SqlCommand();
        cmd_delete.Connection = con;
        cmd_delete.CommandType = CommandType.StoredProcedure;
        cmd_delete.CommandText = stored_procedure;
        cmd_delete.Parameters.Clear();
        cmd_delete.Parameters.AddWithValue("Id", id);
        cmd_delete.ExecuteNonQuery();
        Disconnect();
    }
    //Publish
    public void Publish(int id, string stored_procedure, string status)
    {
        connect();
        SqlCommand cmd_delete = new SqlCommand();
        cmd_delete.Connection = con;
        cmd_delete.CommandType = CommandType.StoredProcedure;
        cmd_delete.CommandText = stored_procedure;
        cmd_delete.Parameters.Clear();
        cmd_delete.Parameters.AddWithValue("id", id);
        cmd_delete.Parameters.AddWithValue("Status", status);
        cmd_delete.ExecuteNonQuery();
        Disconnect();
    }

    //Home Banner
    public DataSet Banner_View1()
    {
        connect();
        cmd.Connection = con;
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = "Sp_Banner_Retrive";
        cmd.Parameters.Clear();
        DataSet dset = new DataSet();
        SqlDataAdapter dpt = new SqlDataAdapter(cmd);
        dpt.Fill(dset);
        return dset;        
    }


    public bool insert_news(string title,string description,string imgpath1,string imgpath2,string imgpath3,string news_status)
    {
        bool status = false;
        try
        {
            status = true;
            connect();
            cmd.Connection = con;
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "Sp_SaveNews";
            cmd.Parameters.Clear();
            cmd.Parameters.AddWithValue("@title", title);
            cmd.Parameters.AddWithValue("@description", description);
            cmd.Parameters.AddWithValue("@imgpath1", imgpath1);
            cmd.Parameters.AddWithValue("@imgpath2", imgpath2);
            cmd.Parameters.AddWithValue("@imgpath3", imgpath3);
            cmd.Parameters.AddWithValue("@status", news_status);
            cmd.Parameters.AddWithValue("@createdby", "");
            cmd.Parameters.AddWithValue("@createdon", DateTime.Now.ToString());
            cmd.ExecuteNonQuery();
            status = true;
        }
        catch(Exception ex)
        {
            status = false;
        }
        return status;
    }

    public bool update_news(string id,string title,string description,string imgpath1,string imgpath2,string imgpath3,string news_status)
    {
       
        bool status = false;
        try
        {
           
            status = true;
            connect();
            cmd.Connection = con;
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "Sp_ChangeNews";
            cmd.Parameters.Clear();
            cmd.Parameters.AddWithValue("@id",Int32.Parse(id));
            cmd.Parameters.AddWithValue("@title", title);
            cmd.Parameters.AddWithValue("@description", description);
            cmd.Parameters.AddWithValue("@imgpath1", imgpath1);
            cmd.Parameters.AddWithValue("@imgpath2", imgpath2);
            cmd.Parameters.AddWithValue("@imgpath3", imgpath3);
            cmd.Parameters.AddWithValue("@status", news_status);
            cmd.Parameters.AddWithValue("@createdby", "");
            cmd.Parameters.AddWithValue("@createdon", DateTime.Now.ToString());
            cmd.ExecuteNonQuery();
            status = true;
        }
        catch(Exception ex)
        {
            status = false;
        }
        return status;
    }

}


