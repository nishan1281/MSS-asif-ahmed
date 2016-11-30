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

public partial class UserControls_Middleton_Our_Team : System.Web.UI.UserControl
{
    Admin fn = new Admin();
    public static string s, t;
    SqlConnection con = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["Connection"].ConnectionString);
    SqlCommand cmd = new SqlCommand();

    //Paging
    #region "Paging "
    PagedDataSource pds = new PagedDataSource();
    private void doPaging()
    {
        DataTable dt = new DataTable();
        dt.Columns.Add("PageIndex");
        dt.Columns.Add("PageText");
        for (int i = 0; i < pds.PageCount; i++)
        {
            DataRow dr = dt.NewRow();
            dr[0] = i;
            dr[1] = i + 1;
            dt.Rows.Add(dr);
        }
        dlPaging.DataSource = dt;
        dlPaging.DataBind();
    }
    public int CurrentPage
    {
        get
        {
            if (this.ViewState["CurrentPage"] == null)
                return 0;
            else
                return Convert.ToInt16(this.ViewState["CurrentPage"].ToString());
        }
        set
        {
            this.ViewState["CurrentPage"] = value;
        }

    }
    protected void dlPaging_ItemDataBound(object sender, DataListItemEventArgs e)
    {
        LinkButton lnkbtnPage = (LinkButton)e.Item.FindControl("lnkbtnPaging");
        if (lnkbtnPage.CommandArgument.ToString() == CurrentPage.ToString())
        {
            lnkbtnPage.Enabled = false;
            lnkbtnPage.Font.Bold = true;
            lnkbtnPage.CssClass = "testing";
        }
    }
    protected void dlPaging_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName.Equals("lnkbtnPaging"))
        {
            CurrentPage = Convert.ToInt16(e.CommandArgument.ToString());
            Our_Team_View();
        }


    }
    protected void lnkbtnNext_Click(object sender, EventArgs e)
    {
        CurrentPage += 1;
        Our_Team_View();

    }

    protected void lnkbtnPrevious_Click(object sender, EventArgs e)
    {
        CurrentPage -= 1;
        Our_Team_View();


    }
    #endregion


    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Our_Team_View();
        }
    }
    //Publish Our Team
    protected void Publish(object sender, ImageClickEventArgs e)
    {
        using (GridViewRow row = (GridViewRow)((ImageButton)sender).Parent.Parent)
        {
            s = row.Cells[0].Text;
            t = row.Cells[3].Text;
            ImageButton myimage = (ImageButton)row.FindControl("lnkPublish");
            if (t == "Pending")
            {
                fn.Publish(Convert.ToInt32(s), "Sp_Our_Team_Publish", "Active");
                myimage.ImageUrl = "../En/images/Publish.jpg";
            }
            else
            {
                fn.Publish(Convert.ToInt32(s), "Sp_Our_Team_Publish", "Pending");
                myimage.ImageUrl = "../En/images/Unpublish.png";
            }
            Our_Team_View();
        }

    }
    //Edit our Team
    protected void Edit(object sender, ImageClickEventArgs e)
    {
        using (GridViewRow row = (GridViewRow)((ImageButton)sender).Parent.Parent)
        {
            s = row.Cells[0].Text;
            con.Open();
            SqlCommand cmd_Edit = new SqlCommand();
            cmd_Edit.Connection = con;
            cmd_Edit.CommandType = CommandType.StoredProcedure;
            cmd_Edit.CommandText = "Sp_Our_Team_Retrive_ById";
            cmd_Edit.Parameters.AddWithValue("Id", Convert.ToInt32(s));
            SqlDataReader dr = cmd_Edit.ExecuteReader();
            while (dr.Read())
            {
                txt_Tittle .Text =dr["Title"].ToString ();
                txt_Name.Text = dr["Name"].ToString();
                txt_SDesc.Text =dr["Short_Desc"].ToString ();
                txt_Contact.Content = dr["Contact"].ToString();
                txt_Desc.Text =dr["Description"].ToString ();                
                img_Ourteam.ImageUrl = "~/" + dr["Image"].ToString();
            }
            dr.Close();
        }
        img_Ourteam.Visible = true;
        btn_submit.Text = "Update";
    }
    protected void Delete(object sender, ImageClickEventArgs e)
    {
        using (GridViewRow row = (GridViewRow)((ImageButton)sender).Parent.Parent)
        {
            s = row.Cells[0].Text;
            fn.Delete(Convert.ToInt32(s), "Sp_Our_Team_Delete");
            Our_Team_View();
        }
    }
    protected void dlPaging_PreRender(object sender, EventArgs e)
    {
        Our_Team_View();
    }
    protected void gv_Banner_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            ImageButton myimg = (ImageButton)e.Row.FindControl("lnkPublish");
            if ((e.Row.Cells[3].Text) == "Pending")
            {
                myimg.ImageUrl = "../En/images/Publish.jpg";
            }
            else
            {
                myimg.ImageUrl = "../En/images/Unpublish.png";
            }
        }
    }
    //Validating is Image
    public bool ValidatingMenuFile()
    {
        string[] validFileTypes = { "JPEG", "gif", "png", "jpg", "jpeg", "JPG", "PNG", "BMP", "bmp", "psd", "img", "IMG", "PSD" };
        string ext = System.IO.Path.GetExtension(fu_ImageUpload.PostedFile.FileName);
        string filname = System.IO.Path.GetFileName(fu_ImageUpload.PostedFile.FileName);
        bool isValidFile = false;

        for (int i = 0; i < validFileTypes.Length; i++)
        {

            if (ext == "." + validFileTypes[i])
            {
                isValidFile = true;
                break;
            }
        }
        return isValidFile;
    }
    //Clear
    public void clear()
    {
        txt_Tittle.Text = string.Empty;
        txt_SDesc.Text = string.Empty;
        txt_Desc.Text = string.Empty;
        txt_Name.Text = string.Empty;
        txt_Contact.Content = "";
    }
    protected void btn_submit_Click(object sender, EventArgs e)
    {
        if (fu_ImageUpload.HasFile)
        {
            bool fileVerify = ValidatingMenuFile();
            if (fileVerify)
            {
                if (btn_submit.Text == "Submit")
                {
                    string filename = Session.SessionID + DateTime.Now.ToString("ddMMyyyyhhmmss") + fu_ImageUpload.PostedFile.FileName.ToString();
                    fu_ImageUpload.SaveAs(Server.MapPath("~/En/Middleton_Images/OurTeam/" + filename));
                    fn.Our_Team_Save(txt_Tittle.Text, "En/Middleton_Images/OurTeam/" + filename, txt_SDesc.Text, txt_Desc.Text, Page.User.Identity.Name, "Pending", txt_Contact.Content.ToString(), txt_Name.Text);
                    ScriptManager.RegisterClientScriptBlock(this.Page, this.Page.GetType(), "alert", "alert('Our Team saved Successfully')", true);
                    clear();
                }

                else
                {
                    //Update Button click  
                    string filename = Session.SessionID + DateTime.Now.ToString("ddMMyyyyhhmmss") + fu_ImageUpload.PostedFile.FileName.ToString();
                    fu_ImageUpload.SaveAs(Server.MapPath("~/En/Middleton_Images/OurTeam/" + filename));
                    fn.Our_Team_Update(txt_Tittle.Text, "En/Middleton_Images/OurTeam/" + filename, txt_SDesc.Text, txt_Desc.Text, Page.User.Identity.Name, "Pending", Convert.ToInt32(s), txt_Contact.Content.ToString(), txt_Name.Text);
                    ScriptManager.RegisterClientScriptBlock(this.Page, this.Page.GetType(), "alert", "alert('Our Team Updated Successfully')", true);
                    img_Ourteam.Visible = false; btn_submit.Text = "Submit";
                    clear();
                }
            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(this.Page, this.Page.GetType(), "alert", "alert('Upload only Image Files')", true);
            }
        }
        if (btn_submit.Text == "Update")
        {
            fn.Our_Team_Update_Noimage(txt_Tittle.Text, txt_SDesc.Text, txt_Desc.Text, Page.User.Identity.Name, "Pending", Convert.ToInt32(s), txt_Contact.Content.ToString(), txt_Name.Text);
            ScriptManager.RegisterClientScriptBlock(this.Page, this.Page.GetType(), "alert", "alert('Our Team Updated Successfully')", true);
            img_Ourteam.Visible = false;
            btn_submit.Text = "Submit";
            clear();

        }
        else
        {
            ScriptManager.RegisterClientScriptBlock(this.Page, this.Page.GetType(), "alert", "alert('Upload Our Team Image')", true);
        }
       
        Our_Team_View();
    }
    //Show Gridview
    public void Our_Team_View()
    {
        fn.connect();
        SqlCommand cmd_view = new SqlCommand();
        cmd_view.Connection = con;
        cmd_view.CommandType = CommandType.StoredProcedure;
        cmd_view.CommandText = "Sp_Our_Team_gv_Retrive";
        SqlDataAdapter dpt = new SqlDataAdapter();
        dpt.SelectCommand = cmd_view;
        DataTable dset = new DataTable();
        dpt.Fill(dset);
        DataView dv = new DataView(dset);
        pds.DataSource = dv;
        pds.AllowPaging = true;
        pds.PageSize = 10;
        int cou = int.Parse(dv.Count.ToString());
        if (cou > 10)
        {
            dlPaging.Visible = true;
            lnkbtnNext.Visible = true;
            lnkbtnPrevious.Visible = true;
        }
        else
        {
            dlPaging.Visible = false;
            lnkbtnNext.Visible = false;
            lnkbtnPrevious.Visible = false;
        }
        if (cou == 0)
        {
            lblPageInfo.Visible = false;
        }
        else
        {
            lblPageInfo.Visible = true;
        }
        ViewState["TotalPages"] = pds.PageCount;
        this.lblPageInfo.Text = "You are viewing page " + (CurrentPage + 1) + " of " + pds.PageCount;

        pds.CurrentPageIndex = CurrentPage;
        lnkbtnNext.Enabled = !pds.IsLastPage;
        lnkbtnPrevious.Enabled = !pds.IsFirstPage;


        gv_Banner.DataSource = pds;
        gv_Banner.DataBind();


        doPaging();
        fn.Disconnect();
    }
    protected void gv_Banner_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}
