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
    public partial class WebForm3 : System.Web.UI.Page
    {
        ConnectionCls obj = new ConnectionCls();
        protected void Page_Load(object sender, EventArgs e)
        {
            string q = "Select * from CatTab";
            DataSet ds = obj.F_Dataset(q);
            DropDownList1.DataSource = ds;
            DropDownList1.DataTextField = "Cat_Name";
            DropDownList1.DataValueField = "Cat_Id";
            DropDownList1.DataBind();
        }
    }
}