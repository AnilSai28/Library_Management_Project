using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AllIssuedBook : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btn_search_Click(object sender, EventArgs e)
    {
        int key = Convert.ToInt32(txt_search.Text);
        LibraryDAL dal = new LibraryDAL();
        gv_books.DataSource = dal.ShowAllIssuedBook(key);
        gv_books.DataBind();
    }
}