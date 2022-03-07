using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    esdatabaseDataContext db = new esdatabaseDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!(Page.IsPostBack))
        {
            emptybox();
            Label4.Text = "";
        }

    }

    private void emptybox()
    {
        txtemail.Text = "";
        txtname.Text = "";
        txtpass.Text = "";
        txtcpass.Text = "";

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
    protected void btnreg_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            string email, name, pass;
            int r;
            email = txtemail.Text;
            name = txtname.Text;
            pass = txtpass.Text;
            var record = from rec in db.esregisters where rec.email.Equals(email) select rec;
            r = record.Count();
            if (r > 0)
            {
                Label4.Text = "Email already exist";
            }
            else
            {
                db.register(email, name, pass);
                db.SubmitChanges();
                emptybox();
                Session["visitor"] = email;
                Session["vname"] = name;
                Response.Redirect("lgnhome.aspx");
            }
        }
        
    }

    protected void btnlgn_Click(object sender, EventArgs e)
    {
        string n = "",em="",email,pass;
        email=txtlgnemail.Text;
        pass=txtlgnpwd.Text;
        var record = from rec in db.esregisters where rec.email.Equals(email) && rec.password.Equals(pass) select rec; 
        int r = record.Count();
       
        if (r > 0)
        {
            foreach (var rc in record)
            {
                n = rc.name;
                em = rc.email;
            }
            Session["visitor"] =em;
            Session["vname"] = n;
            Response.Redirect("lgnhome.aspx");
        }
        else
        {
            Label3.Text = "Invalid Email or Password";
        }
    }
}
