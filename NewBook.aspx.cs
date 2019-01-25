using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class NewBook : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btn_newBook_Click(object sender, EventArgs e)
    {
        LibraryDAL dal = new LibraryDAL();
        BookModel model = new BookModel();
        model.BookName = txt_Bookname.Text;
        model.BookAuthor = txt_BookAuthor.Text;
        model.BookTitle = txt_BookTitle.Text;
        model.BookPrice = Convert.ToInt32(txt_BookPrice.Text);
        model.BookAddDate = Convert.ToDateTime(txt_BookAddDate.Text);
        model.NoOfPages = Convert.ToInt32(txt_NoOfPages.Text);
        model.BookImage = "~/Images/" + Guid.NewGuid() + ".jpg";
        file_BookImage.SaveAs(Server.MapPath(model.BookImage));
        int id = dal.AddBooks(model);
        lbl_msg.Text = "Book Added :" + id;
    }
}