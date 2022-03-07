using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class lresult : System.Web.UI.Page
{
    esdatabaseDataContext db = new esdatabaseDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["brd"] != null)
        {
            string brdn;
            brdn = Convert.ToString(Request.QueryString["brd"]);
            var record = from rec in db.products where rec.bname == brdn select rec;
            int r = record.Count();
            if (r > 0)
            {
                DataList1.DataSource = record;
                DataList1.DataBind();
            }
            else
            {
                Response.Redirect("lnorecord.aspx");
            }
        }
        if (Request.QueryString["cat"] != null)
        {
            string cate;
            cate = Convert.ToString(Request.QueryString["cat"]);
            var record = from rec in db.products where rec.category == cate select rec;
            int r = record.Count();
            if (r > 0)
            {
                DataList1.DataSource = record;
                DataList1.DataBind();
            }
            else
            {
                Response.Redirect("lnorecord.aspx");
            }
        }
        if (Request.QueryString["prc1"] != null & Request.QueryString["prc2"] != null)
        {
            int lprc, uprc;
            lprc = Convert.ToInt16(Request.QueryString["prc1"]);
            uprc = Convert.ToInt16(Request.QueryString["prc2"]);
            var record = from rec in db.products where rec.price >= lprc && rec.price <= uprc select rec;
            int r = record.Count();
            if (r > 0)
            {
                DataList1.DataSource = record;
                DataList1.DataBind();
            }
            else
            {
                Response.Redirect("lnorecord.aspx");
            }

        }
        if (Request.QueryString["prc1"] != null & Request.QueryString["prc2"] == null)
        {
            int lprc;
            lprc = Convert.ToInt16(Request.QueryString["prc1"]);
            var record = from rec in db.products where rec.price >= lprc select rec;
            int r = record.Count();
            if (r > 0)
            {
                DataList1.DataSource = record;
                DataList1.DataBind();
            }
            else
            {
                Response.Redirect("lnorecord.aspx");
            }


        }


    }
    protected void LinkButton25_Click(object sender, EventArgs e)
     {
        LinkButton lnk =(LinkButton ) sender;
        string id = Convert.ToString (lnk.CommandArgument);
        Response.Redirect("prddetail.aspx?id="+id +"");
    }
}