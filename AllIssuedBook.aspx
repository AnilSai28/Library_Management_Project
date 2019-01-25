<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="AllIssuedBook.aspx.cs" Inherits="AllIssuedBook" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" Runat="Server">
    <div align="center">
      <div class="form-group" style="text-align:left;width:35%">
                <label class="form-control-static">Enter Issue ID :</label>
                <asp:TextBox ID="txt_search" runat="server" CssClass="form-control" />
           
            </div>
            <div class="form-group">
                <asp:Button ID="btn_search" runat="server" Text="Search Issued Book" CssClass="btn-danger" OnClick="btn_search_Click"  />
            </div>
        <div class="form-group">
    <asp:GridView ID="gv_books" runat="server" CssClass="table" AutoGenerateColumns="false" >
                <Columns>

                    <asp:TemplateField HeaderText="Issue ID" >
                        <ItemTemplate>
                            <asp:Label ID="lbl_IssueID" runat="server" Text='<% # Eval("IssueID") %>' />
                        </ItemTemplate>
                    </asp:TemplateField>

                      <asp:TemplateField HeaderText="Student Email ID" >
                        <ItemTemplate>
                            <asp:Label ID="lbl_StudentEmailID" runat="server" Text='<% # Eval("StudentEmailID") %>' />
                        </ItemTemplate>
                    </asp:TemplateField>

                     <asp:TemplateField HeaderText="Issue Date" >
                        <ItemTemplate>
                            <asp:Label ID="lbl_IssueDate" runat="server" Text='<% # Eval("IssueDate") %>' />
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Issue Status" >
                        <ItemTemplate>
                            <asp:Label ID="lbl_IssueStatus" runat="server" Text='<% # Eval("IssueStatus") %>' />
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Book ID" >
                        <ItemTemplate>
                            <asp:Label ID="lbl_BookID" runat="server" Text='<% # Eval("BookID") %>' />
                        </ItemTemplate>
                    </asp:TemplateField>
		    <asp:TemplateField HeaderText="Book Title" >
                        <ItemTemplate>
                            <asp:Label ID="lbl_BookTitle" runat="server" Text='<% # Eval("BookTitle") %>' />
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

