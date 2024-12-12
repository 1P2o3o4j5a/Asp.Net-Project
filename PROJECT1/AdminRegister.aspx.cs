using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PROJECT1
{
    public partial class AdminRegister : System.Web.UI.Page
    {
        ConnectionCls obj = new ConnectionCls();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string s = "Select max(Reg_Id) from LogTab";
            string maxregid = obj.F_Scalar(s);
            int regid = 0;
            if(maxregid=="")
            {
                regid =  1;
            }
            else
            {
                regid = Convert.ToInt32(maxregid )+ 1;
            }

            string q = "Insert into AdminReg values("+regid+",'" + TextBox1.Text + "','" + TextBox2.Text + "'," + TextBox3.Text + ")";
            int i = obj.F_NonQuery(q);
            if(i==1)
            {
                string r = "Insert into LogTab values("+regid+",'" + TextBox4.Text + "','" + TextBox6.Text + "','Admin')";
                int j = obj.F_NonQuery(r);
                if(j==1)
                {
                    Label4.Text = "Inserted";
                    Response.Redirect("Home.aspx");
                }
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }
    }
}