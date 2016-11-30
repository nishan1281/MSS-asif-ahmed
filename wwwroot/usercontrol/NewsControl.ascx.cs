using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class usercontrol_NewsControl : System.Web.UI.UserControl
{
    Admin fn1 = new Admin();
    public static string s, t;
     static string img1, img2, img3;
    SqlConnection con = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["Connection"].ConnectionString);
    SqlCommand cmd = new SqlCommand();

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
           
        }
    }
    protected void btn_submit_Click(object sender, EventArgs e)
    {
        insert_news();
           
        clear();

    }

    private void clear()
    {
        txt_title.Text = string.Empty;
        txt_description.Text = string.Empty;
        fu_ImageUpload1.Dispose();
        fu_ImageUpload2.Dispose();
        fu_ImageUpload3.Dispose();
    }

    private bool insert_news()
    {
        bool status = false;
        try
        {
            string path = "En/Middleton_Images/NewsImages/";
            if (btn_submit.Text == "Submit")
            {
                string filename1 = Session.SessionID + DateTime.Now.ToString("ddMMyyyyhhmmss") + fu_ImageUpload1.PostedFile.FileName.ToString();
                fu_ImageUpload1.SaveAs(Server.MapPath("~/En/Middleton_Images/NewsImages/news3.jpg"));

                string filename2 = Session.SessionID + DateTime.Now.ToString("ddMMyyyyhhmmss") + fu_ImageUpload2.PostedFile.FileName.ToString();
                fu_ImageUpload2.SaveAs(Server.MapPath("~/En/Middleton_Images/NewsImages/news4.jpg"));

                string filename3 = Session.SessionID + DateTime.Now.ToString("ddMMyyyyhhmmss") + fu_ImageUpload3.PostedFile.FileName.ToString();
                fu_ImageUpload2.SaveAs(Server.MapPath("~/En/Middleton_Images/NewsImages/news.jpg"));

                status = fn1.insert_news(txt_title.Text, txt_description.Text, path + filename1, path+filename2,path+filename3, "Pending");
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('News Inserted Successfully');", true);
            }
            else
            {
                string filename1 = fu_ImageUpload1.HasFile ? Session.SessionID + DateTime.Now.ToString("ddMMyyyyhhmmss") + fu_ImageUpload1.PostedFile.FileName.ToString() : img1;
                string filename2 = fu_ImageUpload2.HasFile ? Session.SessionID + DateTime.Now.ToString("ddMMyyyyhhmmss") + fu_ImageUpload2.PostedFile.FileName.ToString() : img2;
                string filename3 = fu_ImageUpload3.HasFile ? Session.SessionID + DateTime.Now.ToString("ddMMyyyyhhmmss") + fu_ImageUpload3.PostedFile.FileName.ToString() : img3;
                if(fu_ImageUpload1.HasFile)
                fu_ImageUpload1.SaveAs(Server.MapPath("~/En/Middleton_Images/NewsImages/" + filename1));
                if (fu_ImageUpload2.HasFile)
                fu_ImageUpload2.SaveAs(Server.MapPath("~/En/Middleton_Images/NewsImages/" + filename2));
                if (fu_ImageUpload3.HasFile)
                fu_ImageUpload3.SaveAs(Server.MapPath("~/En/Middleton_Images/NewsImages/" + filename3));




                status = fn1.update_news(s, txt_title.Text, txt_description.Text, path + filename1, path + filename2, path+filename3, "Pending");
                btn_submit.Text = "Submit";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('News Updated Successfully');", true);
            }

            Banner_View();
            
        }
        catch(Exception ex)
        {
            status = false;
        }
        return status;
    }

    protected void Publish(object sender, ImageClickEventArgs e)
    {
        using (GridViewRow row = (GridViewRow)((ImageButton)sender).Parent.Parent)
        {
            s = row.Cells[0].Text;
            t = row.Cells[3].Text;
            ImageButton myimage = (ImageButton)row.FindControl("lnkPublish");
            if (t == "Pending")
            {
                fn1.Publish(Convert.ToInt32(s), "Sp_UpdateNews", "Active");
                myimage.ImageUrl = "../En/images/Publish.jpg";
            }
            else
            {
                fn1.Publish(Convert.ToInt32(s), "Sp_UpdateNews", "Pending");
                myimage.ImageUrl = "../En/images/Unpublish.png";
            }
            Banner_View();
        }
    }

    protected void dlPaging_PreRender(object sender, EventArgs e)
    {
        Banner_View();
    }

    public void Banner_View()
    {
        fn1.connect();
        SqlCommand cmd_view = new SqlCommand();
        cmd_view.Connection = con;
        cmd_view.CommandType = CommandType.StoredProcedure;
        cmd_view.CommandText = "Sp_FetchAllNews";
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
        fn1.Disconnect();
    }


    protected void Edit(object sender, ImageClickEventArgs e)
    {
        using (GridViewRow row = (GridViewRow)((ImageButton)sender).Parent.Parent)
        {
            s = row.Cells[0].Text;
            con.Open();
            SqlCommand cmd_Edit = new SqlCommand();
            cmd_Edit.Connection = con;
            cmd_Edit.CommandType = CommandType.StoredProcedure;
            cmd_Edit.CommandText = "Sp_FetchNewsByID";
            cmd_Edit.Parameters.AddWithValue("@id", Convert.ToInt32(s));
            SqlDataReader dr = cmd_Edit.ExecuteReader();
            while (dr.Read())
            {
                txt_title.Text = dr["Title"].ToString();
                
                txt_description.Text = dr["Description"].ToString();
                img1=dr["Image_Path1"].ToString();
                img2=dr["Image_Path2"].ToString();
                img3 = dr["Image_Path3"].ToString();

                int index;
                index=img1.LastIndexOf('/')+1;



                img1 = img1.Substring(index, (img1.Length - index));
                img2 = img2.Substring(index, (img2.Length - index));
                img3 = img3.Substring(index, (img3.Length - index));

                
            }
            dr.Close();
        }
        
        btn_submit.Text = "Update";
    }

    protected void Delete(object sender, ImageClickEventArgs e)
    {
        using (GridViewRow row = (GridViewRow)((ImageButton)sender).Parent.Parent)
        {
            s = row.Cells[0].Text;
            fn1.Delete(Convert.ToInt32(s), "Sp_DeleteNews");
            Banner_View();
        }
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
    //Validatin
}