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
    public partial class ViewCart : System.Web.UI.Page
    {
        ConnectionCls obj = new ConnectionCls();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                Grid_Bind();
            }
        }
        public void Grid_Bind()
        {
            string q = "Select ProTab.Pro_Name,ProTab.Pro_Desp,ProTab.Pro_Img,CartTab.Cart_Id,CartTab.Price,CartTab.Quantity,CartTab.Total_Price " +
                "from CartTab join ProTab on ProTab.Pro_Id=CartTab.Pro_Id where User_Id="+Session["rid"]+" ";
            DataSet ds = obj.F_Dataset(q);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int i = e.RowIndex;
            int getid = Convert.ToInt32(GridView1.DataKeys[i].Value);
            string del = "Delete from CartTab where Cart_Id=" + Session["cartid"] + "";
            int d = obj.F_NonQuery(del);
            Grid_Bind();
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            Grid_Bind();
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            Grid_Bind();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int i = e.RowIndex;
            int getid = Convert.ToInt32(GridView1.DataKeys[i].Value);
            TextBox txtquantity = (TextBox)GridView1.Rows[i].Cells[5].Controls[0];
            
            string s = "select Price from CartTab where Cart_Id=" + getid + " ";
            string t = obj.F_Scalar(s);
            
            int tprice = Convert.ToInt32(txtquantity.Text) * Convert.ToInt32(t);
            string u = "Update CartTab set Quantity=" + txtquantity.Text + ", Total_Price=" +tprice+ " where Cart_Id=" + getid + "";
            int r = obj.F_NonQuery(u);

            GridView1.EditIndex = -1;
            Grid_Bind();
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("UserHome.aspx");
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            string sum = "SELECT SUM(Total_Price) FROM CartTab";
            string Gt = obj.F_Scalar(sum);
            int Gtotal = Convert.ToInt32(Gt);
            string s = "select max(Cart_Id) from CartTab";
            int maxcartid = Convert.ToInt32( obj.F_Scalar(s));
            for (int i = 1; i <= maxcartid ;i++)
            {
                string t = "select * from CartTab where Cart_Id=" + i + "";
                SqlDataReader dr = obj.F_Reader(t);

                int pid = 0;
                int quantity = 0;
                int tprice = 0;
                string date = "";
                while (dr.Read())
                {
                    pid = Convert.ToInt32(dr["Pro_Id"]);
                    quantity = Convert.ToInt32(dr["Quantity"]);
                    tprice= Convert.ToInt32(dr["Total_Price"]);
                    date= DateTime.Now.ToString("yyyy-MM-dd");
                }

                string u = "insert into OrderTab values(" + Session["rid"] + "," +pid + "," + quantity + "," + tprice + ",'Ordered','" + date + "')";
                int v = obj.F_NonQuery(u);
                if (v == 1)
                {
                    string w = "delete from CartTab where Cart_Id=" + i + "";
                    int x = obj.F_NonQuery(w);
                }
            }
           
            string l = "Insert into BillTab values(" + Session["rid"] + ",'" + DateTime.Now.ToString("yyyy-MM-dd") + "'," + Gtotal + ")";
            int m = obj.F_NonQuery(l);
            if(m==1)
            {
             
                Response.Redirect("ViewOrder.aspx");
            }
           

        }
    }
}