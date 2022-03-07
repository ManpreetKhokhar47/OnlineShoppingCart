using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class myprofile : System.Web.UI.Page
{
    esdatabaseDataContext db = new esdatabaseDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["visitor"] != null)
        {
            string vid = Session["visitor"].ToString();
            var record = from rec in db.myaddresses where rec.emailid.Equals(vid) select rec;
            int r = record.Count();
            if (r > 0)
            {
                foreach (var rc in record)
                {
                    lblname.Text = rc.name;
                    lblcity.Text = rc.city;
                    lbldistt.Text = rc.distt;
                    lblpin.Text = rc.pin;
                    lblcountry.Text = rc.country;
                    lblphno.Text = rc.phone;
                    lbladdress.Text = rc.address;
                }
            }


        }

    }
    protected void changepwd_Click(object sender, EventArgs e)
    {
        if (Page.IsValid == true)
        {
            string email, oldpwd, newpwd, vid, pwd = "";
            vid = Session["visitor"].ToString();
            email = txtemail.Text;
            oldpwd = txtoldpwd.Text;
            newpwd = txtnewpwd.Text;
            var record = from rec in db.esregisters where rec.email.Equals(vid) select rec;
            int r = record.Count();
            if (r > 0)
            {
                foreach (var rc in record)
                {
                    pwd = rc.password;
                }
            }

            if (email.Equals(vid) && (oldpwd.Equals(pwd)))
            {
                db.change_pwd(email, newpwd);
                db.SubmitChanges();
                lblmsg.Text = "Password Changed Successfully";
                txtemail.Text = "";
                txtoldpwd.Text = "";
                txtnewpwd.Text = "";
                txtcpwd.Text = "";
            }
            else
            {
                lblmsg.Text = "Invalid Email ID or Password";
            }
        }

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
}