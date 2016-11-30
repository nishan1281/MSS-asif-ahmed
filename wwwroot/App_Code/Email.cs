using System;
using System.Collections.Generic;
using System.Text;
using System.Net.Mail;

public class Email
{
    public static void SendSimpleEmail(string fromName, string fromEmail, List<MailAddress> toAddressList, string subject, string emailBody, bool isHTML)
    {
        try
        {
            SmtpClient client = new SmtpClient();
            MailMessage message = ComposeEmailMessage(fromName, fromEmail, toAddressList, subject, emailBody, isHTML);
            client.EnableSsl = true;

            client.Send(message);
        }
        catch (Exception e)
        {
            throw e;
        }
    }

    private static MailMessage ComposeEmailMessage(string fromName, string fromEmail, List<MailAddress> toAddressList, string subject, string emailBody, bool isHTML)
    {
        MailMessage message = new MailMessage();
        MailAddress fromAddress = new MailAddress(fromEmail, fromName);
        message.From = fromAddress;
        foreach (MailAddress toAddress in toAddressList)
            message.To.Add(toAddress);
        message.Subject = subject;
        message.Body = emailBody;
        message.IsBodyHtml = isHTML;
        return message;
    }

    public static string InvoiceEmailTemplate(string date, string refnum, string name, string mobile, string other, string email, string orderDetailtrs, string loc)
    {
        string html = "";
        try
        {
            html = @"<div id='wraper'>
<table width='100%' border='0'>
  <tr>
    <td>
	<div id='invoice_head'>
	<div id='logo_left'><img src='http://localharvest.ae.fennel.arvixe.com/images/logo_1.jpg' alt='' width='251' height='125'/></div><!--End Logo Left-->
	<div id='shopping_list' style='text-align:center'>قائمة التسوق<br />
<br />

SHOPPING LIST</div><!--End Shopping List-->
	<div id='logo_right'></div>
	<!--End Logo Right-->
	</div><!--End Invoice Head-->	</td>
  </tr>
  <tr>
    <td><table width='100%' border='solid 1px #D5D5D5' cellspacing='0' >
      <tr bgcolor='#4f6228'>
        <td height='25' colspan='3'>
		<div id='delivery_head'>Delivery Details</div><!--End Delivery Head-->
		<div id='delivery_headarabic'>تفاصيل التسليم</div><!--End Delivery Head-->		</td>
        </tr>
      <tr >
        <td style='padding-left:10px; background:#d6e3bc; height:30px; line-height:30px;'>Date : </td>
        <td>" + date + @"</td>
        <td  style='padding-right:10px; font-size:14px; background:#d6e3bc; height:30px; line-height:30px;'> <div align='right'>: تاريخ</div></td>
      </tr>
      <tr >
        <td style='padding-left:10px; background:#d6e3bc; height:30px; line-height:30px;'>Delivery Ref.No</td>
        <td>" + refnum + @"</td>
        <td  style='padding-right:10px; font-size:14px; background:#d6e3bc; height:30px; line-height:30px;'><div align='right'>   : رقم المرجع</div></td>
      </tr>
      <tr >
        <td width='24%' style='padding-left:10px; background:#d6e3bc; height:30px; line-height:30px;'>Name:</td>
        <td width='52%'>" + name + @"</td>
        <td  style='padding-right:10px; font-size:14px; background:#d6e3bc; height:30px; line-height:30px;'><div align='right'> : الإسم</div></td>
        </tr>
      <tr>
        <td style='padding-left:10px; background:#d6e3bc; height:30px; line-height:30px;'>Mobile Tel. No.:</td>
        <td>" + mobile + @"</td>
        <td style='padding-right:10px; font-size:14px; background:#d6e3bc; height:30px; line-height:30px;'><div align='right'> : رقم الهاتف المتحرك</div></td>
        </tr>
      <tr>
        <td style='padding-left:10px; background:#d6e3bc; height:30px; line-height:30px;'>Office Tel. No.:</td>
        <td>" + other + @"</td>
        <td style='padding-right:10px; font-size:14px; background:#d6e3bc; height:30px; line-height:30px;'><div align='right'> : رقم هاتف المكتب</div></td>
        </tr>
      <tr>
        <td style='padding-left:10px; background:#d6e3bc; height:30px; line-height:30px;'>Email:</td>
        <td>" + email + @"</td>
        <td style='padding-right:10px; font-size:14px; background:#d6e3bc; height:30px; line-height:30px;'><div align='right'>: البريد الإلكتروني</div></td>
      </tr>
      
    </table></td>
  </tr>
  
  
  <tr>
    <td>
	<div id='invoic_head'>
	<table width='100%' border='0'>
  <tr>
    <td width='15%'>Dear Sir/Madam,</td>
    <td colspan='3'>&nbsp;</td>
    <td width='9%'></td>
    <td width='15%'></td>
  </tr>
  <tr>
     <td colspan='6'>&nbsp;</td>
   </tr>
   <tr>
    <td colspan='6'>.الرجاء توفير المواد المذكورة أدناه وفقا لأحكام التالية وتخضع للشروط العامة وحالة شراء المطبوع على ظهر الصفحة </td>
   <tr>
     <td colspan='6'>&nbsp;</td>
   </tr>
   <tr>
    <td colspan='6'>Please Supply the below mentioned materials under the following terms and subject to the General Terms and condition of purchase printed overleaf. </td>
    </tr>
</table>
	</div><!--End Invoice Head-->
	<div id='invoice'>
	<table width='100%'border='solid 1px #D5D5D5' cellspacing='0' >
  <tr bgcolor='#4f6228' style='color:#FFFFFF;'>
    <td width='9%'><div align='center'>S.No.</div></td>
    <td width='41%'><div align='center'>Particulars</div></td>
    <td width='10%'><div align='center'>Part No. </div></td>
    <td width='10%'><div align='center'>Qty.</div></td>
    <td width='10%'><div align='center'>Rate</div></td>
    <td width='13%'><div align='center'>Amount<br />
      Dhs.</div></td>
    
  </tr>" + orderDetailtrs + @"
  <tr>
    <td>&nbsp;</td>
    <td><div align='right'></div></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    
  </tr>
</table>
	</div><!--End Invoice-->
	
	<div id='dhs_words'>
	<table width='100%' border='0'>
  <tr>
    <td width='7%'> </td>
    <td width='93%' >&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td >&nbsp;</td>
  </tr>
</table>
	</div><!--End DHS Words-->
	
	<div id='thankingyou'>
	<table width='100%' border='0'>
  
  <tr>
    <td width='3%'><div align='center'></div></td>
    <td width='23%'></td>
    <td width='39%'></td>
    </tr>
  <tr>
    <td>&nbsp;</td>
    <td></td>
    <td></td>
    </tr>
  <tr>
    <td>&nbsp;</td>
    <td></td>
    <td></td>
    </tr>
</table>
	</div><!--End Thanking You-->
	<tr>
    <td>
	<div id='invoice_content'>
<h3>Delivery Location</h3>
" + loc + @"
	<table width='100%' border='0'>
  
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td><div align='center'><img src='http://localharvest.ae.fennel.arvixe.com/images/shopinghead_icon.png' alt='' /></div></td>
    <td>Payment cash on delivery</td>
    <td><div align='right'>الدفع نقدا عند التسليم</div></td>
    <td><div align='center'><img src='http://localharvest.ae.fennel.arvixe.com/images/shopinghead_icon_arabic.PNG' alt='' /></div></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>

	</div><!--End Invoice Content-->	</td>
  </tr>
	<tr>
	  <td style='border-bottom:solid 1px #333333;'><div align='center'>This is a auto generated performa Invoice , this does not require any signature.
      </div></td>
    </tr>
	<tr>
	<td>&nbsp;</td>
	</tr>
	</td>
    </tr>
</table>

</div>";
        }
        catch (Exception ex)
        {
            throw ex;
        }
        return html;
    }

