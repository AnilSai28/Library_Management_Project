<%@ Page Title="" Language="C#" MasterPageFile="~/Student.master" AutoEventWireup="true" CodeFile="Search.aspx.cs" Inherits="Search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" Runat="Server">
    <div align="center">
      <div class="form-group" style="text-align:left;width:35%">
                <label class="form-control-static">Search Key :</label>
                <asp:TextBox ID="txt_search" runat="server" CssClass="form-control" />
            <label for="txt_search" id="txt_search_error" class="text-danger">*</label>
            </div>
            <div class="form-group">
                <asp:Button ID="btn_search" runat="server" Text="Search" CssClass="btn-danger" OnClick="btn_search_Click" />
            </div>
        <div class="form-group">
            <asp:GridView ID="gv_books" runat="server" CssClass="table" AutoGenerateColumns="false" OnSelectedIndexChanged="gv_books_SelectedIndexChanged" OnPageIndexChanging="gv_books_PageIndexChanging" AllowPaging="true" PageSize="5" >
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
                    </asp:TemplateField>

                     <asp:TemplateField HeaderText="Book Author" >
                        <ItemTemplate>
                            <asp:Label ID="lbl_bAuthor" runat="server" Text='<% # Eval("BookAuthor") %>' />
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Book Title" >
                        <ItemTemplate>
                            <asp:Label ID="lbl_bTitle" runat="server" Text='<% # Eval("BookTitle") %>' />
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Book Price" >
                        <ItemTemplate>
                            <asp:Label ID="lbl_bPrice" runat="server" Text='<% # Eval("BookPrice") %>' />
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Book AddDate" >
                        <ItemTemplate>
                            <asp:Label ID="lbl_bAddDate" runat="server" Text='<% # Eval("BookAddDate") %>' />
                        </ItemTemplate>
                    </asp:TemplateField>

                     <asp:TemplateField HeaderText="NoOf Pages" >
                        <ItemTemplate>
                            <asp:Label ID="lbl_bNoofPages" runat="server" Text='<% # Eval("NoOfPages") %>' />
                        </ItemTemplate>
                    </asp:TemplateField>



                      <asp:TemplateField HeaderText="Book Image" >
                        <ItemTemplate>
                            <asp:Image ID="lbl_img" runat="server" Height="100px" Width="100px" ImageUrl='<% # Eval("BookImage") %>' />
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:CommandField ShowSelectButton="true" SelectText="Details" />


                </Columns>
            </asp:GridView>
        </div>
        </div>
</asp:Content>

