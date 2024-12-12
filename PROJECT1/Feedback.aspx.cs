using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PROJECT1
{
    public partial class ProceedPay : System.Web.UI.Page
    {
        ConnectionCls obj = new ConnectionCls();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string s = "Insert into FeedbackTab values(" + Session["rid"] + ",'" + TextBox1.Text + "')";
            int i = obj.F_NonQuery(s);
            if(i==1)
            {
                Response.Redirect("ThankFb.aspx");
            }
            
        }

        
    }
}