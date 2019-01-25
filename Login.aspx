<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="js/jquery-1.10.2.js"></script>
    <script src="js/jquery-ui.js"></script>
    <script src="js/bootstrap.js"></script>
    <link href="css/jquery-ui.css" rel="stylesheet" />
    <link href="css/bootstrap.css" rel="stylesheet" />
    <script>
        $(document).ready(function () {
            $(".text-danger").hide();
            $("#btn_login").click(function () {
                if ($("#txt_loginid").val().length == 0) {
                    $("#txt_loginid_error").show();
                    $("#txt_loginid").focus();
                    return false;
                }
                else {
                    $("#txt_loginid_error").hide();
                }
                if ($("#txt_password").val().length == 0) {
                    $("#txt_password_error").show();
                    $("#txt_password").focus();
                    return false;
                }
                else {
                    $("#txt_password_error").hide();
                }
                if ($("#ddl_logintype").val().length == 0) {
                    $("#ddl_logintype_error").show();
                    $("#ddl_logintype").focus();
                    return false;
                }
                else {
                    $("#ddl_logintype_error").hide();
                }
            });
        });
    </script>

</head>
<body>
    <div align="center">
        <h2>
            Library Management System
        </h2>
    <form id="form2" runat="server" class="Container" style="text-align:left;width:25%">
        <div class="form-group">
            <label for="txt_loginid" class="form-control-plaintext">Login ID :</label>
            <asp:TextBox ID="txt_loginid" runat="server" CssClass="form-control" />
            <label for="txt_loginid" id="txt_loginid_error" class="text-danger">*</label>
        </div>
        <div class="form-group">
             <label for="txt_Password" class="form-control-plaintext">Password :</label>
             <asp:TextBox ID="txt_Password" runat="server" CssClass="form-control" TextMode="Password" />
             <label for="txt_password" id="txt_password_error" class="text-danger">*</label>
        </div>
        <div class="form-group">
            <label for="ddl_logintype" class="form-control-plaintext">Login Type :</label>
            <asp:DropDownList ID="ddl_logintype" runat="server" CssClass="form-control" />
            <label for="ddl_logintype" id="ddl_logintype_error" class="text-danger">*</label>
        </div>
        <div class="form-group"> 
            <asp:Button ID="btn_login" runat="server" Text="Login" CssClass="btn-danger" OnClick="btn_login_Click" />
            <asp:Label ID="lbl_msg" runat="server"  />
            <br />
            <a href="NewStudent.aspx" class="btn-link" style="width:200px;">New Student</a>
            
        </div>
    </form>
  </div>
</body>
</html>
