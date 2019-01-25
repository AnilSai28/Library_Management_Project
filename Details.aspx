<%@ Page Title="" Language="C#" MasterPageFile="~/Student.master" AutoEventWireup="true" CodeFile="Details.aspx.cs" Inherits="Details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" Runat="Server">
    <div align="center">
    <div class="form-group" style="text-align:left;width:35%">
        <label for="txt_Bookid" class="form-control-plaintext">Book ID :</label>
        <asp:Label ID="txt_Bookid" runat="server" CssClass="form-control" />
    </div>
             
    <div class="form-group" style="text-align:left;width:35%">
        <label for="txt_Bookname" class="form-control-plaintext">Book Name :</label>
        <asp:Label ID="txt_Bookname" runat="server" CssClass="form-control" />
    </div>

   <div class="form-group" style="text-align:left;width:35%">
        <label for="txt_BookAuthor" class="form-control-plaintext">Book Author :</label>
        <asp:Label ID="txt_BookAuthor" runat="server" CssClass="form-control" />
    </div>

       <div class="form-group" style="text-align:left;width:35%">
        <label for="txt_BookTitle" class="form-control-plaintext">Book Title :</label>
        <asp:Label ID="txt_BookTitle" runat="server" CssClass="form-control" />
    </div>

         <div class="form-group" style="text-align:left;width:35%">
        <label for="txt_BookPrice" class="form-control-plaintext">Book Price :</label>
        <asp:Label ID="txt_BookPrice" runat="server" CssClass="form-control" />
    </div>

    <div class="form-group" style="text-align:left;width:35%">
        <label for="txt_BookAddDate" class="form-control-plaintext">Book AddDate :</label>
        <asp:Label ID="txt_BookAddDate" runat="server" CssClass="form-control" />
    </div>
   <div class="form-group" style="text-align:left;width:35%">
        <label for="txt_NoOfPages" class="form-control-plaintext">Noof Pages :</label>
        <asp:Label ID="txt_NoOfPages" runat="server" CssClass="form-control" />
    </div>
         <div class="form-group" style="text-align:left;width:35%">
        <label for="file_BookImage" class="form-control-plaintext">Book Image</label>
       <asp:Image ID="img" Width="100px" Height="150px" runat="server" />
        <label for="file_BookImage" id="file_BookImage_error" class="text-danger">*</label>
    </div>
     <div class="form-group" style="text-align:left;width:35%">
        <asp:Button ID="btn_IssueBook" runat="server" Text="IssueBook" CssClass="btn-danger" OnClick="btn_IssueBook_Click" />
        <asp:Label ID="lbl_msg" runat="server" CssClass="text-danger" />
        <br />
        
    </div>
      </div>      
           
</asp:Content>

