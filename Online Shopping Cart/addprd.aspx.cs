using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class addprd : System.Web.UI.Page
{
    esdatabaseDataContext db = new esdatabaseDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if(Page.IsValid==true)
        {
        string prn, brn, pcat, picname;
        decimal price;
        prn = pname.Text;
        brn = pbname.Text;
        pcat = pcategory.Text;
        price =Convert.ToDecimal(pprice.Text);

        if (prdpicture.FileName == "")
        {
            picname = "noimage.jpg";
        }
        else
        {
            picname = prdpicture.FileName;
        }
        var record = from rec in db.products where rec.pname.Equals(prn) && rec.bname.Equals(brn) && rec.price == price && rec.category.Equals(pcat) select rec;
        int n = record.Count();
        if (n > 0)
        {
            Label2.Text = "Record already exist";
        }
        else
        {

            db.ins_data(prn, brn, price, pcat, picname);
            db.SubmitChanges();
            prdpicture.SaveAs(MapPath("productimages/" + prdpicture.FileName));
            Label2.Text = "Product added";
            emptytable();

        }

        }

    }

    private void emptytable()
    {
        pname.Text = "";
        pbname.SelectedIndex = 0;
        pprice.Text = "";
        pcategory.SelectedIndex = 0;
    }
}