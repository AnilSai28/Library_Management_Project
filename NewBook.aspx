<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="NewBook.aspx.cs" Inherits="NewBook" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script src="js/jquery-1.10.2.js"></script>
    <script src="js/jquery-ui.js"></script>
    <script src="js/bootstrap.js"></script>
    <link href="css/jquery-ui.css" rel="stylesheet" />
    <link href="css/bootstrap.css" rel="stylesheet" />
    <script>
        $(document).ready(function () {
            $(".text-danger").hide();
            $("#btn_newBook").click(function () {
                if ($("#main_txt_Bookname").val().length == 0) {
                    $("#main_txt_Bookname_error").show();
                    $("#main_txt_Bookname").focus();
                    return false;
                }
                else
                {
                    $("#main_txt_Bookname_error").hide();
                }
                if ($("#main_txt_BookAuthor").val().length == 0)
            {
                    $("#main_txt_BookAuthor_error").show();
                    $("#main_txt_BookAuthor").focus();
                return false;
            }
            else
            {
                    $("#main_txt_BookAuthor_error").hide();
            }
            
                if ($("#main_txt_BookTitle").val().length == 0) {
                    $("#main_txt_BookTitle_error").show();
                    $("#main_txt_BookTitle").focus();
                return false;
            }
            else
            {
                    $("#main_txt_BookTitle_error").hide();
            }
            
                if ($("#main_txt_BookPrice").val().length == 0) {
                    $("#main_txt_BookPrice_error").show();
                    $("#main_txt_BookPrice").focus();
                return false;
            }
            else
            {
                    $("#main_txt_BookPrice_error").hide();
                }
            
                if ($("#main_txt_NoOfPages").val().length == 0) {
                    $("#main_txt_NoOfPages_error").show();
                    $("#main_txt_NoOfPages").focus();
                    return false;
                }
                else {
                    $("#main_txt_NoOfPages_error").hide();
                }
                if ($("#main_file_BookImage").val().length == 0) {
                    $("#main_file_BookImage_error").show();
                    $("#main_file_BookImage").focus();
                return false;
            }
            else {
                    $("#main_file_BookImage_error").hide();
            }
        });
     });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" Runat="Server">
    <div align="center">
     
        
     <div class="form-group" style="text-align:left;width:35%;">
        <label for="txt_Bookname" class="form-control-plaintext">Book Name :</label>
        <asp:TextBox ID="txt_Bookname" runat="server" CssClass="form-control" />
        <label for="txt_Bookname" id="txt_Bookname_error" class="text-danger">*</label>
    </div>

   <div class="form-group" style="text-align:left;width:35%;">
        <label for="txt_BookAuthor" class="form-control-plaintext">Book Author :</label>
        <asp:TextBox ID="txt_BookAuthor" runat="server" CssClass="form-control" />
        <label for="txt_BookAuthor" id="txt_BookAuthor_error" class="text-danger">*</label>
    </div>

       <div class="form-group" style="text-align:left;width:35%;">
        <label for="txt_BookTitle" class="form-control-plaintext">Book Title :</label>
        <asp:TextBox ID="txt_BookTitle" runat="server" CssClass="form-control" />
        <label for="txt_BookTitle" id="txt_BookTitle_error" class="text-danger">*</label>
    </div>

         <div class="form-group" style="text-align:left;width:35%;">
        <label for="txt_BookPrice" class="form-control-plaintext">Book Price :</label>
        <asp:TextBox ID="txt_BookPrice" runat="server" CssClass="form-control" />
        <label for="txt_BookPrice" id="txt_BookPrice_error" class="text-danger">*</label>
    </div>

 
   <div class="form-group" style="text-align:left;width:35%;">
        <label for="txt_NoOfPages" class="form-control-plaintext">Noof Pages :</label>
        <asp:TextBox ID="txt_NoOfPages" runat="server" CssClass="form-control" />
        <label for="txt_NoOfPages" id="txt_NoOfPages_error" class="text-danger">*</label>
    </div>
         <div class="form-group" style="text-align:left;width:35%;">
        <label for="file_BookImage" class="form-control-plaintext">Book Image</label>
        <asp:FileUpload ID="file_BookImage" runat="server" CssClass="form-control" />
        <label for="file_BookImage" id="file_BookImage_error" class="text-danger">*</label>
    </div>
    <div class="form-group">
        <asp:Button ID="btn_newBook" runat="server" Text="Book" CssClass="btn-danger" OnClick="btn_newBook_Click" />
           
        <asp:Label ID="lbl_msg" runat="server" />
        <br />
        
    </div>
      
</div>
</asp:Content>

