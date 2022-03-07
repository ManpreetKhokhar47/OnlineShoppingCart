using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class lnewarrival : System.Web.UI.Page
{
    esdatabaseDataContext db = new esdatabaseDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {
        var record = (from rec in db.products orderby rec.pid descending select rec).Take(10);
        int r = record.Count();
        if (r > 0)
        {
            DataList1.DataSource = record;
            DataList1.DataBind();
        }

    }
}