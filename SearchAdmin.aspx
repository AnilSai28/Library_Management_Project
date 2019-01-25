<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="SearchAdmin.aspx.cs" Inherits="SearchAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script>
        $(document).ready(function () {
            $("#main_btn_search").click(function () {
                if ($("#main_txt_search").val().length == 0) {
                    $("#main_txt_search_error").show();
                    $("#main_txt_search").focus();
                    return false;
                }
                else {
                    $("#main_txt_search_error").hide();
                }

            });
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" Runat="Server">
    <div align="center">
        <asp:Label ID="lbl_msg" runat="server" CssClass="text-success" />
      <div class="form-group" style="text-align:left;width:35%">
                <label class="form-control-static">Search Key :</label>
                <asp:TextBox ID="txt_search" runat="server" CssClass="form-control" />
            <label for="txt_search" id="txt_search_error" class="text-danger">*</label>
            </div>
            <div class="form-group">
                <asp:Button ID="btn_search" runat="server" Text="Search" CssClass="btn-danger" OnClick="btn_search_Click" />
            </div>
        <div class="form-group">
            <asp:GridView ID="gv_books" runat="server" CssClass="table" AutoGenerateColumns="false" OnSelectedIndexChanged="gv_books_SelectedIndexChanged" OnRowEditing="gv_books_RowEditing" OnRowUpdating="gv_books_RowUpdating" OnRowCancelingEdit="gv_books_RowCancelingEdit" OnPageIndexChanging="gv_books_PageIndexChanging" AllowPaging="true" PageSize="5" >
                <Columns>

                    <asp:TemplateField HeaderText="Book ID" >
                        <ItemTemplate>
                            <asp:Label ID="lbl_bid" runat="server" Text='<% # Eval("BookID") %>' />
                        </ItemTemplate>
                    </asp:TemplateField>

                      <asp:TemplateField HeaderText="Book Name" >
                        <ItemTemplate>
                            <asp:Label ID="lbl_bname" runat="server" Text='<% # Eval("BookName") %>' />
                        </ItemTemplate>
                          <EditItemTemplate>
                            <asp:TextBox ID="txt_bname" runat="server" Text='<% # Eval("BookName") %>' />
                       <asp:RequiredFieldValidator ID="r1" runat="server" ErrorMessage="*" ForeColor="Red" ValidationGroup="Update" ControlToValidate="txt_bname" />
                             </EditItemTemplate>
                    </asp:TemplateField>

                     <asp:TemplateField HeaderText="Book Author" >
                        <ItemTemplate>
                            <asp:Label ID="lbl_bAuthor" runat="server" Text='<% # Eval("BookAuthor") %>' />
                        </ItemTemplate>
                       <EditItemTemplate>
                            <asp:TextBox ID="txt_bAuthor" runat="server" Text='<% # Eval("BookAuthor") %>' />
                       <asp:RequiredFieldValidator ID="r2" runat="server" ErrorMessage="*" ForeColor="Red" ValidationGroup="Update" ControlToValidate="txt_bAuthor" />
                             </EditItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Book Title" >
                        <ItemTemplate>
                            <asp:Label ID="lbl_bTitle" runat="server" Text='<% # Eval("BookTitle") %>' />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txt_bTitle" runat="server" Text='<% # Eval("BookTitle") %>' />
                       <asp:RequiredFieldValidator ID="r3" runat="server" ErrorMessage="*" ForeColor="Red" ValidationGroup="Update" ControlToValidate="txt_bTitle" />
                             </EditItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Book Price" >
                        <ItemTemplate>
                            <asp:Label ID="lbl_bPrice" runat="server" Text='<% # Eval("BookPrice") %>' />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txt_bPrice" runat="server" Text='<% # Eval("BookPrice") %>' />
                       <asp:RequiredFieldValidator ID="r4" runat="server" ErrorMessage="*" ForeColor="Red" ValidationGroup="Update" ControlToValidate="txt_bPrice" />
                             </EditItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Book AddDate" >
                        <ItemTemplate>
                            <asp:Label ID="lbl_bAddDate" runat="server" Text='<% # Eval("BookAddDate") %>' />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txt_bAddDate" runat="server" Text='<% # Eval("BookAddDate") %>' />
                       <asp:RequiredFieldValidator ID="r5" runat="server" ErrorMessage="*" ForeColor="Red" ValidationGroup="Update" ControlToValidate="txt_bAddDate" />
                             </EditItemTemplate>
                    </asp:TemplateField>

                     <asp:TemplateField HeaderText="NoOf Pages" >
                        <ItemTemplate>
                            <asp:Label ID="lbl_bNoofPages" runat="server" Text='<% # Eval("NoOfPages") %>' />
                        </ItemTemplate>
                         <EditItemTemplate>
                            <asp:TextBox ID="txt_bNoofPages" runat="server" Text='<% # Eval("NoOfPages") %>' />
                       <asp:RequiredFieldValidator ID="r6" runat="server" ErrorMessage="*" ForeColor="Red" ValidationGroup="Update" ControlToValidate="txt_bNoofPages" />
                             </EditItemTemplate>
                    </asp:TemplateField>



                      <asp:TemplateField HeaderText="Book Image" >
                        <ItemTemplate>
                            <asp:Image ID="lbl_img" runat="server" ImageUrl='<% # Eval("BookImage") %>' />
                        </ItemTemplate>
                          <EditItemTemplate>
                            <asp:FileUpload ID="txt_bimg" runat="server" Text='<% # Eval("BookImage") %>' />
                       <asp:RequiredFieldValidator ID="r7" runat="server" ErrorMessage="*" ForeColor="Red" ValidationGroup="Update" ControlToValidate="txt_bimg" />
                             </EditItemTemplate>
                    </asp:TemplateField>

                  <asp:CommandField ShowSelectButton="true" SelectText="Details" />
                     <asp:CommandField ShowEditButton="true" SelectText="Details" ValidationGroup="Update" />

                </Columns>
            </asp:GridView>
        </div>
        </div>
</asp:Content>

