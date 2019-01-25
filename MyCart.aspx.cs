using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MyCart : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        int sid = Convert.ToInt32(Session["loginid"]);
        LibraryDAL dal = new LibraryDAL();
        gv_books.DataSource = dal.MyBookCart(sid);
        gv_books.DataBind();
    }

    protected void btn_search_Click(object sender, EventArgs e)
    {
      

    }





    protected void gv_books_SelectedIndexChanged(object sender, EventArgs e)
    {
        string id = (gv_books.SelectedRow.FindControl("lbl_bid") as Label).Text;
        Response.Redirect("~/Details.aspx?bid=" + id);
    }

    protected void gv_books_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gv_books.PageIndex = e.NewPageIndex;
        int sid = Convert.ToInt32(Session["loginid"]);
        LibraryDAL dal = new LibraryDAL();
        gv_books.DataSource = dal.MyBookCart(sid);
        gv_books.DataBind();
    }
}