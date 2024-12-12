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
    public partial class ViewProduct : System.Web.UI.Page
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
            string q = "Select * from CatTab";
            DataSet ds = obj.F_Dataset(q);
            DropDownList1.DataSource = ds;
            DropDownList1.DataTextField = "Cat_Name";
            DropDownList1.DataValueField = "Cat_Id";
            DropDownList1.DataBind();
        }

        public void Grid_Bind()
        {
            string q = "Select * from ProTab where Cat_Id='" + DropDownList1.SelectedItem.Value + "'";
            DataSet ds = obj.F_Dataset(q);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Grid_Bind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["cid"] = DropDownList1.SelectedItem.Value;
            Response.Redirect("EditProduct.aspx");

        }

      
    }
}