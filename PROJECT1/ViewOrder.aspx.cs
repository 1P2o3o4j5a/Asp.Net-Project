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
    public partial class ViewOrder : System.Web.UI.Page
    {
        ConnectionCls obj = new ConnectionCls();
        protected void Page_Load(object sender, EventArgs e)
        {
          
                string t = "Select * from BillTab where User_Id=" + Session["rid"] + " ";
                SqlDataReader dr = obj.F_Reader(t);
                while (dr.Read())
                {
                    Label3.Text = dr["Bill_Id"].ToString();
                    Label2.Text = dr["Bill_Date"].ToString();
                    Label9.Text = dr["Grand_Total"].ToString();
                    Session["Gtotal"] = dr["Grand_Total"].ToString();
                }
                string s = "Select ProTab.Pro_Name, OrderTab.Quantity, OrderTab.Total_Price from OrderTab join ProTab on OrderTab.Pro_Id=ProTab.Pro_Id";
                DataSet ds = obj.F_Dataset(s);
                GridView1.DataSource = ds;
                GridView1.DataBind();
          
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            string s = "Delete from BillTab where User_Id=" + Session["rid"] + "";
            int d = obj.F_NonQuery(s);
            if(d==1)
            {
                Response.Redirect("Account.aspx");
            }
           
        }
    }
}