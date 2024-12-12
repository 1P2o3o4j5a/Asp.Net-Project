using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Net.Mail;
using System.Text;

namespace PROJECT1
{
    public partial class AdminReply : System.Web.UI.Page
    {
        ConnectionCls obj = new ConnectionCls();
        protected void Page_Load(object sender, EventArgs e)
        {

            if(!IsPostBack)
            {
                SqlCommand cmd1 = new SqlCommand();
                cmd1.CommandType = CommandType.StoredProcedure;
                cmd1.CommandText = "sp_feedback";
                cmd1.Parameters.AddWithValue("@uid", Session["userId"]);
                SqlDataReader dr = obj.F_SPReader(cmd1);
                while (dr.Read())
                {
                    Session["userName"] = dr["Name"].ToString();
                    Session["userEmail"] = dr["Email"].ToString();
                    Label3.Text = Session["userName"].ToString();
                    Label5.Text = Session["userEmail"].ToString();
                    Label7.Text = Session["feedback"].ToString();
                }
            }
        }
        public string SendEmail2(string yourName, string yourGmailUserName, string yourGmailPassword, string toName, string toEmail, string subject, string body)

        {
            string to = toEmail; //To address    
            string from = yourGmailUserName; //From address    
            MailMessage message = new MailMessage(from, to);

            string mailbody = body;
            message.Subject = subject;
            message.Body = mailbody;
            message.BodyEncoding = Encoding.UTF8;
            message.IsBodyHtml = true;
            SmtpClient client = new SmtpClient("smtp.gmail.com", 587); //Gmail smtp    
            System.Net.NetworkCredential basicCredential1 = new
            System.Net.NetworkCredential(yourGmailUserName, yourGmailPassword);
            client.EnableSsl = true;
            client.UseDefaultCredentials = true;
            client.Credentials = basicCredential1;
            try
            {
                client.Send(message);
                string q = "send";
                return q;

            }

            catch (Exception ex)
            {
                throw ex;
                return ex.Message;
            }
        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            string mailSubject = "Feedback Reply";
            string companyMail = "poojanew2002@gmail.com";
            string gmailPasswors = "lsiz cplr bzbr mghv";
            string mailBody = TextBox1.Text;

            string result = SendEmail2("Pooja Ashok", companyMail, gmailPasswors, Session["userName"].ToString(), Session["userEmail"].ToString() , mailSubject, mailBody);
            if (result == "send")
            {              
                string d = "Delete from FeedbackTab where User_Id=" + Session["userId"] + "";
                int z = obj.F_NonQuery(d);
                if(z==1)
                {
                    Label8.Text = "Mail send successfully";
                }
            }
            else
            {
                Label8.Text = "Mail not send.Try again.";
            }


        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminHome.aspx");
        }
    }
}