using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


namespace PROJECT1
{
    public partial class Bill : System.Web.UI.Page
    {
        ConnectionCls obj = new ConnectionCls();
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            int Accno = Convert.ToInt32(TextBox2.Text);
            int BalAmt= Convert.ToInt32(TextBox5.Text);
            string s = "Insert into AccTab values(" + Session["rid"] + ",'" + TextBox1.Text + "'," + Accno + ",'" + TextBox3.Text + "','" + TextBox4.Text + "',"+BalAmt+")";
            int i = obj.F_NonQuery(s);
            if (i == 1)
            {
                //call wcf for balance
                int Uid = Convert.ToInt32(Session["rid"]);
                Pro_Bal_Update.ServiceClient ob = new Pro_Bal_Update.ServiceClient();
                string Bal = ob.Get_AccBal(Accno, Uid);

                //string getbal = "Select Balance_Amt from AccTab where Acc_No=" + Accno + " and User_Id=" + Session["rid"] + "";
                //string bal = obj.F_Scalar(getbal);

                int BAL = Convert.ToInt32(Bal);
                if(BAL>Convert.ToInt32( ( Session["Gtotal"])))
                {
                    int rembal = BAL - Convert.ToInt32(Session["Gtotal"]);
                    //string p = "Update AccTab set Balance_Amt=" + rembal + " where Acc_No="+Accno+" and User_Id=";
                    //call wcf for payment
                    Pro_Bal_Update.ServiceClient ob1 = new Pro_Bal_Update.ServiceClient();
                    int p = ob1.Update_AccTab(rembal, Accno, Uid);
                    //string update = "Update AccTab set Balance_Amt=" + rembal + " where Acc_No=" + Accno + " and User_Id=" + Session["rid"] + "";
                    //int up = obj.F_NonQuery(update);
                    if (p==1)
                    {
                        string a = "Update OrderTab set Order_Status='Paid' where Pro_Id=" + Session["proid"] + " and User_Id=" + Session["rid"] + "";
                        int b = obj.F_NonQuery(a);
                        if (b == 1)
                        {
                            Label13.Text = "Payment completed.Thank you for shopping with us. Please leave a feedback";
                            string f = "Delete from AccTab where User_Id=" + Session["rid"] + "";
                            int g = obj.F_NonQuery(f);
                        }
                    }                               
                }
                else
                {
                    Label13.Text = "Payment incomplete due to insufficient balance";
                }
            
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("UserHome.aspx");
        }
    }
}