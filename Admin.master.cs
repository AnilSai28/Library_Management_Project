using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["loginid"] == null)
        {
            Response.Redirect("~/Login.aspx");
        }
        else
        {
            lbl_userid.Text = Session["loginid"].ToString();
        }
    }

    protected void btn_logout_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("~/Login.aspx");
    }
}
