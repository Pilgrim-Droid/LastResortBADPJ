<%@ Page Title="" Language="C#" MasterPageFile="~/Tutor.Master" AutoEventWireup="true" CodeBehind="TuitionListingUpdate.aspx.cs" Inherits="LastResortBADPJ.TuitionListingUpdate" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .auto-style6 {
            width: 149px;
        }
        .auto-style7 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <table class="auto-style2">
        <tr>
            <td class="auto-style6">Tuition ID:</td>
            <td>
                <asp:Label ID="Lbl_TuitionID" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">Tutor ID:</td>
            <td>
                <asp:Label ID="Lbl_TutorID" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">Tuition Name:</td>
            <td>
                <asp:TextBox ID="Tb_TuitionName" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">Tuition Module:</td>
            <td>
                <asp:DropDownList ID="Ddl_TuitionModule" runat="server" CssClass="auto-style11">
                    <asp:ListItem>Digital Marketing</asp:ListItem>
                    <asp:ListItem>Software Enginerring</asp:ListItem>
                    <asp:ListItem>Web Development</asp:ListItem>
                    <asp:ListItem>Digital Business</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">Tuition Price:</td>
            <td>$<asp:TextBox ID="Tb_TuitionPrice" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2" class="auto-style7"><asp:Button ID="Btn_Update" runat="server" Text="Update" OnClick="Btn_Update_Click" /></td>
        </tr>
    </table>
    

</asp:Content>