    public static string ResponseEmailTemplate(string lb_MREf, string Label_Amount, string Label_TxnResponseCodeDesc, string Label_Message, string Label_TransactionNo, string Label_BatchNo, string Label_CardType)
    {
        string html = "";
        try
        {
            html = @"<div id='invoice_content'><h3>Transaction Details</h3><table>
<tr >
        <td align='right'></td>
        <td></td>
    </tr>
<tr class='shade'>
        <td>Merchant Reference: </td>
        <td>" + lb_MREf + @"</td>
    </tr>
   <tr >
        <td>Transaction Amount: </td>
        <td>" + Label_Amount + @".00 AED</td>
    </tr>
    <tr class='shade'>
        <td>QSI Response Code Description: </td>
        <td>" + Label_TxnResponseCodeDesc + @"</td>
    </tr>
    <tr >
        <td>Message: </td>
        <td>" + Label_Message + @"</td>
    </tr>
 <tr class='shade'>
        <td>Shopping Transaction Number: </td>
        <td>" + Label_TransactionNo + @"</td>
    </tr>
    <tr >
        <td >Batch Number for this transaction: </td>
        <td>" + Label_BatchNo + @"</td>
    </tr>
   <tr class='shade'>
        <td>Card Type: </td>
        <td>" + Label_CardType + @" </td>
                                                               
    </tr>
</table></div>";
}
 catch (Exception ex)
        {
            throw ex;
        }
        return html;

}
}


static public class DateTimeFunctions
{
    static public DateTimeOffset ConvertUtcTimeToTimeZone(this DateTime dateTime, string toTimeZoneDesc)
    {
        if (dateTime.Kind != DateTimeKind.Utc) throw new Exception("dateTime needs to have Kind property set to Utc");
        var toUtcOffset = TimeZoneInfo.FindSystemTimeZoneById(toTimeZoneDesc).GetUtcOffset(dateTime);
        var convertedTime = DateTime.SpecifyKind(dateTime.Add(toUtcOffset), DateTimeKind.Unspecified);
        return new DateTimeOffset(convertedTime, toUtcOffset);
    }
}
