using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class military_law1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    [WebMethod]
    public static bool SendMail(string txt_Name, string txt_Email, string txt_Mobile, string txt_Message)
    {
        try
        {
            StreamReader reader = new StreamReader(HttpContext.Current.Server.MapPath("Admin_Mail_Enquiry.html"));
            string readFile = reader.ReadToEnd();
            string myString = "";
            myString = readFile;
            myString = readFile;
            myString = myString.Replace("$$MainHeading$$", "Enquiry");
            myString = myString.Replace("$$txtName$$", txt_Name);
            myString = myString.Replace("$$txtEmail$$", txt_Email);
            myString = myString.Replace("$$txtMobile$$", txt_Mobile);
            myString = myString.Replace("$$txtMessage$$", txt_Message);

            MailMessage Msg = new MailMessage(txt_Email, "michael.middleton@middletonsolicitors.co.uk");
            Msg.Subject = "Middleton Solicitor Enquiry";
            Msg.Body = myString.ToString();
            Msg.IsBodyHtml = true;
            SmtpClient mailClient = new SmtpClient();
            mailClient.Host = "smtp.gmail.com";
            mailClient.Port = 587;
            mailClient.Credentials = new System.Net.NetworkCredential("middletonsolicitor2@gmail.com", "allahm123");
            mailClient.EnableSsl = true;
            mailClient.Send(Msg);
            Thanksmail(txt_Email);
            return true;

        }
        catch (Exception ex)
        {
            return false;
            throw ex;
        }


    }


    public static void Thanksmail(string txtEmail)
    {
        try
        {

            StreamReader reader = new StreamReader(HttpContext.Current.Server.MapPath("Thanks_Mail.html"));
            string readFile = reader.ReadToEnd();
            string myString = "";
            myString = readFile;
            myString = myString.Replace("$$MainHeading$$", "Enquiry");
            myString = myString.Replace("$$ThankMsg$$", "Thankyou for Your Enquiry");
            MailMessage Msg = new MailMessage("michael.middleton@middletonsolicitors.co.uk", txtEmail);
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
}