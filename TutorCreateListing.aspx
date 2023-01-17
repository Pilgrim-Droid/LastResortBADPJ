<%@ Page Title="" Language="C#" MasterPageFile="~/Tutor.Master" AutoEventWireup="true" CodeBehind="TutorCreateListing.aspx.cs" Inherits="LastResortBADPJ.TutorCreateListing" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .auto-style6 {
            margin-left: 38px;
        }
        .auto-style10 {
            margin-left: 8px;
        }
        .auto-style11 {
            margin-left: 13px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label ID="Label1" runat="server" Text="Tuition ID"></asp:Label>
    <asp:TextBox ID="Tb_TuitionID" runat="server" CssClass="auto-style6" Height="22px"></asp:TextBox>
    <br />
    <asp:Label ID="Label2" runat="server" Text="Tutor ID"></asp:Label>
    <asp:Label ID="Lbl_TutorID" runat="server" Text="13"></asp:Label>
    <br />
    <asp:Label ID="Label3" runat="server" Text="Tuition Name"></asp:Label>
    <asp:TextBox ID="Tb_TutitionName" runat="server" CssClass="auto-style10" Height="22px"></asp:TextBox>
    <br />
    <asp:Label ID="Label4" runat="server" Text="Tuition Module"></asp:Label>
    <asp:DropDownList ID="Ddl_TuitionModule" runat="server" CssClass="auto-style11">
        <asp:ListItem>Digital Marketing</asp:ListItem>
        <asp:ListItem>Software Enginerring</asp:ListItem>
        <asp:ListItem>Web Development</asp:ListItem>
        <asp:ListItem>Digital Business</asp:ListItem>
    </asp:DropDownList>
    <br />
    <asp:Label ID="Label5" runat="server" Text="Tuition Price ($)"></asp:Label>
    <asp:TextBox ID="Tb_TuitionPrice" runat="server" CssClass="auto-style10" Height="22px"></asp:TextBox>
    <br />
    <br />
    <asp:Button ID="Btn_CreateTuitionListing" runat="server" OnClick="Btn_CreateTuitionListing_Click" Text="Create Tuition Listing" Width="209px" />
&nbsp;
</asp:Content>
