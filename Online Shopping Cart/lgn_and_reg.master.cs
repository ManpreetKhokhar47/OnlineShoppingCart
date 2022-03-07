using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage2 : System.Web.UI.MasterPage
{
    esdatabaseDataContext db = new esdatabaseDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["visitor"] != null)
        {
            string email = Session["visitor"].ToString();
            string n = Session["vname"].ToString();
            Label1.Text = n;
            var record = from rec in db.mycarts where rec.cid.Equals(email) select new { rec.qty, rec.total };
            int r = record.Count();
            int qtytotal = 0;
            decimal prtotal = 0;
            if (r > 0)
            {
                foreach (var rc in record)
                {
                    qtytotal = qtytotal + rc.qty;
                    prtotal = prtotal + rc.total;
                }
                lblamt.Text = Convert.ToString(prtotal);
                lblitm.Text = Convert.ToString(qtytotal);
            }
            else
            {
                lblamt.Text = Convert.ToString(prtotal);
                lblitm.Text = Convert.ToString(qtytotal);
            }
            

        }
        else
        {
            Response.Redirect("home.aspx");
        }
    }
        
    
    
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session.Clear();
        Response.Redirect("home.aspx");

    }
}
