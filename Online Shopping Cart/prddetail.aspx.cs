using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class prddetail : System.Web.UI.Page
{
    esdatabaseDataContext db = new esdatabaseDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["id"] != null)
        {
            int id;
            id = Convert.ToInt16(Request.QueryString["id"]);
            var record = from rec in db.products where rec.pid == id select rec ;

            int r=record.Count();
            if (r > 0)
            {
                if(Session["visitor"]!=null)
                {
                    lblcid.Text =Convert.ToString( Session["visitor"]);
                    foreach (var rc in record)
                    { 
                        int lpid = rc.pid;
                        decimal lppr = rc.price;
                        decimal t = rc.price;
                        string lpnam = rc.pname;
                        lblpid.Text = Convert.ToString(lpid);
                        lblpprice.Text = Convert.ToString(lppr);
                        lblpname.Text = Convert.ToString(lpnam);
                        lbltotal.Text = Convert.ToString(Convert.ToDecimal(txtqnty.SelectedValue)*t);
                    }
                }
            

            }

        }



    }
    protected void txtqnty_SelectedIndexChanged(object sender, EventArgs e)
    {
        int id;
        decimal t=0;
        id = Convert.ToInt16(Request.QueryString["id"]);
        var record = from rec in db.products where rec.pid == id select new {rec.price};
        foreach (var rc in record)
        {
            t = rc.price;
        }
        lbltotal.Text = Convert.ToString(Convert.ToDecimal(txtqnty.SelectedValue) * t);
    }
    protected void addprd_Click(object sender, EventArgs e)
    {
        int id;
        id = Convert.ToInt16(Request.QueryString["id"]);
        var record = from rec in db.products where rec.pid == id select rec;
        int r=record.Count();
        if(r>0)
        {
            decimal pprice=0;
            foreach(var rc in record)
            {
                pprice = rc.price;
            }
        string cid = lblcid.Text;
        int pid = Convert.ToInt16(Request.QueryString["id"]);
        string pname = lblpname.Text;
        int qty = Convert.ToInt16(txtqnty.SelectedValue);
        decimal total = pprice * qty;
        db.in_cart(cid, pid, pname, pprice, qty, total);
        db.SubmitChanges();
        var recor = from rec in db.products where rec.pid == pid select new { rec.bname };
        foreach (var rc in recor)
        {
            string br = rc.bname;
            Response.Redirect("lresult.aspx?brd="+br);
        }
        }
    }
}