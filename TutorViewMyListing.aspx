<%@ Page Title="" Language="C#" MasterPageFile="~/Tutor.Master" AutoEventWireup="true" CodeBehind="TutorViewMyListing.aspx.cs" Inherits="LastResortBADPJ.TutorViewMyListing" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:DataList ID="DataList1" runat="server" RepeatColumns="4" CellPadding="2">
        <ItemTemplate>
            <table>
                <tr>
                    <td>Tuition ID</td>
                    <br />
                    <td><%#Eval("Tuition_ID") %></td>
                </tr>
                <tr>
                    <td>Tutor ID</td>
                    <br />
                    <td><%#Eval("Tutor_ID") %></td>
                </tr>
                <tr>
                    <td>Tuition Name</td>
                    <br />
                    <td><%#Eval("Tuition_Name") %></td>
                </tr>
                <tr>
                    <td>Tuition Module</td>
                    <br />
                    <td><%#Eval("Tuition_Module") %></td>
                </tr>
                <tr>
                    <td>Tuition Price</td>
                    <br />
                    <td><%#Eval("Tuition_Price") %></td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="BtnUpdate" runat="server" Text="Update" />
                        <asp:Button ID="BtnDelete" runat="server" Text="Delete" />
                    </td>
                </tr>


            </table>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>
