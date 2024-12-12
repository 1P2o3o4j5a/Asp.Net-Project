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
    public partial class Product_aspx : System.Web.UI.Page
    {
        ConnectionCls obj = new ConnectionCls();
        protected void Page_Load(object sender, EventArgs e)
        {

            if(!IsPostBack)
            {
                Drop_Bind();
            }
        }
       

        public void Drop_Bind()
        {
            string q = "Select Cat_Name,Cat_Id from CatTab";
            DataSet ds = obj.F_Dataset(q);
            DropDownList1.DataSource = ds;
            DropDownList1.DataTextField = "Cat_Name";
            DropDownList1.DataValueField = "Cat_Id";
            DropDownList1.DataBind();
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewProduct.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string p = "~/Photo/" + FileUpload1.FileName;
            FileUpload1.SaveAs(MapPath(p));

            string s = "Insert into  ProTab values('"+DropDownList1.SelectedValue+"','" + TextBox1.Text + "','" + TextBox2.Text + "','" + p + "','Available',"+TextBox3.Text+","+TextBox4.Text+")";
            int i = obj.F_NonQuery(s);
            if (i == 1)
            {
                Label8.Text = "Inserted";
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminHome.aspx");
        }
    }
}