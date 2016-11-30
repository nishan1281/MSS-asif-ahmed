using System;
using System.Collections.Generic;
using System.Globalization;
using System.IO;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class En_conveyancing_online_quote : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    [WebMethod]
    public static List<Conveyance> GetDetails(string filterstring, string txtAmount, string txtSaleAmount)
    {
        List<Conveyance> details = new List<Conveyance>();
        ConveyanceAmount value = GetAmount(txtAmount,filterstring);

        switch (filterstring)
        {
            case "saleonly":
                double subtotal = value.amount + Convert.ToDouble(0.00) + Convert.ToDouble(0.00)+Convert.ToDouble(0.00);
                double vat = value.landfee;
                double total = subtotal + vat;

                details.Add(new Conveyance() { Item = "Our Fee", Cost = value.amount.ToString("C", new CultureInfo("en-GB")) });
                details.Add(new Conveyance() { Item = "Office Copies", Cost = "£ 0.00" });
                details.Add(new Conveyance() { Item = "TT Fee »", Cost = "" });
                details.Add(new Conveyance() { Item = "Bank Charge", Cost = "£ 0.00" });
                details.Add(new Conveyance() { Item = "Sub Total", Cost = subtotal.ToString("C", new CultureInfo("en-GB")) });
                details.Add(new Conveyance() { Item = "VAT", Cost = vat.ToString("C", new CultureInfo("en-GB")) });
                details.Add(new Conveyance() { Item = "Total", Cost = total.ToString("C", new CultureInfo("en-GB")) });

                break;
            case "purposeonly":
                double purpose_subtotal = value.amount + Convert.ToDouble(0.00) + Convert.ToDouble(0.00) + Convert.ToDouble(0.00) + Convert.ToDouble(0.00) + Convert.ToDouble(0.00) + Convert.ToDouble(0.00) + Convert.ToDouble(0.00) + Convert.ToDouble(0.00);
                double purpose_vat = value.landfee;
                double purpose_total = purpose_subtotal + purpose_vat;
                double baseamount = 0.00;
                double taxAmount = 0.00;
                
                details.Add(new Conveyance() { Item = "Our Fee", Cost = value.amount.ToString("C", new CultureInfo("en-GB")) });
                details.Add(new Conveyance() { Item = "Land Registration Fee", Cost = "£ 0.00" });
                details.Add(new Conveyance() { Item = "Local Search Fee", Cost = "£ 0.00" });
                details.Add(new Conveyance() { Item = "Water and Drainage Fee", Cost = "£ 0.00" });
                details.Add(new Conveyance() { Item = "AML Search Fee", Cost = "£ 0.00" });
                details.Add(new Conveyance() { Item = "TT Fee »", Cost = "" });
                details.Add(new Conveyance() { Item = "Bank Charge", Cost = "£ 0.00" });
                details.Add(new Conveyance() { Item = "HMLR Search Fee", Cost = "£ 0.00" });
                details.Add(new Conveyance() { Item = "Stamp Duty Tax", Cost = "£ 0.00" });
                details.Add(new Conveyance() { Item = "Sub Total", Cost = purpose_subtotal.ToString("C", new CultureInfo("en-GB")) });
                details.Add(new Conveyance() { Item = "VAT", Cost = purpose_vat.ToString("C", new CultureInfo("en-GB")) });
                details.Add(new Conveyance() { Item = "Total", Cost = purpose_total.ToString("C", new CultureInfo("en-GB")) });
                break;
            case "purchase":
                double purchase_subtotal = value.amount + Convert.ToDouble(0.00) + Convert.ToDouble(0.00) + Convert.ToDouble(0.00) + Convert.ToDouble(0.00) + Convert.ToDouble(0.00) + Convert.ToDouble(0.00) + Convert.ToDouble(0.00) + Convert.ToDouble(0.00) + Convert.ToDouble(0.00);
                double purchase_vat = value.landfee;
                double purchase_total = purchase_subtotal + purchase_vat;
                double baseAmount = 0.00;
                double taxamount = 0.00;
                

                details.Add(new Conveyance() { Item = "Our Fee", Cost = value.amount.ToString("C", new CultureInfo("en-GB")) });
                details.Add(new Conveyance() { Item = "Office Copies", Cost = "£ 0.00" });
                details.Add(new Conveyance() { Item = "Land Registration Fee", Cost = "£ 0.00" });
                details.Add(new Conveyance() { Item = "Local Search Fee", Cost = "£ 0.00" });
                details.Add(new Conveyance() { Item = "Water and Drainage Fee", Cost = "£ 0.00" });
                details.Add(new Conveyance() { Item = "AML Search Fee", Cost = "£ 0.00" });
                details.Add(new Conveyance() { Item = "TT Fee »", Cost = "" });
                details.Add(new Conveyance() { Item = "Bank Charge", Cost = "£ 0.00" });
                details.Add(new Conveyance() { Item = "HMLR Search Fee", Cost = "£ 0.00" });
                details.Add(new Conveyance() { Item = "Stamp Duty Tax", Cost = "£ 0.00" });
                details.Add(new Conveyance() { Item = "Sub Total", Cost = purchase_subtotal.ToString("C", new CultureInfo("en-GB")) });
                details.Add(new Conveyance() { Item = "VAT", Cost = purchase_vat.ToString("C", new CultureInfo("en-GB")) });
                details.Add(new Conveyance() { Item = "Total", Cost = purchase_total.ToString("C", new CultureInfo("en-GB")) });
                break;
            case "remortgage":
                double remortgage_subtotal = value.amount +Convert.ToDouble(0.00) + Convert.ToDouble(0.00) + Convert.ToDouble(0.00) + Convert.ToDouble(0.00) ;
                double remortgage_vat = value.landfee;
                double remortgage_total = remortgage_subtotal + remortgage_vat;

                details.Add(new Conveyance() { Item = "Our Fee", Cost = value.amount.ToString("C", new CultureInfo("en-GB")) });
                details.Add(new Conveyance() { Item = "Land Registration Fee", Cost = "£ 0.00" });
                details.Add(new Conveyance() { Item = "Office Copies", Cost = "£ 0.00" });
                details.Add(new Conveyance() { Item = "TT Fee »", Cost = "" });
                details.Add(new Conveyance() { Item = "Bank Charge", Cost = "£ 0.00" });
                details.Add(new Conveyance() { Item = "Sub Total", Cost = remortgage_subtotal.ToString("C", new CultureInfo("en-GB")) });
                details.Add(new Conveyance() { Item = "VAT", Cost = remortgage_vat.ToString("C", new CultureInfo("en-GB")) });
                details.Add(new Conveyance() { Item = "Total", Cost = remortgage_total.ToString("C", new CultureInfo("en-GB")) });
                break;
            default:
                break;
        }

        return details;
    }

    public class Conveyance
    {
        public string Item { get; set; }
        public string Cost { get; set; }
    }


    public static ConveyanceAmount GetAmount(string txtAmount,string filterstring)
    {
        ConveyanceAmount value = new ConveyanceAmount();
        if (filterstring.Equals("saleonly") == true)
        {
            if (Convert.ToInt32(txtAmount) < 100000)
            {
                
                   value.amount = 350.00;
                   value.landfee = 70.00;
                
               
            }
            else if (Convert.ToInt32(txtAmount) >= 100000 && Convert.ToInt32(txtAmount) < 250000)
            {
                
                    value.amount = 425.00;
                    value.landfee = 85.00;
                

                

            }
            else if (Convert.ToInt32(txtAmount) >= 250000 && Convert.ToInt32(txtAmount) <= 500000)
            {
                
                    value.amount = 495.00;
                    value.landfee = 99.00;
                

            }
            else if (Convert.ToInt32(txtAmount) >= 500000 && Convert.ToInt32(txtAmount) <= 750000)
            {


                value.amount = 750.00;
                value.landfee = 150.00;
               

            }
            else
            {
               
                    value.amount = 0;
                    value.landfee = 0;
               
            }
        }
        else if (filterstring.Equals("purposeonly") == true || filterstring.Equals("purchase"))
        {
            if (Convert.ToInt32(txtAmount) < 100000)
            {

                value.amount = 395.00;
                value.landfee = 79.00;


            }
            else if (Convert.ToInt32(txtAmount) >= 100000 && Convert.ToInt32(txtAmount) < 250000)
            {

                value.amount = 475.00;
                value.landfee = 95.00;




            }
            else if (Convert.ToInt32(txtAmount) >= 250000 && Convert.ToInt32(txtAmount) <= 500000)
            {

                value.amount = 545.00;
                value.landfee = 109.00;


            }
            else if (Convert.ToInt32(txtAmount) >= 500000 && Convert.ToInt32(txtAmount) <= 750000)
            {


                value.amount = 750.00;
                value.landfee = 150.00;


            }
            else
            {

                value.amount = 0;
                value.landfee = 0;

            }
        }
        else if (filterstring.Equals("remortgage") == true)
        {
            if (Convert.ToInt32(txtAmount) < 100000)
            {

                value.amount = 375.00;
                value.landfee = 75.00;


            }
            else if (Convert.ToInt32(txtAmount) >= 100000 && Convert.ToInt32(txtAmount) < 250000)
            {

                value.amount = 400.00;
                value.landfee = 80.00;




            }
            else if (Convert.ToInt32(txtAmount) >= 250000 && Convert.ToInt32(txtAmount) <= 500000)
            {

                value.amount = 450.00;
                value.landfee = 90.00;


            }
            
            else
            {

                value.amount = 0;
                value.landfee = 0;

            }
        }
        return value;
        
    }


    public class ConveyanceAmount
    {
        public double amount { get; set; }
        public double landfee { get; set; }

    }


    [WebMethod]
    public static bool SendMail(string txtName, string txtEmail, string txtYourMail, string txtTown, string txtPostCode, string txtContackNo, string txtSalePrice, string txtSaleAddr, string txtPurchasePrice, string txtPurchaseAddr)
    {
        try
        {
            StreamReader reader = new StreamReader(HttpContext.Current.Server.MapPath("Admin_Mail_Enquiry.html"));
            string readFile = reader.ReadToEnd();
            string myString = "";
            myString = readFile;
            myString = readFile;
            myString = myString.Replace("$$MainHeading$$", "Enquiry");
            myString = myString.Replace("$$txtName$$", txtName);
            myString = myString.Replace("$$txtEmail$$", txtEmail);
            myString = myString.Replace("$$txtYourMail$$", txtYourMail);
            myString = myString.Replace("$$txtTown$$", txtTown);
            myString = myString.Replace("$$txtPostCode$$", txtPostCode);
            myString = myString.Replace("$$txtContackNo$$", txtContackNo);
            myString = myString.Replace("$$txtSalePrice$$", txtSalePrice);
            myString = myString.Replace("$$txtSaleAddr$$", txtSaleAddr);
            myString = myString.Replace("$$txtPurchasePrice$$", txtPurchasePrice);
            myString = myString.Replace("$$txtPurchaseAddr$$", txtPurchasePrice);

            MailMessage Msg = new MailMessage(txtEmail, "michael.middleton@middletonsolicitors.co.uk");
            Msg.Subject = "Middleton Solicitor Enquiry";
            Msg.Body = myString.ToString();
            Msg.IsBodyHtml = true;
            SmtpClient mailClient = new SmtpClient();
            mailClient.Host = "smtp.gmail.com";
            mailClient.Port = 587;
            mailClient.Credentials = new System.Net.NetworkCredential("middletonsolicitor2@gmail.com", "allahm123");
            mailClient.EnableSsl = true;
            mailClient.Send(Msg);
            En_conveyancing_online_quote.Thanksmail(txtEmail);
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