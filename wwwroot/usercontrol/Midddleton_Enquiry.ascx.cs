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

public partial class UserControls_Midddleton_Enquiry : System.Web.UI.UserControl
{
    Admin fn = new Admin();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_Submit_Click(object sender, EventArgs e)
    {
        fn.Enquiry_Save(txt_Name.Text, txt_Mobile.Text, txt_Email.Text, txt_Message.Text, Page.User.Identity.Name, "Pending");
        Sendmail();
        ScriptManager.RegisterClientScriptBlock(this.Page, this.Page.GetType(), "alert", "alert('Thankyou for Your Enquiry')", true);
        clear();
    }

    //Details for Admin 
    public void Sendmail()
    {
        try
        {
            //System.IO.StreamReader reader = new System.IO.StreamReader(Server.MapPath("Admin_Mail_Enquiry.html"));
            //string readFile = reader.ReadToEnd();
            //string myString = "";
            //myString = readFile;
            //myString = myString.Replace("$$MainHeading$$", "Enquiry");
            //myString = myString.Replace("$$txtName$$", txt_Name.Text);
            //myString = myString.Replace("$$txtMobile$$", txt_Mobile.Text);
            //myString = myString.Replace("$$txtEmail$$", txt_Email.Text);
            //myString = myString.Replace("$$txtmessage$$", txt_Message.Text);
            //List<MailAddress> toAddressList = new List<MailAddress>();
            //MailAddress mail = new MailAddress("hasan@aphsolution.com");
            //toAddressList.Add(mail);
            //string name = txt_Name.Text != null ? txt_Name.Text : "";
            //string Mobile = txt_Mobile.Text != null ? txt_Mobile.Text : "";
            //string body = myString.ToString();
            //Email.SendSimpleEmail("Middleton", "michael.middleton@middletonsolicitors.co.uk", toAddressList, "Middleton Solicitor Enquiry", body, true);

            //reader.Dispose();
            //Thanksmail();

            StreamReader reader = new StreamReader(Server.MapPath("Admin_Mail_Enquiry.html"));
            string readFile = reader.ReadToEnd();
            string myString = "";
            myString = readFile;
            myString = readFile;
            myString = myString.Replace("$$MainHeading$$", "Enquiry");
            myString = myString.Replace("$$txtName$$", txt_Name.Text);
            myString = myString.Replace("$$txtMobile$$", txt_Mobile.Text);
            myString = myString.Replace("$$txtEmail$$", txt_Email.Text);
            myString = myString.Replace("$$txtmessage$$", txt_Message.Text);
            MailMessage Msg = new MailMessage(txt_Email.Text, "michael.middleton@middletonsolicitors.co.uk");
            Msg.Subject = "Middleton Solicitor Enquiry";
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
            //myString = myString.Replace("$$MainHeading$$", "Enquiry");
            //myString = myString.Replace("$$ThankMsg$$", "Thankyou for Your Enquiry");

            //List<MailAddress> toAddressList = new List<MailAddress>();
            //MailAddress mail = new MailAddress(txt_Email.Text);
            //toAddressList.Add(mail);
            //string name = txt_Name.Text != null ? txt_Name.Text : "";
            //string Mobile = txt_Mobile.Text != null ? txt_Mobile.Text : "";
            //string body = myString.ToString();
            //mail = new MailAddress(txt_Email.Text);
            //toAddressList.Add(mail);
            //Email.SendSimpleEmail("Middleton", "middleton.solicitiors@gmail.com", toAddressList, "Thank you for Your Enquiry", body, true);
            //reader.Dispose();

            StreamReader reader = new StreamReader(Server.MapPath("Thanks_Mail.html"));
            string readFile = reader.ReadToEnd();
            string myString = "";
            myString = readFile;
            myString = myString.Replace("$$MainHeading$$", "Enquiry");
            myString = myString.Replace("$$ThankMsg$$", "Thankyou for Your Enquiry");
            MailMessage Msg = new MailMessage("michael.middleton@middletonsolicitors.co.uk", txt_Email.Text);
            Msg.Subject = "Thank you for Your Enquiry";
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
        txt_Mobile.Text = string.Empty;
        txt_Email.Text = string.Empty;
        txt_Message.Text = string.Empty;
    }
}
