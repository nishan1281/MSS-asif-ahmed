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
using System.Net.Mail;
using System.Net.Mime;
using System.IO;
using System.Data.SqlClient;
using System.Collections.Generic;

public partial class UserControls_Middleton_Newsletter : System.Web.UI.UserControl
{
    SqlConnection con = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["Connection"].ConnectionString);
    Admin fn = new Admin();

    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    //Details for Admin 
    public void Sendmail()
    {
        try
        {
            System.IO.StreamReader reader = new System.IO.StreamReader(Server.MapPath("Admin_Mail_Newsletter.html"));
            string readFile = reader.ReadToEnd();
            string myString = "";
            myString = readFile;
            myString = myString.Replace("$$MainHeading$$", "Newsletter");
            myString = myString.Replace("$$txtName$$", txt_Name.Text);
            myString = myString.Replace("$$txtEmail$$", txt_Email.Text);
            List<MailAddress> toAddressList = new List<MailAddress>();
            MailAddress mail = new MailAddress("middleton.solicitiors@gmail.com");
            toAddressList.Add(mail);
            string name = txt_Name.Text != null ? txt_Name.Text : "";
            string body = myString.ToString();
            Email.SendSimpleEmail("Middleton", "middleton.solicitiors@gmail.com", toAddressList, "Middleton Solicitor Enquiry", body, true);

            reader.Dispose();
            Thanksmail();


        }
        catch (Exception ex)
        {
            throw ex;
        }
    }
    // Thanks for Customer
    public void Thanksmail()
    {
        try
        {
            StreamReader reader = new StreamReader(Server.MapPath("Newsletter_Thanks_Mail.html"));
            string readFile = reader.ReadToEnd();
            string myString = "";
            myString = readFile;
            myString = myString.Replace("$$MainHeading$$", "NewsLetter");
            myString = myString.Replace("$$ThankMsg$$", "Thankyou for Your News Letter");

            List<MailAddress> toAddressList = new List<MailAddress>();
            MailAddress mail = new MailAddress(txt_Email.Text);
            toAddressList.Add(mail);
            string name = txt_Name.Text != null ? txt_Name.Text : "";
            string body = myString.ToString();
            mail = new MailAddress(txt_Email.Text);
            toAddressList.Add(mail);
            Email.SendSimpleEmail("Middleton", "middleton.solicitiors@gmail.com", toAddressList, "Thank you for Your Newsletter", body, true);
            reader.Dispose();
        }
        catch (Exception ex)
        {
            throw ex;
        }
    }
    //Clear
    public void clear()
    {
        txt_Name.Text = string.Empty;
        txt_Email.Text = string.Empty;
    }
    protected void btn_Submit_Click(object sender, EventArgs e)
    {
        
        fn.Newsletter_Save(txt_Name.Text, txt_Email.Text, Page.User.Identity.Name, "Pending");
        Sendmail();
        ScriptManager.RegisterClientScriptBlock(this.Page, this.Page.GetType(), "alert", "alert('Thankyou for Your Newsletter')", true);
        clear();
    }
}
