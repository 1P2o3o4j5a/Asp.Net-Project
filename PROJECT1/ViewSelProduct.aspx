<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="ViewSelProduct.aspx.cs" Inherits="PROJECT1.ViewSelProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 276px;
        }
    .auto-style2 {
        width: 80px;
    }
        .auto-style4 {
            width: 540px;
        }
        .auto-style5 {
            margin-top: 0px;
            margin-left: 0px;
        }
        .auto-style7 {
            width: 80px;
            height: 27px;
        }
        .auto-style8 {
            width: 276px;
            height: 27px;
        }
        .auto-style9 {
            width: 543px;
            height: 27px;
        }
        .auto-style10 {
            height: 27px;
        }
        .auto-style12 {
            width: 80px;
            height: 1px;
        }
        .auto-style13 {
            width: 276px;
            height: 1px;
        }
        .auto-style14 {
            width: 543px;
            height: 1px;
        }
        .auto-style15 {
            height: 1px;
        }
        .auto-style16 {
            width: 60px;
        }
        .auto-style17 {
            width: 543px;
        }
        .auto-style18 {
            width: 80px;
            height: 28px;
        }
        .auto-style19 {
            width: 276px;
            height: 28px;
        }
        .auto-style20 {
            width: 543px;
            height: 28px;
        }
        .auto-style21 {
            height: 28px;
        }
        .auto-style22 {
            width: 18px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100">
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style17">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style1">
                <asp:Image ID="Image1" runat="server" Height="200px" Width="200px" OnDataBinding="Page_Load" />
            </td>
            <td class="auto-style17">
                <table class="auto-style4">
                    <tr>
                        <td>
                <asp:Label ID="Label1" runat="server" Text="Label" ForeColor="Black" BackColor="White" Font-Bold="True" Font-Underline="True"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                <asp:Label ID="Label2" runat="server" Text="Label" ForeColor="Black"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <table class="w-100">
                                <tr>
                                    <td class="auto-style22">
                                        <asp:Label ID="Label6" runat="server" ForeColor="Black" Text="Rs"></asp:Label>
                                    </td>
                                    <td>
                <asp:Label ID="Label3" runat="server" Text="Label" ForeColor="Black"></asp:Label>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12">
                </td>
            <td class="auto-style13">
                <table class="w-100">
                    <tr>
                        <td class="auto-style16">
                            <asp:Label ID="Label4" runat="server" ForeColor="Black" Text="Quantity:"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style5" Width="28px"></asp:TextBox>
                        </td>
                    </tr>
                </table>
            </td>
            <td class="auto-style14">&nbsp;&nbsp;
                </td>
            <td class="auto-style15"></td>
        </tr>
        <tr>
            <td class="auto-style2">
                &nbsp;</td>
            <td class="auto-style1">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
            <td class="auto-style17">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7">
                </td>
            <td class="auto-style8">
                <asp:Button ID="Button1" runat="server" BackColor="#FFCC00" ForeColor="Black" OnClick="Button1_Click" Text="Add to Cart" />
            </td>
            <td class="auto-style9"></td>
            <td class="auto-style10"></td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style1">
                <asp:Label ID="Label5" runat="server"></asp:Label>
            </td>
            <td class="auto-style17">
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style18"></td>
            <td class="auto-style19">
                <asp:Button ID="Button2" runat="server" BackColor="#FFCC00" Text="View Cart" OnClick="Button2_Click" />
            </td>
            <td class="auto-style20"></td>
            <td class="auto-style21"></td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style17">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style1">
                <asp:Button ID="Button3" runat="server" BackColor="#FFCC00" Text="Continue Shopping" OnClick="Button3_Click" />
            </td>
            <td class="auto-style17">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style17">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
