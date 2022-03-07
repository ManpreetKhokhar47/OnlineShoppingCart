using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class adminchangepassword : System.Web.UI.Page
{
    esdatabaseDataContext db = new esdatabaseDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
    {
        string pwd;
        int l;
        pwd = args.Value;
        l = pwd.Length;
        if (l >= 6 && l <= 10)
        {
            args.IsValid = true;
        }
        else
        {
            args.IsValid = false;
        }
    }
    protected void CustomValidator2_ServerValidate(object source, ServerValidateEventArgs args)
    {
        string pwd;
        int l;
        pwd = args.Value;
        l = pwd.Length;
        if (l >= 6 && l <= 10)
        {
            args.IsValid = true;
        }
        else
        {
            args.IsValid = false;
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Page.IsValid == true)
        {
            string eid, pass;
            eid = Session["visitor"].ToString();
            pass = np.Text;
            db.acpass(eid, pass);
            db.SubmitChanges();
            Label1.Text = "Password changed successfully";
            op.Text = "";
            np.Text = "";
            cp.Text = "";
        }

    }
}