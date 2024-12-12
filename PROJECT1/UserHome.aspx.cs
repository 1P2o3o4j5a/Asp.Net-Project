﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace PROJECT1
{
    public partial class UserHome : System.Web.UI.Page
    {
        ConnectionCls obj = new ConnectionCls();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                string q = "Select * from CatTab";
                DataSet ds = obj.F_Dataset(q);
                DataList1.DataSource = ds;
                DataList1.DataBind();
            }
        }

        protected void ImageButton1_Command(object sender, CommandEventArgs e)
        {
            int id = Convert.ToInt32(e.CommandArgument);
            Session["catid"] =id;
            Response.Redirect("ViewSelCatPro.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewCart.aspx");
        }
    }
}