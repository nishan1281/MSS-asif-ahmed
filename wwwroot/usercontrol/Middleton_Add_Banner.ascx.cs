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

public partial class UserControls_Middleton_Add_Banner : System.Web.UI.UserControl
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
            Banner_View();
        }


    }
    protected void lnkbtnNext_Click(object sender, EventArgs e)
    {
        CurrentPage += 1;
        Banner_View();

    }

    protected void lnkbtnPrevious_Click(object sender, EventArgs e)
    {
        CurrentPage -= 1;
        Banner_View();


    }
    #endregion

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Banner_View();
            banner_link();
        }
    }

    public void banner_link()
    {
        ddl_LinkPage.Items.Add("Personal Injury Claim");
        ddl_LinkPage.Items.Add("Commercial Law");
        ddl_LinkPage.Items.Add("Sports Law");
        ddl_LinkPage.Items.Add("Family Law");
        ddl_LinkPage.Items.Add("Recovering Payment Protection Insurence");
        ddl_LinkPage.Items.Add("Wills Probate and Trusts");
        ddl_LinkPage.Items.Add("Residential and Commercial Property");
        ddl_LinkPage.Items.Add("Debt Recovery");
        ddl_LinkPage.Items.Add("Consignment");

    }

    public string linkpagename()
    {
        string pagename = "";
        if (ddl_LinkPage.SelectedItem.Text == "Personal Injury Claim")
        {
            pagename = "personal-injury-claim.aspx";
        }
        if (ddl_LinkPage.SelectedItem.Text == "Commercial Law")
        {
            pagename = "commercial-law.aspx";
        }
        if (ddl_LinkPage.SelectedItem.Text == "Sports Law")
        {
            pagename = "sports-law.aspx";
        }
        if (ddl_LinkPage.SelectedItem.Text == "Family Law")
        {
            pagename = "family-law.aspx";
        }
        if (ddl_LinkPage.SelectedItem.Text == "Recovering Payment Protection Insurence")
        {
            pagename = "recovering-payment-protection-insurance.aspx";
        }
        if (ddl_LinkPage.SelectedItem.Text == "Wills Probate and Trusts")
        {
            pagename = "wills-probate-trusts.aspx";
        }
        if (ddl_LinkPage.SelectedItem.Text == "Residential and Commercial Property")
        {
            pagename = "commercial-and-residential-leases.aspx";
        }
        if (ddl_LinkPage.SelectedItem.Text == "Debt Recovery")
        {
            pagename = "debt-recovery.aspx";
        }
        if (ddl_LinkPage.SelectedItem.Text == "Consignment")
        {
            pagename = "consignment.aspx";
        }
        return pagename;
    }


    // Save Banner
    protected void btn_submit_Click(object sender, EventArgs e)
    {
        string AddName = string.Empty;
        for (int i = 0; i < ls_Menu.Items.Count; i++)
        {
            AddName = AddName + ls_Menu.Items[i].Text + ",";
        }

        if (fu_ImageUpload.HasFile)
        {
            bool fileVerify = ValidatingMenuFile();
            if (fileVerify)
            {                
                if (btn_submit.Text == "Submit")
                {
                    string Linkpage = linkpagename();
                    img_Banner.Visible = false;
                    string filename = Session.SessionID + DateTime.Now.ToString("ddMMyyyyhhmmss") + fu_ImageUpload.PostedFile.FileName.ToString();
                    fu_ImageUpload.SaveAs(Server.MapPath("~/En/Middleton_Images/BannerImage/" + filename));
                    fn.Banner_Save(txt_Name.Text, "En/Middleton_Images/BannerImage/" + filename, Page.User.Identity.Name, "Pending",AddName,Linkpage);
                    ScriptManager.RegisterClientScriptBlock(this.Page, this.Page.GetType(), "alert", "alert('Banner Saved Successfully')", true);
                    clear();
                }
                else
                {
                    string Linkpage = linkpagename();
                    //Banner Update Button click  
                    string filename = Session.SessionID + DateTime.Now.ToString("ddMMyyyyhhmmss") + fu_ImageUpload.PostedFile.FileName.ToString();
                    fu_ImageUpload.SaveAs(Server.MapPath("~/En/Middleton_Images/BannerImage/" + filename));
                    fn.Banner_Update(txt_Name.Text, "En/Middleton_Images/BannerImage/" + filename, Page.User.Identity.Name, "Pending", Convert.ToInt32(s), AddName, Linkpage);
                    ScriptManager.RegisterClientScriptBlock(this.Page, this.Page.GetType(), "alert", "alert('Banner Updated Successfully')", true);
                    img_Banner.Visible = false; btn_submit.Text = "Submit";
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
            string Linkpage = linkpagename();
            fn.Banner_Update_Noimage(txt_Name.Text, Page.User.Identity.Name, "Pending", Convert.ToInt32(s), AddName, Linkpage);
            ScriptManager.RegisterClientScriptBlock(this.Page, this.Page.GetType(), "alert", "alert('Banner Updated Successfully')", true);
            img_Banner.Visible = false;
            btn_submit.Text = "Submit";
            clear();

        }
        else
        {
            ScriptManager.RegisterClientScriptBlock(this.Page, this.Page.GetType(), "alert", "alert('Upload Banner Image')", true);
        }       
        Banner_View();

    }
    //Publish the Banner
    protected void Publish(object sender, ImageClickEventArgs e)
    {
        using (GridViewRow row = (GridViewRow)((ImageButton)sender).Parent.Parent)
        {
            s = row.Cells[0].Text;
            t = row.Cells[4].Text;
            ImageButton myimage = (ImageButton)row.FindControl("lnkPublish");
            if (t == "Pending")
            {
                fn.Publish(Convert.ToInt32(s), "Sp_Banner_Publish", "Active");
                myimage.ImageUrl = "../En/images/Publish.jpg";
            }
            else
            {
                fn.Publish(Convert.ToInt32(s), "Sp_Banner_Publish", "Pending");
                myimage.ImageUrl = "../En/images/Unpublish.png";
            }
            Banner_View();
        }
    }
    //Edit the Banner
    protected void Edit(object sender, ImageClickEventArgs e)
    {
        using (GridViewRow row = (GridViewRow)((ImageButton)sender).Parent.Parent)
        {
            s = row.Cells[0].Text;
            con.Open();
            SqlCommand cmd_Edit = new SqlCommand();
            cmd_Edit.Connection = con;
            cmd_Edit.CommandType = CommandType.StoredProcedure;
            cmd_Edit.CommandText = "Sp_Banner_Retrive_ById";
            cmd_Edit.Parameters.AddWithValue("Id", Convert.ToInt32(s));
            SqlDataReader dr = cmd_Edit.ExecuteReader();
            while (dr.Read())
            {
                txt_Name.Text = dr["Banner_Name"].ToString();
                img_Banner.ImageUrl = "~/" + dr["Banner_Image"].ToString();
                txt_Menu.Text = dr["Menu"].ToString();
                ddl_LinkPage.SelectedItem.Text  = dr["LinkPage"].ToString();
            }
            dr.Close();
        }
        img_Banner.Visible = true;
        btn_submit.Text = "Update";
    }
    protected void Delete(object sender, ImageClickEventArgs e)
    {
        using (GridViewRow row = (GridViewRow)((ImageButton)sender).Parent.Parent)
        {
            s = row.Cells[0].Text;
            fn.Delete(Convert.ToInt32(s), "Sp_Banner_Delete");
            Banner_View();
        }
    }
    protected void dlPaging_PreRender(object sender, EventArgs e)
    {
        Banner_View();
    }
    protected void gv_Banner_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            ImageButton myimg = (ImageButton)e.Row.FindControl("lnkPublish");
            if ((e.Row.Cells[4].Text) == "Pending")
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
        txt_Name.Text = string.Empty;
        ls_Menu.Items.Clear();
        txt_Menu.Text = string.Empty;
    }
    //Show Gridview
    public void Banner_View()
    {
        fn.connect();
        SqlCommand cmd_view = new SqlCommand();
        cmd_view.Connection = con;
        cmd_view.CommandType = CommandType.StoredProcedure;
        cmd_view.CommandText = "Sp_Banner_Retrive";
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
    protected void btn_Menuadd_Click(object sender, EventArgs e)
    {
        ls_Menu.Items.Add(txt_Menu.Text);
        txt_Menu.Text = string.Empty;
    }
}
