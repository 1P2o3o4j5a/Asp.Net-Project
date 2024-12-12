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
    public partial class EditProduct : System.Web.UI.Page
    {
        ConnectionCls obj = new ConnectionCls();
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                Grid_Bind();
            }
        }
        public void Grid_Bind()
        {
            string q = "Select * from ProTab where Cat_Id="+Session["cid"]+"";
            DataSet ds = obj.F_Dataset(q);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int i = e.RowIndex;
            int getid = Convert.ToInt32(GridView1.DataKeys[i].Value);
            string del = "Delete from ProTab where Pro_Id=" + getid + "";
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
            TextBox txtproname = (TextBox)GridView1.Rows[i].Cells[3].Controls[0];
            TextBox txtprodesp = (TextBox)GridView1.Rows[i].Cells[4].Controls[0];
            TextBox txtproprice = (TextBox)GridView1.Rows[i].Cells[6].Controls[0];
            TextBox txtprostock = (TextBox)GridView1.Rows[i].Cells[7].Controls[0];
            TextBox txtprostatus = (TextBox)GridView1.Rows[i].Cells[8].Controls[0];
            FileUpload fileUpload = (FileUpload)GridView1.Rows[i].Cells[5].FindControl("FileUpload1");

            string newimg = "~/Photo/" + fileUpload.FileName;
            fileUpload.SaveAs(MapPath(newimg));


            string u = "Update ProTab set Pro_Name='" + txtproname.Text + "', Pro_Desp='" + txtprodesp.Text + "',Pro_Status='" + txtprostatus.Text + "',Pro_Stock='" + txtprostock.Text + "',Pro_Price='" + txtproprice.Text + "',Pro_Img='"+newimg+"'  where Pro_Id=" + getid + "";
            int r = obj.F_NonQuery(u);
            GridView1.EditIndex = -1;
            Grid_Bind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("EditProduct.aspx");
        }
    }
}