<%@ Page Title="" Language="C#" MasterPageFile="~/Student.master" AutoEventWireup="true" CodeFile="IssueBook.aspx.cs" Inherits="IssueBook" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" Runat="Server">
    <asp:GridView ID="gv_books" runat="server" CssClass="table" AutoGenerateColumns="false" OnPageIndexChanging="gv_books_PageIndexChanging" AllowPaging="true" PageSize="5">
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

                


                </Columns>
            </asp:GridView>

</asp:Content>

