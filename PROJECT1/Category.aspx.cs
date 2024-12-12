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
    public partial class WebForm2 : System.Web.UI.Page
    {
        ConnectionCls obj = new ConnectionCls();
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
       
        protected void Button1_Click(object sender, EventArgs e)
        {
            string p = "~/Photo/" + FileUpload1.FileName;
            FileUpload1.SaveAs(MapPath(p));

            string s = "Insert into  CatTab values('" + TextBox1.Text + "','" + p + "','" + TextBox2.Text + "','Available')";
            int i = obj.F_NonQuery(s);
            if(i==1)
            {
                string selid = "Select Cat_Id from CatTab";
                string id = obj.F_Scalar(selid);
                Session["cid"] = id;
                if(id=="1")
                {
                    Label5.Text = "Inserted";

                }
             
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewCategory.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminHome.aspx");
        }
    }
}