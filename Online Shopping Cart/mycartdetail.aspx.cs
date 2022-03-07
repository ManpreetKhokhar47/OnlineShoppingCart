using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class mycartdetail : System.Web.UI.Page
{
    esdatabaseDataContext db = new esdatabaseDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {

        datafilling();

    }

    private void datafilling()
    {
        decimal grndtotal=0;
        var record = from rec in db.mycarts where rec.cid == Session["visitor"] select rec;
        int r = record.Count();
        if (r > 0)
        {
            GridView1.DataSource = record;
            GridView1.DataBind();
        }
        else
        {
            Response.Redirect("emptycart.aspx");
        }
        foreach (var rc in record)
        {
            grndtotal = grndtotal + rc.total;
        }
        lbltamt.Text = Convert.ToString(grndtotal);
    }

    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        Label lbl = (Label)GridView1.Rows[e.RowIndex].FindControl("Label2");
        string proid = lbl.Text;
        int prid;
        prid = Convert.ToInt16(proid);
        db.del_cartrow(prid);
        db.SubmitChanges();
        datafilling();
        Response.Redirect("mycartdetail.aspx");
    }
}