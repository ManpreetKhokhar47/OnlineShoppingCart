using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class adminmaster : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["visitor"] != null)
        {
            string un = Session["visitor"].ToString();
            string n = Session["vname"].ToString();
            Label1.Text = n;
        }
        else
        {
            Response.Redirect("adminlogin.aspx");
        }
    }


    protected void LinkButton5_Click(object sender, EventArgs e)
    {
        Session.Clear();
        Response.Redirect("adminlogin.aspx");
    }
}
