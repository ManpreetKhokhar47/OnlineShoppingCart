using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class manageproduct : System.Web.UI.Page
{
    esdatabaseDataContext db = new esdatabaseDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            datafilling();
        }
    }

    private void datafilling()
    {
        var record = from rec in db.products select rec;
        GridView1.DataSource = record;
        GridView1.DataBind();
    }
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
        datafilling();
    }
    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        datafilling();
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        Label lbl = (Label)GridView1.Rows[e.RowIndex].FindControl("pid");
        string prid = lbl.Text;
        int prodid;
        prodid = Convert.ToInt16(prid);
        db.del_row(prodid);
        db.SubmitChanges();
        datafilling();


    }
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        Label lbl = (Label)GridView1.Rows[e.RowIndex].FindControl("pid");
        TextBox lblpn = (TextBox)GridView1.Rows[e.RowIndex].FindControl("pnametxt");
        DropDownList lblpbn = (DropDownList)GridView1.Rows[e.RowIndex].FindControl("bnametxt");
        TextBox lblpp = (TextBox)GridView1.Rows[e.RowIndex].FindControl("pricetxt");
        DropDownList lblpc = (DropDownList)GridView1.Rows[e.RowIndex].FindControl("categorytxt");
        FileUpload lblppic = (FileUpload)GridView1.Rows[e.RowIndex].FindControl("fuploadtxt");

        string lblid = lbl.Text;
        int id = Convert.ToInt16(lblid);

        string pn, bn, pp, pc, fn;
        decimal ppr;
        pn = lblpn.Text;
        bn = lblpbn.Text;
        pp = lblpp.Text;
        ppr = Convert.ToDecimal(pp);
        pc = lblpc.Text;
        fn = lblppic.FileName;
        if (!fn.Equals(""))
        {
            lblppic.SaveAs(MapPath("productimages/" + lblppic.FileName));
        }
        db.up_data(id, pn, bn, ppr, pc, fn);
        db.SubmitChanges();
        GridView1.EditIndex = -1;
        datafilling();

    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        datafilling();
    }
}