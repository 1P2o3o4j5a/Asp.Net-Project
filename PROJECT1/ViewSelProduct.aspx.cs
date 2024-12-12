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
    public partial class ViewSelProduct : System.Web.UI.Page
    {
        ConnectionCls obj = new ConnectionCls();
        protected void Page_Load(object sender, EventArgs e)
        {
            string s = "Select * from ProTab  where Pro_Id='" + Session["proid"] + "'";
            SqlDataReader dr = obj.F_Reader(s);
           while(dr.Read())
            {
                Image1.ImageUrl = dr["Pro_Img"].ToString();
                Label1.Text = dr["Pro_Name"].ToString();
                Label2.Text = dr["Pro_Desp"].ToString();
                Label3.Text = dr["Pro_Price"].ToString();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string a = "Select max(Cart_Id) from CartTab";
            string maxcartid = obj.F_Scalar(a);
            int cartid = 0;
            if (maxcartid == "")
            {
                cartid = 1;
            }
            else
            {
                cartid = Convert.ToInt32(maxcartid) + 1;
            }
            Session["cartid"] = cartid;


            string uid = Session["rid"].ToString();
            int tprice = Convert.ToInt32(TextBox1.Text) * Convert.ToInt32(Label3.Text);
            Session["Totalprice"] = tprice.ToString();
            Session["quantity"] = TextBox1.Text;
            string c = "Insert into CartTab values(" + cartid + "," + Session["proid"] + "," + Session["rid"] + "," + TextBox1.Text + "," + Label3.Text + "," + tprice + ")";
            int i = obj.F_NonQuery(c);
            if(i==1)
            {
                Label5.Text = "Inserted";
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewCart.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("UserHome.aspx");
        }

       
    }
}