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
    public partial class WebForm4 : System.Web.UI.Page
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
            string q = "Select * from FeedbackTab";
            DataSet ds = obj.F_Dataset(q);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

        protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {
            GridViewRow rw = GridView1.Rows[e.NewSelectedIndex];
            Session["feedId"] = Convert.ToInt32(rw.Cells[0].Text);
            Session["userId"] = Convert.ToInt32(rw.Cells[1].Text);
            Session["feedback"] = rw.Cells[2].Text;
            Response.Redirect("AdminReply.aspx");
        }
    }
}