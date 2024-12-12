using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PROJECT1
{
    public partial class Login : System.Web.UI.Page
    {
        ConnectionCls obj = new ConnectionCls();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string s = "Select Count(Reg_Id) from LogTab where Username='"+TextBox1.Text+"' and Password='"+TextBox2.Text+"'";
            string a = obj.F_Scalar(s);
            if(a=="1")
            {
                string selid = " select Reg_Id from LogTab where Username='" + TextBox1.Text + "' and Password='" + TextBox2.Text + "'";
                string id = obj.F_Scalar(selid);
                Session["rid"] = id;
                string p = "Select LogType from LogTab where Username='" + TextBox1.Text + "' and Password='" + TextBox2.Text + "' ";
                string b = obj.F_Scalar(p);
                if(b=="Admin")
                {
                    Response.Redirect("AdminHome.aspx");
                }
                else if(b=="User")
                {
                   
                    Response.Redirect("UserHome.aspx");
                }
            }
            else
            {
                Label3.Text = "Invalid Username or Password";
            }
        }
    }
}