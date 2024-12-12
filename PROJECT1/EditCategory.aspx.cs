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
    public partial class EditCategory : System.Web.UI.Page
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
            string q = "Select * from CatTab";
            DataSet ds = obj.F_Dataset(q);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int i = e.RowIndex;
            int getid = Convert.ToInt32(GridView1.DataKeys[i].Value);
            string del = "Delete from CatTab where Cat_Id=" + getid + "";
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
            TextBox txtcatname = (TextBox)GridView1.Rows[i].Cells[3].Controls[0];
            TextBox txtcatdesp = (TextBox)GridView1.Rows[i].Cells[4].Controls[0];
            TextBox txtcatstatus = (TextBox)GridView1.Rows[i].Cells[6].Controls[0];
            FileUpload fileUpload = (FileUpload)GridView1.Rows[i].Cells[5].FindControl("FileUpload1");

            string newimg = "~/Photo/" + fileUpload.FileName;
            fileUpload.SaveAs(MapPath(newimg));

            string u = "Update CatTab set Cat_Name='" + txtcatname.Text + "', Cat_desp='" + txtcatdesp.Text + "',Cat_status='" + txtcatstatus.Text + "', Cat_img='"+newimg+"' where Cat_Id="+getid+"";
            int r = obj.F_NonQuery(u);            
                GridView1.EditIndex = -1;
                Grid_Bind();
           

            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewCategory.aspx");
        }

       
    }
}