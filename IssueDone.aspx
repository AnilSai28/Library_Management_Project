<%@ Page Title="" Language="C#" MasterPageFile="~/Student.master" AutoEventWireup="true" CodeFile="IssueDone.aspx.cs" Inherits="IssueDone" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" Runat="Server">
    <h3>
        Book issued successfully
        <br />
        Issue ID : <asp:Label ID="lbl_issueid" runat="server" />
    </h3>
</asp:Content>

