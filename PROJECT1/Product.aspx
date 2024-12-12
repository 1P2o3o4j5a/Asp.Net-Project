<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="Product.aspx.cs" Inherits="PROJECT1.Product_aspx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            width: 134px;
            height: 27px;
            margin-left: 80px;
        }
        .auto-style4 {
            height: 27px;
        }
        .auto-style6 {
            height: 27px;
            width: 226px;
        }
        .auto-style8 {
            width: 134px;
        }
        .auto-style9 {
            width: 226px;
        }
        .auto-style10 {
            width: 134px;
            margin-left: 80px;
        }
        .auto-style11 {
            width: 91px;
        }
        .auto-style12 {
            width: 91px;
            height: 27px;
            margin-left: 80px;
        }
        .auto-style13 {
            width: 91px;
            margin-left: 80px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100">
        <tr>
            <td class="auto-style11">
                &nbsp;</td>
            <td class="auto-style8">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Underline="True" ForeColor="Black" Text="Add Products"></asp:Label>
            </td>
            <td class="auto-style9">&nbsp;</td>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11">
                &nbsp;</td>
            <td class="auto-style8">
                <asp:Label ID="Label2" runat="server" ForeColor="Blue" Text="Select Category:"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataTextField="Cat_Name" DataValueField="Cat_Id">
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11">
                &nbsp;</td>
            <td class="auto-style8">
                <asp:Label ID="Label3" runat="server" ForeColor="Blue" Text="Name:"></asp:Label>
            </td>
            <td class="auto-style9">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11">
                &nbsp;</td>
            <td class="auto-style8">
                <asp:Label ID="Label4" runat="server" ForeColor="Blue" Text="Description:"></asp:Label>
            </td>
            <td class="auto-style9">
                <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11">
                &nbsp;</td>
            <td class="auto-style8">
                <asp:Label ID="Label5" runat="server" ForeColor="Blue" Text="Image:"></asp:Label>
            </td>
            <td class="auto-style9">
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11">
                &nbsp;</td>
            <td class="auto-style8">
                <asp:Label ID="Label6" runat="server" ForeColor="Blue" Text="Price:"></asp:Label>
            </td>
            <td class="auto-style9">
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12">
                &nbsp;</td>
            <td class="auto-style3">
                <asp:Label ID="Label7" runat="server" ForeColor="Blue" Text="Stock:"></asp:Label>
            </td>
            <td class="auto-style6">
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style4"></td>
            <td class="auto-style4"></td>
        </tr>
        <tr>
            <td class="auto-style13">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style9">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style13">
                &nbsp;</td>
            <td class="auto-style10">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="ADD" BackColor="#FFCC00" />
            </td>
            <td class="auto-style9">
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="VIEW" BackColor="#FFCC00" />
            </td>
            <td>
                <asp:Button ID="Button3" runat="server" BackColor="#FFCC00" PostBackUrl="~/AdminHome.aspx" Text="HOME" OnClick="Button3_Click" />
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style13">
                &nbsp;</td>
            <td class="auto-style10">
                <asp:Label ID="Label8" runat="server" ForeColor="Black"></asp:Label>
            </td>
            <td class="auto-style9">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    </asp:Content>
