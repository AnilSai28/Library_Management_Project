using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            ddl_logintype.Items.Add(new ListItem("Select", ""));
            ddl_logintype.Items.Add(new ListItem("Student", "Student"));
            ddl_logintype.Items.Add(new ListItem("Admin", "Admin"));
        }
    }

    protected void btn_login_Click(object sender, EventArgs e)
    {


        Session["type"] = ddl_logintype.Text;

        if (ddl_logintype.Text == "Student")
        {
            LoginModel model = new LoginModel();
            model.LoginId = txt_loginid.Text;
            model.Password = txt_Password.Text;
            model.LoginType = ddl_logintype.Text;
            LibraryDAL dal = new LibraryDAL();
            bool status = dal.Login(model);
            if (status == true)
            {
                Session["loginid"] = txt_loginid.Text;
                Response.Redirect("~/StdentHome.aspx");
            }
            else
            {
                lbl_msg.Text = "Invalid User";
            }
        }
        else if (txt_loginid.Text == "Admin" && txt_Password.Text == "Admin@123" && ddl_logintype.Text == "Admin")
        {
            Session["loginid"] = txt_loginid.Text;
            Response.Redirect("~/AdminHome.aspx");

        }

        else
        {
            lbl_msg.Text = "Invalid User";
        }
    }

}
