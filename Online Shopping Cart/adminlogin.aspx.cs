using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin : System.Web.UI.Page
{
    esdatabaseDataContext db = new esdatabaseDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string n = "", emailid="";
        var record = from rec in db.admininfos where rec.username.Equals(txtuname.Text) && rec.password.Equals(txtpwd.Text) select rec;
        int r = record.Count();

        if (r > 0)
        {
            foreach (var rc in record)
            {
                emailid = rc.emailid;
                n = rc.name;
            }
            
            Session["visitor"] = emailid;
            Session["vname"] = n;
            Response.Redirect("adminhome.aspx");
        }
        else
        {
            Label1.Text = "Invalid Email or Password";
        }
    }
}