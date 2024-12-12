<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="ThankFb.aspx.cs" Inherits="PROJECT1.ThankFb" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Font-Size="Large" ForeColor="#FF33CC" Text="Thank you for your feedback!"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="Button1" runat="server" BackColor="#FFCC00" ForeColor="Black" OnClick="Button1_Click" Text="Shop Again" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
