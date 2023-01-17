﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Tutor.Master" AutoEventWireup="true" CodeBehind="TutorViewMyListing.aspx.cs" Inherits="LastResortBADPJ.TutorViewMyListing" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .auto-style9 {
            width: 94px;
            background-color: #CCFFCC;
        }
        .auto-style10 {
            width: 130px;
            background-color: #CCFFCC;
        }
        .auto-style11 {
            text-align: center;
            background-color: #CCFFCC;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:DataList ID="DataList1" runat="server"  DataKeyField="Tuition_ID" DataSourceID="SqlDataSource1" RepeatColumns="3" RepeatDirection="Horizontal" Width="913px" OnItemCommand="DataList1_ItemCommand">
        <ItemTemplate>
            <table class="auto-style2" border="1">
                <tr>
                    <td class="auto-style10">Tuition ID:</td>
                    <td class="auto-style9">
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("Tuition_ID") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10">Tutor ID:</td>
                    <td class="auto-style9">
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("Tutor_ID") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10">Tuition Name:</td>
                    <td class="auto-style9">
                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("Tuition_Name") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10">Tuition Module:</td>
                    <td class="auto-style9">
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("Tuition_Module") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10">Tuition Price:</td>
                    <td class="auto-style9">
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("Tuition_Price") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" class="auto-style11">
                        <asp:Button ID="Button1" runat="server" Text="Update" Font-Overline="True" CommandName="Update" CommandArgument='<%# Eval("Tuition_ID")%>' />
                    </td>
                </tr>
                <tr>
                    <td colspan="2" class="auto-style11">
                        <asp:Button ID="Button2" runat="server" Text="Delete" CommandArgument='<%# Eval("Tuition_ID")%>' CommandName="Delete" />
                    </td>
                </tr>
            </table>
            <br />
<br />
        </ItemTemplate>
    </asp:DataList>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CwADBContext %>" SelectCommand="SELECT [Tuition_ID], [Tutor_ID], [Tuition_Name], [Tuition_Module], [Tuition_Price] FROM [Tuition]"></asp:SqlDataSource>
</asp:Content>
