using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Net.Mail;
using System.Net.Mime;
using System.IO;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Web.UI;



public partial class UserControls_Middleton_Contactus : UserControl
{
    SqlConnection con = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["Connection"].ConnectionString);
    Admin fn = new Admin();

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_Send_Message_Click(object sender, EventArgs e)
    {
       
        fn.Contactus_Save(txt_Name.Text, txt_Phone.Text, txt_Email.Text, txt_Subject.Text, txt_Message.Text, Page.User.Identity.Name, "Pending");
        Sendmail();
        ScriptManager.RegisterClientScriptBlock(this.Page, this.Page.GetType(), "alert", "alert('Thankyou for Contacting Us')", true);
        clear();

    }
    //Details for Admin 
    public void Sendmail()
    {
        try
        {
            //System.IO.StreamReader reader = new System.IO.StreamReader(Server.MapPath("Admin_Mail.html"));
            //string readFile = reader.ReadToEnd();
            //string myString = "";
            //myString = readFile;
            //myString = myString.Replace("$$MainHeading$$", "Contact Us");
            //myString = myString.Replace("$$txtName$$", txt_Name.Text);
            //myString = myString.Replace("$$txtMobile$$", txt_Phone.Text);
            //myString = myString.Replace("$$txtEmail$$", txt_Email.Text);
            //myString = myString.Replace("$$txtsubject$$", txt_Subject.Text);
            //myString = myString.Replace("$$txtmessage$$", txt_Message.Text);
            //List<MailAddress> toAddressList = new List<MailAddress>();
            //MailAddress mail = new MailAddress("enquiries@middletonsolicitors.co.uk");
            //toAddressList.Add(mail);
            //string name = txt_Name.Text != null ? txt_Name.Text : "";
            //string Mobile = txt_Phone.Text != null ? txt_Phone.Text : "";
            //string body = myString.ToString();
            //Email.SendSimpleEmail("Middleton", "enquiries@middletonsolicitors.co.uk", toAddressList, "Middleton Solicitor Contact Us", body, true);

            //reader.Dispose();
            StreamReader reader = new StreamReader(Server.MapPath("Admin_Mail.html"));
            string readFile = reader.ReadToEnd();
            string myString = "";
            myString = readFile;
            myString = readFile;
            myString = myString.Replace("$$MainHeading$$", "Contact Us");
            myString = myString.Replace("$$txtName$$", txt_Name.Text);
            myString = myString.Replace("$$txtMobile$$", txt_Phone.Text);
            myString = myString.Replace("$$txtEmail$$", txt_Email.Text);
            myString = myString.Replace("$$txtsubject$$", txt_Subject.Text);
            myString = myString.Replace("$$txtmessage$$", txt_Message.Text);
            MailMessage Msg = new MailMessage(txt_Email.Text, "enquiries@middletonsolicitors.co.uk");
            Msg.Subject = txt_Subject.Text == "" ? "Middleton Solicitor Contact Us" : txt_Subject.Text;
            Msg.Body = myString.ToString();
            Msg.IsBodyHtml = true;
            SmtpClient mailClient = new SmtpClient();
            mailClient.Host = "smtp.gmail.com";
            mailClient.Port = 587;
            mailClient.Credentials = new System.Net.NetworkCredential("middletonsolicitor2@gmail.com", "allahm123");
            mailClient.EnableSsl = true;
            mailClient.Send(Msg);
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
            //StreamReader reader = new StreamReader(Server.MapPath("Thanks_Mail.html"));
            //string readFile = reader.ReadToEnd();
            //string myString = "";
            //myString = readFile;
            //myString = myString.Replace("$$MainHeading$$", "Contact Us");
            //myString = myString.Replace("$$ThankMsg$$", "Thankyou for Your Enquiry");

            //List<MailAddress> toAddressList = new List<MailAddress>();
            //MailAddress mail = new MailAddress(txt_Email.Text);
            //toAddressList.Add(mail);
            //string name = txt_Name.Text != null ? txt_Name.Text : "";
            //string Mobile = txt_Phone.Text != null ? txt_Phone.Text : "";
            //string body = myString.ToString();
            //mail = new MailAddress(txt_Email.Text);
            //toAddressList.Add(mail);
            //Email.SendSimpleEmail("Middleton", "middleton.solicitiors@gmail.com", toAddressList, "Thank you for Contacting Us", body, true);
            //reader.Dispose();

            StreamReader reader = new StreamReader(Server.MapPath("Thanks_Mail.html"));
            string readFile = reader.ReadToEnd();
            string myString = "";
            myString = readFile;
            myString = myString.Replace("$$MainHeading$$", "Contact Us");
            myString = myString.Replace("$$ThankMsg$$", "Thankyou for Your Enquiry");

            MailMessage Msg = new MailMessage("middletonsolicitor2@gmail.com", txt_Email.Text);
            Msg.Subject = "Thank you for Contacting Us";
            Msg.Body = myString.ToString();
            Msg.IsBodyHtml = true;
            SmtpClient mailClient = new SmtpClient();
            mailClient.Host = "smtp.gmail.com";
            mailClient.Port = 587;
            mailClient.Credentials = new System.Net.NetworkCredential("middletonsolicitor2@gmail.com", "allahm123");
            mailClient.EnableSsl = true;
            mailClient.Send(Msg);
        }
        catch (Exception ex)
        {
            throw ex;
        }
    }
    public void clear()
    {
        txt_Name.Text = string.Empty;
        txt_Phone.Text = string.Empty;
        txt_Email.Text = string.Empty;
        txt_Subject.Text = string.Empty;
        txt_Message.Text = string.Empty;
    }


}
