using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class address : System.Web.UI.Page
{
    esdatabaseDataContext db = new esdatabaseDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Hfid.Value = "";
            datafilling();
        }
    }

    private void datafilling()
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
                    Hfid.Value =Convert.ToString( rc.id);
                    txtname.Text = rc.name;
                    txtcity.Text = rc.city;
                    txtdistt.Text = rc.distt;
                    txtpin.Text = rc.pin;
                    txtcountry.Text = rc.country;
                    txtphone.Text = rc.phone;
                    txtaddress.Text = rc.address;

                }
            }
        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        if (Page.IsValid == true)
        {
            string name, city, disttt, pin, country, phone, address, vid;
            vid = Session["visitor"].ToString();
            name = txtname.Text;
            city = txtcity.Text;
            disttt = txtdistt.Text;
            pin = txtpin.Text;
            country = txtcountry.Text;
            phone = txtphone.Text;
            address = txtaddress.Text;

            if (Convert.ToString(Hfid.Value) != "")
            {
                db.up_address(vid, name, city, disttt, pin, country, phone, address);
                db.SubmitChanges();
            }
            else
            {
                db.in_address(vid, name, city, disttt, pin, country, phone, address);
                db.SubmitChanges();
            }
        }

    }
}