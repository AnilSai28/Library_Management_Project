using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class NewStudent : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            txt_studentcity.Items.Add(new ListItem("Select", ""));
            txt_studentcity.Items.Add(new ListItem("BGL", "BGL"));
            txt_studentcity.Items.Add(new ListItem("Chennai", "Chennai"));
            txt_studentcity.Items.Add(new ListItem("Pune", "Pune"));
            txt_studentcity.Items.Add(new ListItem("Mumbai", "Mubai"));
        }
    }

    protected void btn_newstudent_Click(object sender, EventArgs e)
    {
        LibraryDAL dal = new LibraryDAL();
        NewStudentModel model = new NewStudentModel();
        model.StudentName = txt_studentname.Text;
        model.StudentEmailId = txt_studentemailid.Text;
        model.StudentPassword = txt_studentpassword.Text;
        model.StudentCity = txt_studentcity.Text;
        model.StudentAddress = txt_studentaddress.Text;
        model.StudentDOB = Convert.ToDateTime(txt_studentdob.Text);
        model.StudentMobileNo = txt_studentMobileNo.Text;
        model.StudentImage = "~/Images/" + Guid.NewGuid() + ".jpg";
        file_StudentImage.SaveAs(Server.MapPath(model.StudentImage));
        int id = dal.AddStudent(model);
        lbl_msg.Text = "Student Added : " + id;
    }
}