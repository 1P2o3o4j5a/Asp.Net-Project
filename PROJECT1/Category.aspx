<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="Category.aspx.cs" Inherits="PROJECT1.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        width: 131px;
    }
    .auto-style2 {
        width: 226px;
    }
    .auto-style3 {
        margin-left: 4;
    }
        .auto-style6 {
            width: 131px;
            height: 27px;
        }
        .auto-style7 {
            width: 226px;
            height: 27px;
        }
        .auto-style8 {
            height: 27px;
        }
        .auto-style9 {
            width: 120px;
        }
        .auto-style10 {
            width: 120px;
            height: 27px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100">
    <tr>
        <td class="auto-style9">
            &nbsp;</td>
        <td class="auto-style1">
            <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Underline="True" Text="Add Category" ForeColor="Black"></asp:Label>
        </td>
        <td class="auto-style2">&nbsp;</td>
        <td>
            &nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style9">
            &nbsp;</td>
        <td class="auto-style1">
            <asp:Label ID="Label2" runat="server" ForeColor="Blue" Text="Name:"></asp:Label>
        </td>
        <td class="auto-style2">
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </td>
        <td></td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style9">
            &nbsp;</td>
        <td class="auto-style1">
            <asp:Label ID="Label3" runat="server" ForeColor="Blue" Text="Image:"></asp:Label>
        </td>
        <td class="auto-style2">
            <asp:FileUpload ID="FileUpload1" runat="server" CssClass="auto-style3" />
        </td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style9">
            &nbsp;</td>
        <td class="auto-style1">
            <asp:Label ID="Label4" runat="server" ForeColor="Blue" Text="Description:"></asp:Label>
        </td>
        <td class="auto-style2">
            <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style10"></td>
        <td class="auto-style6"></td>
        <td class="auto-style7"></td>
        <td class="auto-style8"></td>
        <td class="auto-style8"></td>
    </tr>
    <tr>
        <td class="auto-style9">
            &nbsp;</td>
        <td class="auto-style1">
            <asp:Button ID="Button1" runat="server" ForeColor="Black" OnClick="Button1_Click" Text="ADD" BackColor="#FFCC00" />
        </td>
        <td class="auto-style2">
            <asp:Button ID="Button2" runat="server" ForeColor="Black" OnClick="Button2_Click" PostBackUrl="~/Category.aspx" Text="VIEW" BackColor="#FFCC00" />
        </td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style9">
            &nbsp;</td>
        <td class="auto-style1">
            <asp:Label ID="Label5" runat="server" ForeColor="Black"></asp:Label>
        </td>
        <td class="auto-style2">
            &nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style9">&nbsp;</td>
        <td class="auto-style1">
            <asp:Button ID="Button3" runat="server" BackColor="#FFCC00" OnClick="Button3_Click" Text="Home" />
        </td>
        <td class="auto-style2">
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style9">&nbsp;</td>
        <td class="auto-style1">&nbsp;</td>
        <td class="auto-style2">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style9">&nbsp;</td>
        <td class="auto-style1">&nbsp;</td>
        <td class="auto-style2">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>
